import pytest
from datetime import *
from bin.process_transactions import Transactions


class TestExtractingValues:
    trans = Transactions()

    def test_extract_time(self):
        assert self.trans.extract_time(
            '10:00') == datetime(1900, 1, 1, 10, 0)

    def test_extract_time2(self):
        assert self.trans.extract_time(
            '22:22') == datetime(1900, 1, 1, 22, 22)

    def test_extract_values(self):
        assert self.trans.extract_wage("123.45") == 123.45


class TestProfit:
    trans = Transactions()

    def test_profit(self):
        assert self.trans.profits(raw_data) == {
            '10:00': 130.88, '11:00': 320.65, '12:00': 514.65}


raw_data = "amount,time\n100.32,10:31\n30.56,10:56\n300.65,11:05\n20.0,11:31\n54.56,12:36\n220.09,12:45\n240.0,12:59"
