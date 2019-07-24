import pytest
from datetime import *
from bin.process_shifts import Shifts


class TestTimes:
    shifts = Shifts()

    def test_time1(self):
        assert self.shifts.clean_time('10') == datetime(1900, 1, 1, 10, 00)

    def test_time2(self):
        assert self.shifts.clean_time('18:00') == datetime(1900, 1, 1, 18, 00)

    def test_time3(self):
        assert self.shifts.clean_time('4pm') == datetime(1900, 1, 1, 16, 00)

    def test_time4(self):
        assert self.shifts.clean_time('15 ') == datetime(1900, 1, 1, 15, 00)

    def test_time5(self):
        assert self.shifts.clean_time(' 17') == datetime(1900, 1, 1, 17, 00)

    def test_time6(self):
        assert self.shifts.clean_time('4.10PM') == datetime(1900, 1, 1, 16, 10)


class TestStartandEnd:
    shifts = Shifts()

    def test_start_time(self):
        assert self.shifts.shift_start_time(
            user_time) == datetime(1900, 1, 1, 10, 00)

    def test_end_time(self):
        assert self.shifts.shift_finish_time(
            user_time) == datetime(1900, 1, 1, 23, 00)


user_time = ['15-18', '23:00', '10.0', '10:00']
user2_time = ['4-4.10PM', '23:00', '20.0', '09:00']
