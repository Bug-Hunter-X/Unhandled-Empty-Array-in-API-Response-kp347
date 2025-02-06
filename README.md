# Unhandled Empty Array in API Response

This example demonstrates a common error in Dart when handling API responses: attempting to access elements of an array without checking if the array is empty.  The `fetchData` function fetches data from an API. If the API returns an empty array, accessing `data[0]` will throw an `IndexOutOfRangeException`. This repository shows the bug and provides a solution.

## Bug

The `bug.dart` file contains the erroneous code.  Specifically, the line `final firstElement = data[0];` lacks error handling for the case where `data` is an empty list.

## Solution

The `bugSolution.dart` file shows how to fix the error by checking the length of the `data` array before accessing its elements.  Appropriate error handling is implemented to gracefully manage empty array responses.
