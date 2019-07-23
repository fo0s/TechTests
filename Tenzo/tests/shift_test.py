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
