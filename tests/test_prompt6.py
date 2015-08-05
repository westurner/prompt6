
from prompt6.__main__ import main

import prompt6.prompt6 as prompt6

def test_import_prompt6():
    p6 = __import__('prompt6')
    assert p6

def test_import_prompt6_fullpath():
    p6 = __import__('prompt6.prompt6') # .prompt6
    assert p6


def test_main():
    assert main([]) == 0

    assert False
