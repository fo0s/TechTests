import pytest
from bin.process_file import ProcessFile

sort_file = ProcessFile()


class TestFormatFileData:

    def test_clear_first_line(self):
        assert sort_file.remove_header(
            raw_data) == test_raw_data

    def test_sort_data(self):
        assert sort_file.sort_data(raw_data) == output

    def test_split_entry(self):
        assert sort_file.return_cleaned_user(user_time_raw) == [
            '15-18', '23:00', '10.0', '10:00']

    def test_process_string(self):
        assert sort_file.return_cleaned_string(raw_data) == [[
            '15-18', '23:00', '10.0', '10:00'], ['4-4.10PM', '23:00', '20.0', '09:00']]


# Test variables
user_time_raw = '15-18,23:00,10.0,10:00'
raw_data = "break_notes,end_time,pay_rate,start_time\n15-18,23:00,10.0,10:00\n4-4.10PM,23:00,20.0,09:00"
test_raw_data = "15-18,23:00,10.0,10:00\n4-4.10PM,23:00,20.0,09:00"

output = [user_time_raw, '4-4.10PM,23:00,20.0,09:00']
