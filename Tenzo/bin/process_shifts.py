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
        if 'PM' in break_time[1] and 'PM' not in break_time[0]:
            break_time[0] += 'PM'

        if wanted == 'start':
            return self.clean_time(break_time[0])
        else:
            return self.clean_time(break_time[1])

    def bring_shift_together(self, input):
        start = self.shift_start_time(input)
        end = self.shift_finish_time(input)
        break_start = self.separate_breaks(input, 'start')
        break_end = self.separate_breaks(input, 'end')

        if (start < break_start < break_end < end):
            pass
        else:
            break_start += timedelta(hours=12)
            break_end += timedelta(hours=12)

        return {
            "Break start": break_start,
            "Break end": break_end,
            "Start": start,
            "End": end
        }

    def pay_rate(self, input):
        pay_rate = float(input[2])
        return pay_rate

    def return_shift_data(self, input):
        shift_and_break = self.bring_shift_together(input)
        pay_rate = {
            "Pay rate": self.pay_rate(input)
        }
        shift_data = {}
        shift_data.update(pay_rate)
        shift_data.update(shift_and_break)
        return shift_data
