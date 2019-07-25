import pytest
from datetime import *
from bin.process_percentage import Percentage


class TestPercentages:
    def test_percentage(self):
        percent = Percentage()

        assert percent.calculate(shifts, sales) == {
            '09:00': 10.0,
            '10:00': 10.0,
            '11:00': 10.0,
            '12:00': 10.0,
            '13:00': 10.0,
            '14:00': 10.0,
            '15:00': 10.0,
            '16:00': 10.0,
            '17:00': 10.0
        }


shifts = {
    "09:00": 10.0,
    "10:00": 20.0,
    "11:00": 30.0,
    "12:00": 30.0,
    "13:00": 30.0,
    "14:00": 30.0,
    "15:00": 20.0,
    "16:00": 20.0,
    "17:00": 10.0,
}

sales = {
    "09:00": 100.0,
    "10:00": 200.0,
    "11:00": 300.0,
    "12:00": 300.0,
    "13:00": 300.0,
    "14:00": 300.0,
    "15:00": 200.0,
    "16:00": 200.0,
    "17:00": 100.0,
}
