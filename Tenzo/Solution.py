"""
Bart Biernat
"""

from datetime import *
from bin.process_shifts import Shifts
from bin.process_labour import ShiftLabour
from bin.process_file import ProcessFile
from bin.process_transactions import Transactions
from bin.process_percentage import Percentage


def process_shifts(path_to_csv):  # Done
    shift_file_data = open(path_to_csv).read()
    shift = Shifts()
    return shift.return_shift_data(shift_file_data)


def process_sales(path_to_csv):
    file = open(path_to_csv).read()
    sale = Transactions()
    return sale.profits(file)


def compute_percentage(shifts, sales):
    percent = Percentage()
    return percent.calculate(shifts, sales)


def best_and_worst_hour(percentages):
    best_hour = max(percentages, key=percentages.get)
    worst_hour = min(percentages, key=percentages.get)
    return [best_hour, worst_hour]


def main(path_to_shifts, path_to_sales):
    """
    Do not touch this function, but you can look at it, to have an idea of
    how your data should interact with each other
    """

    shifts_processed = process_shifts(path_to_shifts)
    sales_processed = process_sales(path_to_sales)
    percentages = compute_percentage(shifts_processed, sales_processed)
    best_hour, worst_hour = best_and_worst_hour(percentages)
    return best_hour, worst_hour


if __name__ == '__main__':
    # You can change this to test your code, it will not be used
    path_to_sales = "Instructions/transactions.csv"
    path_to_shifts = "Instructions/work_shifts.csv"
    best_hour, worst_hour = main(path_to_shifts, path_to_sales)


# Please write you name here: Bart Biernat
