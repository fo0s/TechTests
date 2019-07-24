import pytest
from datetime import *
from bin.process_shifts import Shifts


class TestPayRate:
    shifts = Shifts()

    def test_get_pay_rate1(self):
        assert self.shifts.pay_rate(user_time) == 10.0

    def test_get_pay_rate2(self):
        assert self.shifts.pay_rate(user2_time) == 20.0


class TestShiftwithPay:
    shifts = Shifts()

    def test_shift_with_pay(self):
        assert self.shifts.return_shift_data(user_time) == {
            "Break start": datetime(1900, 1, 1, 15, 00),
            "Break end": datetime(1900, 1, 1, 18, 00),
            "Start": datetime(1900, 1, 1, 10, 00),
            "End": datetime(1900, 1, 1, 23, 00),
            "Pay rate": 10.0
        }

    def test_shift_with_pay2(self):
        assert self.shifts.return_shift_data(user2_time) == {
            "Break start": datetime(1900, 1, 1, 16, 00),
            "Break end": datetime(1900, 1, 1, 16, 10),
            "Start": datetime(1900, 1, 1, 9, 00),
            "End": datetime(1900, 1, 1, 23, 00),
            "Pay rate": 20.0
        }


user_time = ['15-18', '23:00', '10.0', '10:00']
user2_time = ['4-4.10PM', '23:00', '20.0', '09:00']
