from datetime import *


class Shifts:
    def clean_time(self, time_input):
        for changed_time in ('%H', '%H.%M', '%H:%M', '%I%p', '%I.%M%p', '%H ', ' %H'):
            try:
                return datetime.strptime(time_input, changed_time)
            except ValueError:
                pass

    def shift_start_time(self, input):
        return self.clean_time(input[3])

    def shift_finish_time(self, input):
        return self.clean_time(input[1])

    def separate_breaks(self, input, wanted):
        break_time = input[0].split("-")
        checking = 0

        for time in break_time:
            if 'PM' not in break_time[checking] and (int(break_time[checking]) - 12) < 0:
                break_time[checking] += 'PM'
            checking += 1

        if wanted == 'start':
            return self.clean_time(break_time[0])
        else:
            return self.clean_time(break_time[1])
