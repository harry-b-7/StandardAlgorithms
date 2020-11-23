//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Harry Bell on 23/11/2020.
//

import Foundation

class Searching {
    
    func linearSearch(list: [Int], toFind: Int) -> Int {
        if list.count == 0 {
            return -1
        }
        
        for i in 0..<list.count {
            if list[i] == toFind {
                return i
            }
        }
        return -2
    }
    
    func binarySearch(list: [Int],toFind: Int) -> Int {
        let leftMarker = 0
        let rightMarker = list.count-1
        
        func recursiveFind(list: [Int],leftMarker: Int, rightMarker: Int) -> Int {
            if list[rightMarker-(leftMarker/2)] < toFind {
                let newLeftMarker = rightMarker-(leftMarker/2)+1
                return recursiveFind(list: list,leftMarker: newLeftMarker,rightMarker: rightMarker)
            } else if list[rightMarker-(leftMarker/2)] > toFind {
                let newRightMarker = rightMarker-(leftMarker/2)-1
                return recursiveFind(list: list,leftMarker: leftMarker,rightMarker: newRightMarker)
            } else {
                return rightMarker-(leftMarker/2)
                
            }
        }
        return recursiveFind(list: list, leftMarker: leftMarker,rightMarker: rightMarker)
    }
}
