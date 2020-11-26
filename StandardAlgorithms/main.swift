//
//  main.swift
//  StandardAlgorithms
//
//  Created by Bell, Harry (MAG) on 11/11/2020.
//

import Foundation

let sorting = Sorting()
let searching = Searching()

print("""
    Welcome to StandardAlgorithms!
    
    StandardAlgorithms is a demo of 6 searching and sorting algorithms, which I shall explain and invoke in turn.


    """)
//Bubble Sort
print("""
    1. Bubble Sort:
    
    Description:    Compares each item in an array with the one directly next to it; swapping if they are not in ascending order. Passes through the array again and again until there are no more swaps and the list is sorted.
    
    Time Complexity:
    
        Best: O(n)
        Average & Worst: O(n^2)
    
    Space Complexity: O(1)
    
    Example:
    
    Input data to sort: [3,6,21,8,4,9,3]

    """)
    
let bubbleSortResult = sorting.bubbleSort(data: [3,6,21,8,4,9,3])

print("Result: \(bubbleSortResult)")

//Merge Sort
print("""


    2. Merge Sort:
    
    Description:    Breaks the array down into sub-arrays until the sub-arrays contain one item from the main array each. Then, it compares each item from the smaller arrays and builds them back into one, large, sorted array.
    
    Time Complexity: O(n log n)
    
    Space Complexity: O(n)
    
    Example:
    
    Input data to sort: [6,23,9,1,8,0,3,7,3,9,754,144]

    """)
    
let mergeSortResult = sorting.mergeSort(data: [6,23,9,1,8,0,3,7,3,9,754,144])

print("Result: \(mergeSortResult)")

//Quick Sort
print("""


    3. Quick Sort:
    
    Description:   Creates a 'pivot' from an item in the list, decides whether each other item is smaller or bigger than it and sorts them into separate arrays. This is done recursively for each sub-array until there are no more changes to be made and the arrays are returned and concatenated into the main, newly-sorted array.
    
    Time Complexity:

        Best & Average: O(n log n)
        Worst: O(n^2)
    
    Space Complexity: O(log n)
    
    Example:
    
    Input data to sort: [7,24,0,16,9,2765,97,47358,6543,853,1,6,3]

    """)
    
let quickSortResult = sorting.quickSort(data: [7,24,0,16,9,2765,97,47358,6543,853,1,6,3])

print("Result: \(quickSortResult)")

//Insertion Sort
print("""


    4. Insertion Sort:
    
    Description:    Sorts automatically the first item in the array. Every other item is then checked against this (and later, any other sorted items) to see whether it is smaller or larger. If it is (in the case of my algorithm) smaller, it will insert the new item before the value it was checked against.

    Time Complexity:

        Best: O(n)
        Average & Worst: O(n^2)
    
    Space Complexity: O(n) (As I have not sorted in place but used a separate array)
    
    Example:
    
    Input data to sort: [674,7,2,7653,9,1,654,64321,16,3]

    """)
    
let insertionSortResult = sorting.insertionSort(data: [674,7,2,7653,9,1,654,64321,16,3])

print("Result: \(insertionSortResult)")

//Linear Search
print("""


    5. Linear Search:
    
    Description:    Checks each item in the array in turn to see if it is the requested item. If so, it returns the index. If not, it returns negative two (to indicate that it is not at a positive array index)

    Time Complexity: O(n)
    
    Space Complexity: O(1)
    
    Example:
    
    Input data to search through: [8,236,76,942,754,7564,1,4,7,413,79,23,91]
    Number to find: 413

    """)
    
let linearSearchResult = searching.linearSearch(list: [8,236,76,942,754,7564,1,4,7,413,79,23,91],toFind: 413)

print("Index of number: \(linearSearchResult)")

//Binary Search
print("""


    6. Binary Search:

    PREREQUISITES: A sorted, integer list
    
    Description:    Checks the middle item of the list. it the required item is less than it, it discards the second half and takes the middle item of the first half of the list - and repeats the process until the desired item is found, whereby it returns the index.

    Time Complexity: O(log n)
    
    Space Complexity: O(1) (iterative method used)
    
    Example:
    
    Input data to search through: [1,3,6,9,14,17,216,371,652,1028]
    Number to find:

    """)
    
let binarySearchResult = searching.binarySearch(list: [1,3,6,9,14,17,216,371,652,1028],toFind: 371)

print("Index of number: \(binarySearchResult)")

