from datetime import *
from bin.process_file import ProcessFile


class Transactions:
    def __init__(self):
        self.profit = {}

    def extract_time(self, input):
        return datetime.strptime(input, "%H:%M")

    def extract_wage(self, input):
        return float(input)

    def roundoff(self):
        for cost_per_hour in self.profit:
            self.profit[cost_per_hour] = round(
                self.profit[cost_per_hour], 2)

    def profits(self, input):
        file = ProcessFile()
        trans_list = file.return_cleaned_string(input)

        for sale in trans_list:
            time = self.extract_time(sale[1])
            amount = self.extract_wage(sale[0])
            if time.strftime("%H:00") not in self.profit:
                self.profit[time.strftime("%H:00")] = 0.0

            self.profit[time.strftime("%H:00")] += amount
        self.roundoff()

        return self.profit
