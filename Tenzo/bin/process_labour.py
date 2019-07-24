from datetime import *
from bin.process_file import ProcessFile
from bin.process_shifts import Shifts


class ShiftLabour:
    def __init__(self):
        self.labour_costs = {}

    def cost_per_minute(self, start, end, rate_per_minute):
        for minute in datespan(start, end, timedelta(minutes=1)):
            if minute.strftime("%H:00") not in self.labour_costs:
                self.labour_costs[minute.strftime("%H:00")] = 0.0
            self.labour_costs[minute.strftime("%H:00")] += rate_per_minute

    def cost_per_hour(self, input):
        shift_data = self.get_shifts(input)
        rate_per_minute = shift_data["Pay rate"]/60

        self.cost_per_minute(
            shift_data["Start"], shift_data["Break start"], rate_per_minute)
        self.cost_per_minute(
            shift_data["Break end"], shift_data["End"], rate_per_minute)

        return self.labour_costs

    def get_shifts(self, input):
        shifts = Shifts()
        return shifts.return_shift_data(input)

    def round_costs(self):
        for cost_per_hour in self.labour_costs:
            self.labour_costs[cost_per_hour] = round(
                self.labour_costs[cost_per_hour], 2)

    def total_labour_cost(self, input):
        file_cleaner = ProcessFile()

        shifts_list = file_cleaner.return_cleaned_string(input)
        for shift in shifts_list:
            self.cost_per_hour(shift)
        self.round_costs()
        return self.labour_costs


def datespan(startDate, endDate, delta):
    currentDate = startDate
    while currentDate < endDate:
        yield currentDate
        currentDate += delta
