
import mysql.connector
from dto.user import User

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Senorita1610",
    database="kbs"
)


class Converter:
    def __init__(self):
        self.tapThongTin = []
        self.tapBaiTap = []
        self.tapLichTap = []
        self.resultfc = []
        self.resultbc = []
        self.rulefw = []
        self.rulebw = []
        self.resulttt = []
        # self.tapDinhDuong = []
        # self.tapLichTap = []
        # self.tapSuyDienTien = []
        # self.tapSuyDienLui = []

    def getExercises(self):
        """
        Lấy dữ liệu từ bảng exercises
        """
        dbexercise = mydb.cursor()
        dbexercise.execute("SELECT * FROM kbs.exercises;")
        exercises = dbexercise.fetchall()
        exercise = {}
        for i in exercises:
            exercise['idbaitap'] = i[0]
            exercise['type'] = i[1]
            exercise['name'] = i[2]
            exercise['description'] = i[3]
            exercise['howtoperform'] = i[4]
            self.tapBaiTap.append(exercise)
            exercise = {}

    def getGymSchedule(self):
        """
        Lấy dữ liệu từ bảng lichtap
        """
        dbschedule = mydb.cursor()
        dbschedule.execute("SELECT * FROM kbs.lichtap;")
        schedules = dbschedule.fetchall()
        schedule = {}
        for i in schedules:
            schedule['idlichtap'] = i[0]
            schedule['chitiet'] = i[1]
            self.tapLichTap.append(schedule)
            schedule = {}

    def getInformation(self):
        dbinformation = mydb.cursor()
        dbinformation.execute("SELECT * FROM kbs.thongtin;")
        informations = dbinformation.fetchall()
        information = {}
        for i in informations:
            information['idthongtin'] = i[0]
            information['mota'] = i[1]
            self.tapThongTin.append(information)
            information = {}

    def getfc(self):
        dbfc = mydb.cursor()
        dbfc.execute(
            "select idsuydien, luat.idluat, idthongTin, idlichTap from suydien, luat where suydien.idluat=luat.idluat and luat.trangThai='1' order by idthongTin, idlichTap")
        fc = dbfc.fetchall()
        s = []
        d = []
        for i in range(len(fc)):
            self.rulefw.append(fc[i][1])
            s.append(fc[i][2])
            d.append(fc[i][3])
        thongtin = s[0]
        lichtap = []
        dicfc = {}
        for i in range(len(s)):
            if s[i] == thongtin:
                lichtap.append(d[i])
            else:
                dicfc['thongtin'] = thongtin
                dicfc['lichtap'] = lichtap
                thongtin = s[i]
                self.resultfc.append(dicfc)
                lichtap = []
                lichtap.append(d[i])
                dicfc = {}
        if lichtap:
            dicfc['thongtin'] = thongtin
            dicfc['lichtap'] = lichtap
            self.resultfc.append(dicfc)

    def getbc(self):
        dbbc = mydb.cursor()
        dbbc.execute(
            "select idsuydien, luat.idluat, idthongTin, idlichTap from suydien, luat where suydien.idluat=luat.idluat and trangThai='0' order by idlichTap, idluat")
        fc = dbbc.fetchall()
        rule = []
        s = []
        d = []
        for i in range(len(fc)):
            rule.append(fc[i][1])
            s.append(fc[i][2])
            d.append(fc[i][3])
        # print(rule)
        vtrule = rule[0]
        thongtin = []
        lichtap = None
        # result=[]
        dicbc = {}
        for i in range(len(rule)):
            if rule[i] == vtrule:
                thongtin.append(s[i])
                lichtap = d[i]
            else:
                dicbc['rule'] = vtrule
                dicbc['lichtap'] = lichtap
                dicbc['thongtin'] = thongtin
                vtrule = rule[i]
                self.resultbc.append(dicbc)
                lichtap = d[i]
                thongtin = []
                thongtin.append(s[i])
                dicbc = {}
        if lichtap:
            dicbc['rule'] = vtrule
            dicbc['lichtap'] = lichtap
            dicbc['thongtin'] = thongtin
            self.resultbc.append(dicbc)

    def groupbc(self):
        temp = []
        for i in self.resultbc:
            t = []
            t.append(i['lichtap'])
            for j in i['thongtin']:
                t.append(j)
            temp.append(t)
        return temp

    def groupfc(self):
        res = []
        for i in self.resultfc:
            for j in range(len(i['lichtap'])):
                res.append([i['lichtap'][j], i['thongtin']])
        return res

    def getthongtin(self):
        """
        Nhóm tất cả thông tin trong 1 lịch tập
        """
        dbthongtin = mydb.cursor()
        dbthongtin.execute(
            "select * from kbs.suydien order by idlichTap;")
        dbtt = dbthongtin.fetchall()
        lichtap = []
        thongtin = []
        rule = []
        for i in dbtt:
            lichtap.append(i[3])
            thongtin.append(i[2])
            rule.append(i[1])
        vtlichtap = lichtap[0]
        lstt = []
        dirtt = {}

        for i in range(len(lichtap)):
            if lichtap[i] == vtlichtap:
                lstt.append(thongtin[i])
            else:
                dirtt[vtlichtap] = sorted(set(lstt))
                lstt = []
                vtlichtap = lichtap[i]
                lstt.append(thongtin[i])
        dirtt[vtlichtap] = sorted(set(lstt))
        self.resulttt = dirtt
        return self.resulttt

    def get_lichtap_by_id(self, id_lichtap):
        """
        Tìm lịch tập dựa trên id
        """
        for i in self.tapLichTap:
            if i["idlichtap"] == id_lichtap:
                return i
        return 0

    def get_thongtin_by_id(self, id_thongtin):
        for i in self.tapThongTin:
            if i["idthongtin"] == id_thongtin:
                return i
        return 0

    def get_exercises_by_schedule(self, id):
        dbgebs = mydb.cursor()
        dbgebs.execute(
            "select name from exercises, lichtap_baitap where exercises.id=lichtap_baitap.idbaiTap and lichtap_baitap.idlichTap = %s;", (id,))
        exercises = dbgebs.fetchall()

        exercises_list = [exercise[0] for exercise in exercises]
        return exercises_list

    def get_level_activity_by_schedule(self, id):
        dbglabs = mydb.cursor()
        dbglabs.execute(
            "select heSoHD from lichtap where idlichTap = %s;", (id,))
        level_activity = dbglabs.fetchall()
        level = 0.0
        for i in level_activity:
            level = i[0]
        return level

    def get_nutrition(self):
        dbgnbi = mydb.cursor()
        dbgnbi.execute("select * from nutrition;")
        lst = dbgnbi.fetchall()
        return lst


def searchindexrule(rule, goal):
    """
    Tìm vị trí các rule có lịch tập là goal
    """
    index = []
    for r in range(len(rule)):
        if rule[r][0] == goal:
            index.append(r)
    return index


def get_s_in_d(answer, goal, rule, d, flag):
    """
    Lấy các thông tin theo sự suy diễn để giảm thiểu câu hỏi
    và  đánh dấu các luật đã được duyệt qua để bỏ qua những luật có cùng cùng câu hỏi vào
    """
    result = []
    index = []
    if flag == 1:
        for i in range(len(rule)):
            if (rule[i][0] == goal) and (answer in rule[i]) and (i in d):
                for j in rule[i]:
                    if j[0] == 'S':
                        result.append(j)
                        # result=set()
    else:
        for i in range(len(rule)):
            if (rule[i][0] == goal) and (answer in rule[i]):
                index.append(i)
            if (rule[i][0] == goal) and (answer not in rule[i]) and (i in d):
                for j in rule[i]:
                    if j[0] == 'S':
                        result.append(j)

    return sorted(set(result)), index
