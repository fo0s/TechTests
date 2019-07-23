from datetime import *


class Shifts:
    def clean_time(self, time_input):
        for changed_time in ('%H', '%H.%M', '%H:%M'):
            try:
                return datetime.strptime(time_input, changed_time)
            except ValueError:
                pass
