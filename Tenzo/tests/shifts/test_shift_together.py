import pytest
from datetime import *
from bin.process_shifts import Shifts


class TestBreakStartandEnd:
    shifts = Shifts()

    def test_start_time(self):
        assert self.shifts.separate_breaks(
            user_time, 'start') == datetime(1900, 1, 1, 15, 00)

    def test_end_time(self):
        assert self.shifts.separate_breaks(
            user2_time, 'end') == datetime(1900, 1, 1, 16, 10)


class TestBringitTogether:
    shifts = Shifts()

    def test_come_together_right_now(self):
        assert self.shifts.bring_shift_together(user_time) == {
            "Break start": datetime(1900, 1, 1, 15, 00),
            "Break end": datetime(1900, 1, 1, 18, 00),
            "Start": datetime(1900, 1, 1, 10, 00),
            "End": datetime(1900, 1, 1, 23, 00)
        }

    def test_come_together_right_now1(self):
        assert self.shifts.bring_shift_together(user2_time) == {
            "Break start": datetime(1900, 1, 1, 16, 00),
            "Break end": datetime(1900, 1, 1, 16, 10),
            "Start": datetime(1900, 1, 1, 9, 00),
            "End": datetime(1900, 1, 1, 23, 00)
        }


user_time = ['15-18', '23:00', '10.0', '10:00']
user2_time = ['4-4.10PM', '23:00', '20.0', '09:00']
