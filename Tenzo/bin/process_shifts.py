from datetime import *


class Shifts:
    def clean_time(self, time_input):
        for changed_time in ('%H', '%H.%M', '%H:%M', '%I%p', '%I.%M%p', '%H ', ' %H'):
            try:
                return datetime.strptime(time_input, changed_time)
            except ValueError:
                pass
