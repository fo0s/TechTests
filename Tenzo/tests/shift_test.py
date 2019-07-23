import pytest
from datetime import *
from bin.process_shifts import Shifts


shifts = Shifts()


def test_time():
    assert shifts.clean_time('10') == datetime(1900, 1, 1, 10, 00)
