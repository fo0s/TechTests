import pytest
from Solution import *
from bin.process_shifts import Shifts
from bin.process_file import ProcessFile


def test_process_shifts():
    assert process_shifts(path_to_shifts) == {
        '09:00': 30.0,
        '10:00': 50.0,
        '11:00': 50.0,
        '12:00': 64.0,
        '13:00': 74.0,
        '14:00': 74.0,
        '15:00': 44.0,
        '16:00': 26.67,
        '17:00': 54.0,
        '18:00': 60.0,
        '19:00': 66.0,
        '20:00': 66.0,
        '21:00': 66.0,
        '22:00': 59.0
    }


path_to_shifts = "Instructions/work_shifts.csv"
