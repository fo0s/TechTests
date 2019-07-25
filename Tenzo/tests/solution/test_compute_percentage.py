import pytest
from Solution import *
from bin.process_percentage import Percentage


def test_compute_percentage():
    shifts = process_shifts(path_to_shifts)
    sales = process_sales(path_to_sales)
    assert compute_percentage(shifts, sales) == {
        '09:00': -30.0,
        '10:00': 38.2,
        '11:00': 15.6,
        '12:00': 12.4,
        '13:00': 18.2,
        '14:00': 41.6,
        '15:00': 69.4,
        '16:00': 35.4,
        '17:00': 37.9,
        '18:00': 8.0,
        '19:00': 15.7,
        '20:00': -66.0,
        '21:00': 27.4,
        '22:00': -59.0,
    }


path_to_sales = "Instructions/transactions.csv"
path_to_shifts = "Instructions/work_shifts.csv"
