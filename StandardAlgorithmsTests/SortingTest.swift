//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Bell, Harry (MAG) on 13/11/2020.
//

import XCTest

class SortingTest: XCTestCase {
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
        let testData = [(data: [6,3,1,9,2], expected: [1,2,3,6,9]),(data: [3,34,62,12,5], expected: [3,5,12,34,62]),(data: [], expected: [])]
        //act
        for test in testData {
            let result = sorting.bubbleSort(data: test.data)
            XCTAssertEqual(result, test.expected)
        }
    }
}
