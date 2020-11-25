//
//  SearchingTest.swift
//  StandardAlgorithms
//
//  Created by Harry Bell on 23/11/2020.
//

import XCTest

class SearchingTDD: XCTestCase {

    func testLinearSearchWithIntegerArrayReturnsIndexOfItem() {
        //arrange
        let searching = Searching()
        let testData = [(data:[1,5,2,8,3,9],toFind: 5,expected: 1),(data:[5,2,6,15,92,72,25,43,9],toFind: 72,expected: 5),(data:[4],toFind: 4,expected: 0)]
        //act
        for test in testData {
            let result = searching.linearSearch(list: test.data, toFind: test.toFind)
            //assert
            XCTAssertEqual(result, test.expected) 
        }
        
    }
    
    func testLinearSearchWithEmptyArrayReturnsNegativeOne() {
        //arrange
        let searching = Searching()
        let testData = [(data: [1],toFind: 0, expected: -2),(data: [],toFind: 4, expected: -1),(data: [],toFind: 143225326, expected: -1)]
        //act
        for test in testData {
            let result = searching.linearSearch(list: test.data, toFind: test.toFind)
            //assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testLinearSearchWithIntegerArrayWhichDoesNotContainDesiredIntegerReturnsNegativeTwo() {
        //arrange
        let searching = Searching()
        let testData = [(data:[1,5,2,8,3,9],toFind: 12,expected: -2),(data:[5,2,6,15,92,72,25,43,9],toFind: 4,expected: -2),(data:[4],toFind: 7,expected: -2)]
        //act
        for test in testData {
            let result = searching.linearSearch(list: test.data, toFind: test.toFind)
            //assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testBinarySearchWithSortedIntegerArrayReturnsIndexOfItem() {
        //arrange
        let searching = Searching()
        let testData = [(data: [1,2,3,4,5,6,7,8],toFind: 2,expected: 1),(data: [2,4,6,8,10,12,14],toFind: 14,expected: 6)]
        //act
        for test in testData {
            let result = searching.binarySearch(list: test.data, toFind: test.toFind)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testBinarySearchWithSortedArrayAndAnInvalidSearchObjectReturnsNegativeTwo() {
        //arrange
        let searching = Searching()
        let testData = [(data: [1,2,3,4,5,6,7,8],toFind: 9,expected: -2),(data: [2,4,6,8,10,12,14],toFind: 325,expected: -2),(data: [],toFind: 0,expected: -1)]
        //act
        for test in testData {
            let result = searching.binarySearch(list: test.data, toFind: test.toFind)
            XCTAssertEqual(result, test.expected)
        }
    }
    
    
}

class SearchingPerformance: XCTestCase {
    
    func testLinearSearchPerformanceWithNEquals5() {
        let searching = Searching()
        measure {
             _ = searching.linearSearch(list: [0,2,1,6,9],toFind: 9)
        }
    }
    
    func testLinearSearchPerformanceWithNEquals50() {
        let searching = Searching()
        var intList50: [Int] = []
        var toFind: Int
        
        for _ in 0..<50 {
            intList50.append(Int.random(in: 0...1000))
        }
        
        toFind = intList50[49]

        measure {
            _ = searching.linearSearch(list: intList50,toFind: toFind)
        }
    }
    
    func testLinearSearchPerformanceWithNEquals500() {
        let searching = Searching()
        var intList500: [Int] = []
        var toFind: Int
        
        for _ in 0..<500 {
            intList500.append(Int.random(in: 0...1000))
        }
        
        toFind = intList500[499]

        measure {
            _ = searching.linearSearch(list: intList500,toFind: toFind)
        }
    }
    
    func testBinarySearchPerformanceWithNEquals5() {
        let searching = Searching()
        measure {
             _ = searching.binarySearch(list: [0,2,1,6,9],toFind: 9)
        }
    }
    
    func testBinarySearchPerformanceWithNEquals50() {
        let searching = Searching()
        var intList50: [Int] = []
        var toFind: Int
        
        for _ in 0..<50 {
            intList50.append(Int.random(in: 0...1000))
        }
        
        toFind = intList50[49]

        measure {
            _ = searching.binarySearch(list: intList50,toFind: toFind)
        }
    }
    
    func testBinarySearchPerformanceWithNEquals500() {
        let searching = Searching()
        var intList500: [Int] = []
        var toFind: Int
        
        for _ in 0..<500 {
            intList500.append(Int.random(in: 0...1000))
        }
        
        toFind = intList500[499]

        measure {
            _ = searching.binarySearch(list: intList500,toFind: toFind)
        }
    }

}
    

