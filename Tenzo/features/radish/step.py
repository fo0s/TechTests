# -*- coding: utf-8 -*-

from radish import given, when, then
import csv


@given(r"a csv file {path_to_csv:w}")
def process_shifts(step, path_to_csv):
    path = path_to_csv + str(".csv")
    with open(path, mode='r') as csv_file:
        step.context.csv_reader = csv.DictReader(csv_file)
        step.context.line_count = 0

        for row in step.context.csv_reader:
            if step.context.line_count == 0:
                print(f'Column names are {", ".join(row)}')
                step.context.line_count += 1
            print(
                f'Start Time: {row["start_time"]}. End Time: {row["end_time"]}. Break: {row["break_notes"]}. Pay Rate: {row["pay_rate"]}.')
            step.context.line_count += 1
    print(f'Processed {step.context.line_count} lines.')


@when("the file is opened")
def test1(step):
    return 'ok'


@then("expect the first line to read break_notes,end_time,pay_rate,start_time")
def test2(step):
    return 'ok'
