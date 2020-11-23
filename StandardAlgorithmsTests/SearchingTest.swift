//
//  SearchingTest.swift
//  StandardAlgorithms
//
//  Created by Harry Bell on 23/11/2020.
//

import XCTest

class SearchingTest: XCTestCase {

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
    
    func testLinearSeaarchWithEmptyArrayReturnsNil() {
        //arrange
        
    }
}
