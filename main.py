from dto.dao import Converter
from dto.dao import *
from dto.user import User
from backward_chaining import BackwardChaining
from forward_chaining import ForwardChaining
import random
user = User(1, None, None, None)
validate = Validate()
db = Converter()
db.getExercises()
db.getGymSchedule()
db.getInformation()
db.getbc()
db.getfc()
luat_lui = db.groupbc()
luat_tien = db.groupfc()
list_thong_tin = []

# Hỏi thông tin người dùng


def welcome_question():
    print("-->Hệ thống: Xin chào, tôi là hệ thống tư vấn dinh dưỡng và tập luyện trong phòng GYM!")
    print("-->Hệ thống: Vui lòng điền một số thông tin cá nhân để tiếp tục!")
    print("-->Hệ thống: Hãy nhập tuổi của bạn")
    user.age = validate.validate_age(input())
    print(f'-->Người dùng: Tôi {user.age} tuổi')
    if user.age > 13 and user.age < 20:
        list_thong_tin.append(db.tapThongTin[0])
    elif user.age < 40:
        list_thong_tin.append(db.tapThongTin[11])
    elif user.age < 60:
        list_thong_tin.append(db.tapThongTin[17])
    else:
        list_thong_tin.append(db.tapThongTin[18])
    print("-->Hệ thống: Hãy nhập giới tính của bạn (Nhập số)\n1. Nam\n2. Nữ")
    gender = validate.validate_gender(input())
    user.gender = 'Nam' if gender == '1' else 'Nu'
    print(f'-->Người dùng: Tôi là {user.gender}')
    if user.gender == 'Nam':
        list_thong_tin.append(db.tapThongTin[19])
    else:
        list_thong_tin.append(db.tapThongTin[20])
    print("-->Hệ thống: Hãy cho tôi biết chiều cao của bạn (Đơn vị cm)")
    user.height = validate.validate_height(input())
    print(f'-->Người dùng: Tôi cao {user.height} cm')
    print("-->Hệ thống: Hãy cho tôi biết cân nặng của bạn (Đơn vị kg)")
    user.weight = validate.validate_weight(input())
    print(f'-->Người dùng: Tôi nặng {user.weight} kg')
    print("-->Hệ thống: Cảm ơn bạn đã cung cấp đủ thông tin!")
    return user

# Câu hỏi về mục tiêu tập luyện


def first_question(list_thong_tin):
    AllGoalLst = [db.tapThongTin[1], db.tapThongTin[2], db.tapThongTin[3], db.tapThongTin[4], db.tapThongTin[5],
                  db.tapThongTin[6], db.tapThongTin[7], db.tapThongTin[8], db.tapThongTin[9], db.tapThongTin[10]]
    print("-->Hệ thống: Bạn hãy chọn mục tiêu tập luyện của bạn\nNhập 1 số từ 1 đến 10")
    while 1:
        cnt = 1
        for i in AllGoalLst:
            print(f'{cnt}. {i["ten"]}')
            cnt += 1
        number = validate.validate_age(input())
        if number < 1 or number > 10:
            print('-->Hệ thống: Vui lòng nhập 1 số từ 1 tới 10')
            continue
        else:
            list_thong_tin.append(AllGoalLst[number-1])
            break
    print('-->Hệ thống: Danh sách thông tin của bạn:')
    print([i['idthongtin'] for i in list_thong_tin])
    return list_thong_tin

# Câu hỏi về tình trạng tập luyện


def second_question(list_thong_tin):
    AllStatusLst = [db.tapThongTin[21], db.tapThongTin[22], db.tapThongTin[23]]
    print("-->Hệ thống: Bạn hãy chọn tình trạng tập luyện của bạn\nChọn 1 số từ 1 đến 3")
    while 1:
        cnt = 1
        for i in AllStatusLst:
            print(f'{cnt}. {i["ten"]}')
            cnt += 1
        number = validate.validate_age(input())
        if number < 1 or number > 3:
            print('-->Hệ thống: Vui lòng nhập 1 số từ 1 tới 3')
            continue
        else:
            list_thong_tin.append(AllStatusLst[number-1])
            break
    print('-->Hệ thống: Danh sách thông tin của bạn:')
    print([i['idthongtin'] for i in list_thong_tin])
    return list_thong_tin

