Feature: Process Shifts
  :param path_to_csv: The path to the work_shift.csv
  :type string:
  :return: A dictionary with time as key (string) with format %H:%M
      (e.g. "18:00") and cost as value (Number)
    For example, it should be something like :
    {
        "17:00": 50,
        "22:00: 40,
    }
    In other words, for the hour beginning at 17:00, labour cost was
    50 pounds

  Scenario: Open and read the csv file
    Given a csv file work_shifts
    When the file is opened
    Then expect the first line to read break_notes,end_time,pay_rate,start_time