import pytest
from Solution import *


def test_best_and_worst_hour():
    shifts = process_shifts(path_to_shifts)
    sales = process_sales(path_to_sales)
    percentages = compute_percentage(shifts, sales)
    best_hour, worst_hour = best_and_worst_hour(percentages)

    assert best_hour == '15:00'
    assert worst_hour == '20:00'


path_to_sales = "Instructions/transactions.csv"
path_to_shifts = "Instructions/work_shifts.csv"