# Lấy các bài tập từ 1 lịch tập cụ thể


def get_bai_tap(lichtap):
    print('-->Hệ thống: Lịch tập trên có 1 số bài tập như sau:')
    cnt = 1
    lst = db.get_exercises_by_schedule(lich_tap)
    for i in lst:
        print(cnt, end='. ')
        print(i)
        cnt += 1

# Tư vấn dinh dưỡng (lên thực đơn 1 ngày)


def tu_van_dinh_duong(id):
    bmr = 0.0
    if user.gender == 'Nam':
        bmr = 10*user.weight+6.25*user.height-5*user.age+5
    else:
        bmr = 10*user.weight+6.25*user.height-5*user.age-161
    tdee = bmr*db.get_level_activity_by_schedule(id)*1.2
    # Chuyển Kcal sang gram
    # 1 gram protein bằng 4 Kcal
    # 1 gram carbohydrate bằng 4 Kcal
    # 1 gram fat bằng 9 Kcal
    # tỷ lệ protein:carbohydrate:fat=40:40:20
    protein = tdee*0.4/4
    carbohydrate = tdee*0.4/4
    fat = tdee*0.2/9
    p = []
    c = []
    f = []
    flag1, flag2, flag3 = 0, 0, 0
    print('-->Hệ thống: Như vậy bạn cần khoảng'+str(int(protein))+' gram đạm, ' +
          str(int(carbohydrate))+' gram tinh bột, '+str(int(fat))+' gram chất béo')
    # Bữa chính: tdee*25% (3 bữa => 75%)
    # Bữa phụ: tdee*10% (2 bữa sáng+trưa => 20%)
    # Bữa phụ tối: tdee*5%
    p1 = protein*0.25
    c1 = carbohydrate*0.25
    f1 = fat*0.25
    p2 = protein*0.1
    c2 = carbohydrate*0.1
    f2 = fat*0.1
    p3 = protein*0.05
    c3 = carbohydrate*0.05
    f3 = fat*0.05
    print('-->Hệ thống: Chúng tôi có các thực phẩm giàu chất dinh dưỡng theo mỗi loại (protein, carbohydrate, fat)')
    nutritions = db.get_nutrition()
    print('-->Hệ thống: Protein')
    cnt = 1
    for i in nutritions:
        if 'P' in i[0]:
            p.append(i)
            print(cnt, end='. ')
            print(i[1])
            cnt += 1

    while 1:
        print('-->Hệ thống: Bạn không thích thực phẩm nào trong danh sách bên trên không? Hãy chọn số thứ tự cách nhau bởi khoảng trống')
        l = validate.validate_list(input())
        l = list(set(l))
        l.sort()
        if l[0] < 1 or l[-1] > len(p):
            print('-->Hệ thống: Số thứ tự không hợp lệ. Vui lòng nhập lại')
            continue
        elif len(p)-len(l) < 6:
            print('-->Hệ thống: Vui lòng nhập lại sao cho số thực phẩm còn lại 6')
            continue
        for i in l:
            p[i-1] = 0
            flag1 = 1
        p = list(filter(lambda x: x != 0, p))
        if flag1 == 1:
            break
    print('-->Hệ thống: Như vậy, các thực phẩm giàu protein chỉ còn')
    for i in p:
        print(i[1])
    print('-->Hệ thống: Carbohydrate')
    cnt = 1
    for i in nutritions:
        if 'C' in i[0]:
            c.append(i)
            print(cnt, end='. ')
            print(i[1])
            cnt += 1
    while 1:
        print('-->Hệ thống: Bạn không thích thực phẩm nào trong danh sách bên trên không? Hãy chọn số thứ tự cách nhau bởi khoảng trống')
        l = validate.validate_list(input())
        l = list(set(l))
        l.sort()
        if l[0] < 1 or l[-1] > len(c):
            print('-->Hệ thống: Số thứ tự không hợp lệ. Vui lòng nhập lại')
            continue
        elif len(c)-len(l) < 6:
            print('-->Hệ thống: Vui lòng nhập lại sao cho số thực phẩm còn lại 6')
            continue
        for i in l:
            c[i-i] = 0
            flag2 = 1
        c = list(filter(lambda x: x != 0, c))
        if flag2 == 1:
            break
    print('-->Hệ thống: Như vậy, các thực phẩm giàu carbohydrate chỉ còn')
    for i in c:
        print(i[1])
    print('-->Hệ thống: Fat')
    cnt = 1
    for i in nutritions:
        if 'F' in i[0]:
            f.append(i)
            print(cnt, end='. ')
            print(i[1])
            cnt += 1

    while 1:
        print('-->Hệ thống: Bạn không thích thực phẩm nào trong danh sách bên trên không? Hãy chọn số thứ tự cách nhau bởi khoảng trống')
        l = validate.validate_list(input())
        l = list(set(l))
        l.sort()
        if l[0] < 1 or l[-1] > len(f):
            print('-->Hệ thống: Số thứ tự không hợp lệ. Vui lòng nhập lại')
            continue
        elif len(f)-len(l) < 6:
            print('-->Hệ thống: Vui lòng nhập lại sao cho số thực phẩm còn lại 6')
            continue
        for i in l:
            f[i-1] = 0
            flag3 = 1
        f = list(filter(lambda x: x != 0, f))
        if flag3 == 1:
            break
    print('-->Hệ thống: Như vậy, các thực phẩm giàu fat chỉ còn')
    for i in f:
        print(i[1])
    print('-->Hệ thống: Tôi đã có 1 thực đơn 1 ngày cho bạn')
    print('Bữa sáng: ')
    n1 = random.choice(p)
    n2 = random.choice(c)
    n3 = random.choice(f)
    print(str(int(n1[3]/p1*n1[7]))+"g "+n1[1])
    print(str(int(n2[4]/c1*n2[7]))+"g "+n2[1])
    print(str(int(n3[5]/f1*n3[7]))+"g "+n3[1])
    print("=============")
    print('Bữa sáng phụ:')
    n1 = random.choice(p)
    n2 = random.choice(c)
    n3 = random.choice(f)
    print(str(int(n1[3]/p2*n1[7]))+"g "+n1[1])
    print(str(int(n2[4]/c2*n2[7]))+"g "+n2[1])
    print(str(int(n3[5]/f2*n3[7]))+"g "+n3[1])
    print("=========")
    print('Bữa trưa:')
    n1 = random.choice(p)
    n2 = random.choice(c)
    n3 = random.choice(f)
    print(str(int(n1[3]/p1*n1[7]))+"g "+n1[1])
    print(str(int(n2[4]/c1*n2[7]))+"g "+n2[1])
    print(str(int(n3[5]/f1*n3[7]))+"g "+n3[1])
    print("=============")
    print('Bữa trưa phụ:')
    n1 = random.choice(p)
    n2 = random.choice(c)
    n3 = random.choice(f)
    print(str(int(n1[3]/p2*n1[7]))+"g "+n1[1])
    print(str(int(n2[4]/c2*n2[7]))+"g "+n2[1])
    print(str(int(n3[5]/f2*n3[7]))+"g "+n3[1])
    print("========")
    print('Bữa tối:')
    n1 = random.choice(p)
    n2 = random.choice(c)
    n3 = random.choice(f)
    print(str(int(n1[3]/p1*n1[7]))+"g "+n1[1])
    print(str(int(n2[4]/c1*n2[7]))+"g "+n2[1])
    print(str(int(n3[5]/f1*n3[7]))+"g "+n3[1])
    print("============")
    print('Bữa tối phụ:')
    n1 = random.choice(p)
    n2 = random.choice(c)
    n3 = random.choice(f)
    print(str(int(n1[3]/p3*n1[7]))+"g "+n1[1])
    print(str(int(n2[4]/c3*n2[7]))+"g "+n2[1])
    print(str(int(n3[5]/f3*n3[7]))+"g "+n3[1])

