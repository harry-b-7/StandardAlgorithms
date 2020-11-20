//
//  UnknownTest.swift
//  StandardAlgorithmsTests
//
//  Created by Bell, Harry (MAG) on 18/11/2020.
//

import XCTest

class UnknownTest: XCTestCase {
    
    func testAddFirstAndLastWithIntegerArrayReturnsInteger() {
        let unknownAlgorithms = UnknownAlgorithms()
        let testing = [(data: [1,5,3,7,9],expected: 10),(data: [6,5,27,9,2],expected: 8),(data: [14,754,7654267,2356776485645341,2],expected: 16)]
        
        for test in testing {
            let result = unknownAlgorithms.addFirstAndLast(data: test.data)
            XCTAssertEqual(result,test.expected)
        }
        
    }
    
    func testAddFirstAndLastWithArrayContainingSingleItemReturnsItemTimesTwo() {
        //arrange
        let unknownAlgorithms = UnknownAlgorithms()
        let testing = [(data: [1],expected: 2),(data: [7],expected: 14),(data: [567432567], expected: 567432567*2)]
        //act
        for test in testing {
            let result = unknownAlgorithms.addFirstAndLast(data: test.data)
            //assert
            XCTAssertEqual(result, test.expected)
        }
    }
    
    func testAddFirstAndLastWithEmptyArrayReturnsZero() {
        //arrange
        let unknownAlgorithms = UnknownAlgorithms()
        let data: [Int] = []
        let expected = 0
        //act
        let result = unknownAlgorithms.addFirstAndLast(data: data)
        //assert
        XCTAssertEqual(result,expected)
    }
}
