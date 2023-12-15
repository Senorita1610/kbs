class Rule:

    def __init__(self, left, right):
        self.left = left
        self.right = right
        self.flag1 = False
        self.flag2 = False

    def follows(self, facts):  # tìm ra cái thiéu

        for fact in self.left:  # lấy từng fact trong vế trái
            if fact not in facts:  # nếu không thuộc list facts tổng thì trả về
                return fact
        return None  # trả về none khi mà vế trái đủ điều kiện cho vế phải

    def __str__(self):
        return ",".join(self.left) + "->" + self.right


class ForwardChaining:

    def __init__(self, rule, fact, goal, ruleindex):
        self.predictSchedule = []
        self.iteration = 0
        self.output = ""
        self.output_file_name = None

        self.output += "PART 1. Luật\n"
        # rules, facts, goal = self.read_data(file_name) # lấy luật , sự thật và mục tiêu
        rules = self.read_rule(rule)
        facts = self.read_facts(fact)
        self.print_data(rules, facts, goal, ruleindex)

        self.output += "PART 2. Suy Diễn\n"
        self.result, self.road, self.facts = self.forward_chaining(
            rules, facts, goal, ruleindex)

        self.output += "PART 3. Kết quả\n"
        self.print_results(self.result, self.road, goal, self.facts)

        self.write_output()
        # print("Kết quả suy diễn tiến được lưu tại file: %s." % self.output_file_name)

    def forward_chaining(self, rules, facts, goal, ruleindex):
        ir = len(facts)
        iteration = 0
        road = []

        # while goal not in facts: # khi mục tiêu chưa nằm trong facts tìm thấy
        while 1:
            cnt = 0
            rule_applied = False
            iteration += 1
            self.output += "%i".rjust(4, " ") % iteration + " ITERATION\n"

            for rule in rules:
                self.output += "    %s: %s " % (ruleindex[cnt], str(rule))
                cnt += 1

                if rule.flag1:  # nếu luạt đã được cm rồi
                    self.output += "bỏ qua, vì flag1 đã được cập nhật.\n"
                    continue

                if rule.flag2:
                    self.output += "bỏ qua, vì flag2 đã được cập nhật.\n"
                    continue

                if rule.right in facts:  # nếu vế phải đã được cm rồi
                    self.output += "không áp dụng, vì %s nắm trong số các facts. Cập nhật flag2.\n" % rule.right
                    rule.flag2 = True
                    continue

                # tìm xem là có fact nào thiếu để kết luận luật đúng hay không
                missing = rule.follows(facts)

                if missing is None:
                    rule_applied = True
                    rule.flag1 = True
                    facts.append(rule.right)
                    self.predictSchedule.append(rule.right)
                    road.append(ruleindex[cnt-1])
                    self.output += "được áp dụng. Cập nhật flag1. Facts %s suy ra %s.\n" % (
                        ", ".join(facts[:ir]), ", ".join(facts[ir:]))
                    break
                else:
                    self.output += "Không được áp dụng, vì thiếu fact: %s\n" % missing
            self.output += "\n"

            if not rule_applied:
                return False, road, facts  # ban đầu là []

        return True, road, facts

    def read_rule(self, rule):
        new_rule = []
        for i in rule:
            right = i[0]
            left = i[1:]
            new_rule.append(Rule(left, right))
        # print(new_rule)
        return new_rule

    def read_facts(self, line):
        ad = []
        for i in line:
            ad.append(i)
        return ad

    def print_data(self, rules, facts, goal, ruleindex):
        cnt = 0
        self.output += "  1) Productions\n"
        for rule in rules:
            self.output += "    %s: %s\n" % (ruleindex[cnt], str(rule))
            cnt += 1
        self.output += "\n  2) Facts %s.\n" % ", ".join(facts)
        self.output += "\n  3) Goal %s\n\n" % goal

    def print_results(self, result, road, goal, facts):

        if result:
            if len(road) == 0:
                self.output += "  1) Kết quả là: %s .\n" % ", ".join(facts)
                self.output += "  2) Empty road.\n"
            else:
                self.output += "  1) Kết quả là: %s .\n" % ", ".join(facts)
                self.output += "  2) Road: %s.\n" % ", ".join(road)
        else:
            self.output += "  1) Kết quả là: %s .\n" % ", ".join(facts)
            self.output += "  2) Đường đi suy diễn được là: %s" % ", ".join(
                road)

    def write_output(self):
        self.output_file_name = "fc_output.txt"
        file = open(self.output_file_name, "w", encoding='utf8')
        file.write(self.output)

    def print_schedule(self):
        print("-->Chatbot: Đây là một số lịch tập dựa vào thông tin của bạn")
        print(self.predictSchedule)