# Phần suy diễn tiến


def forward_chaining(rule, fact, goal, ruleindex):
    fc = ForwardChaining(rule, fact, goal, ruleindex)

    list_predicted = fc.predictSchedule
    print('-->Hệ thống: Đây là một số lịch tập dựa vào thông tin của bạn:', end=" ")
    print(list_predicted[0], end='')
    for i in range(1, len(list_predicted)):
        print(', '+list_predicted[i], end='')
    print()
    print('-->Hệ thống: Trên đây là dự đoán sơ bộ của chúng tôi. Tiếp theo, chúng tôi sẽ hỏi bạn một số câu hỏi để đưa ra kết quả chính xác')
    return list_predicted


# Phần suy diễn lùi
def backward_chaining(luat_lui, list_thongtin_id, list_predicted):
    predictD = list_predicted
    rule = luat_lui
    all_rule = db.getthongtin()
    fact_real = list_thongtin_id
    lichtap = 0
    for g in predictD:
        goal = g

        print(
            f"Chúng tôi đã có lịch tập {goal}, sau đây chúng tôi muốn hỏi bạn một vài câu hỏi để tìm lịch tập phù hợp nhất cho bạn")
        all_s_in_D = all_rule[goal]
        all_s_in_D = sorted(set(all_s_in_D)-set(fact_real))
        d = searchindexrule(rule, goal)

        # Kết luận trong trường hợp các luât trước đã đủ để suy ra luôn
        b = BackwardChaining(rule, fact_real, goal)

        if b.result1 == True:  # Nếu suy diễn thành công
            print("Bạn có lịch tập phù hợp {}".format(goal))
            return goal, fact_real

        while len(all_s_in_D) > 0:  # Hệ thống hỏi một số câu
            s = db.get_thongtin_by_id(all_s_in_D[0])
            name = s["ten"]
            mota = s["mota"]
            question = f"Bạn có {mota} là {name} không?"
            print(question)
            answer = validate.validate_binary_answer(input())
            print(f"Answer: {answer}")
            if answer == True:
                fact_real.append(all_s_in_D[0])
                b = BackwardChaining(rule, fact_real, goal)
                list_no_result, lsD = get_s_in_d(
                    all_s_in_D[0], goal, rule, d, 1)
                d = sorted(set(d)-set(lsD))
                all_s_in_D = sorted(set(list_no_result)-set(fact_real))
                if b.result1 == True:
                    lichtap = 1
                    break
            if answer == False:
                list_no_result, lsD = get_s_in_d(
                    all_s_in_D[0], goal, rule, d, 0)
                d = sorted(set(d)-set(lsD))
                all_s_in_D = sorted(set(list_no_result)-set(fact_real))
            if len(d) == 0:
                print(f"Có vẻ như bạn không phù hợp với lịch tập {goal}")
                break
        if lichtap == 1:
            print("Bạn phù hợp với lịch tập {}".format(goal))
            return goal, fact_real
    if lichtap == 0:
        print(f"Bạn không phù hợp với lịch tập nào cả")
        return None, fact_real


if __name__ == "__main__":
    user = welcome_question()
    list_thong_tin = first_question(list_thong_tin)
    list_thong_tin = second_question(list_thong_tin)
    list_thong_tin_id = [i['idthongtin'] for i in list_thong_tin]
    list_thong_tin_id.sort()
    list_predicted_schedule = forward_chaining(
        luat_tien, list_thong_tin_id, None, db.rulefw)
    list_predicted_schedule.sort()
    lich_tap, list_thong_tin_id = backward_chaining(
        luat_lui, list_thong_tin_id,  list_predicted_schedule)
    get_bai_tap(lich_tap)
    tu_van_dinh_duong(lich_tap)
