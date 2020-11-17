//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Bell, Harry (MAG) on 13/11/2020.
//

import Foundation

class Sorting {
    enum InputError: Error {
        case empty
    }
    
    func bubbleSort(data: [Int]) throws -> [Int] {
        var isSorted: Bool = false
        var temp: Int = 0
        var varData = data
        
        while isSorted == false {
            var changes: Int = 0
            changes = 0
            print("Bruh")
            for i in 1...data.count-1 {
                if varData[i] < varData[i-1] {
                    temp = varData[i]
                    varData[i] = varData[i-1]
                    varData[i-1] = temp
                    changes += 1
                } else {
                    continue
                }
            }
            if changes == 0 {
                isSorted = true
            }
        }
        return varData
    }
}

