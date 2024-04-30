#!/usr/bin/python3
"""Finds a peak in a list of unsorted integers"""


def find_peak(list_of_integers):
    """Finds a peak in list_of_integers"""

    if type(list_of_integers) != list or len(list_of_integers) == 0:
        return None
    uo = 0
    li = len(list_of_integers) - 1
    while uo < li:
        mid = (uo + li) // 2
        if type(list_of_integers[mid]) != int:
            return None

        if type(list_of_integers[mid + 1]) != int:
            return None

        if list_of_integers[mid] < list_of_integers[mid + 1]:
            uo = mid + 1
        else:
            li = mid
    return list_of_integers[uo]
