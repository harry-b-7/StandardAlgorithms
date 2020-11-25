//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Bell, Harry (MAG) on 13/11/2020.
//

import XCTest

class SortingTDD: XCTestCase {
    func testBubbleSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let expected = [1,3,5,8]
        //act
        let result = sorting.bubbleSort(data: [5,3,1,8])
        //assert
        XCTAssertEqual(result, expected)
    }
    
    func testBubbleSortWithVariousIntegerArraysReturnsEachOtherSorted() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [6,3,1,9,2], expected: [1,2,3,6,9]),(data: [1],expected: [1]),(data: [3,34,62,12,5], expected: [3,5,12,34,62]),(data: [], expected: [])]
        //act
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testMergeSortWithIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let testData = [(data: [6,3,1,9,2], expected: [1,2,3,6,9]),(data: [1],expected: [1]),(data: [3,34,62,12,5], expected: [3,5,12,34,62]),(data: [], expected: [])]
        //act
        for test in testData {
            let result = sorting.mergeSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
}

class SortingPerformance: XCTestCase {
    
    func testBubbleSortPerformanceWithNEquals5() {
        //arrange
        let sorting = Sorting()
        //act
        measure {
            _ = sorting.bubbleSort(data: [0,2,1,6,9])
        }
    }
    
    func testBubbleSortPerformanceWithNEquals50() {
        //arrange
        let sorting = Sorting()
        var intList50: [Int] = []
        for _ in 0..<50 {
            intList50.append(Int.random(in: 0...1000))
        }
        //act
        measure {
            _ = sorting.bubbleSort(data: intList50)
        }
    }
    
    func testBubbleSortPerformanceWithNEquals500() {
        //arrange
        let sorting = Sorting()
        var intList500: [Int] = []
        for _ in 0..<500 {
            intList500.append(Int.random(in: 0...1000))
        }
        //act
        measure {
            _ = sorting.bubbleSort(data: intList500)
        }
    }
    
    func testMergeSortPerformanceWithNEquals5() {
        //arrange
        let sorting = Sorting()
        //act
        measure {
            _ = sorting.mergeSort(data: [0,2,1,6,9])
        }
    }
    
    func testMergeSortPerformanceWithNEquals50() {
        //arrange
        let sorting = Sorting()
        var intList50: [Int] = []
        for _ in 0..<50 {
            intList50.append(Int.random(in: 0...1000))
        }
        //act
        measure {
            _ = sorting.mergeSort(data: intList50)
        }
    }
    
    func testMergeSortPerformanceWithNEquals500() {
        //arrange
        let sorting = Sorting()
        var intList500: [Int] = []
        for _ in 0..<500 {
            intList500.append(Int.random(in: 0...1000))
        }
        //act
        measure {
            _ = sorting.mergeSort(data: intList500)
        }
    }
}
