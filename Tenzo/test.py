# -*- coding: utf-8 -*-

import csv

with open('Instructions/work_shifts.csv', mode='r') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    line_count = 0
    for row in csv_reader:
        if line_count == 0:
            print(f'Column names are {", ".join(row)}')
            line_count += 1
        print(
            f'Start Time: {row["start_time"]}. End Time: {row["end_time"]}. Break: {row["break_notes"]}. Pay Rate: {row["pay_rate"]}.')
        line_count += 1
    print(f'Processed {line_count} lines.')
