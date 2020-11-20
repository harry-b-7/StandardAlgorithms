//
//  Unknown Algorithms.swift
//  StandardAlgorithms
//
//  Created by Bell, Harry (MAG) on 18/11/2020.
//

import Foundation

class UnknownAlgorithms {
    func addFirstAndLast(data: [Int]) -> Int {
        if data.count == 0 {
            return 0
        } else if data.count == 1 {
            return data[0]*2
        }else {
            return data[0]+data.last!
        }
        
    }
    
    func findModeOfSortedList(data: [Int]) -> Int {
        if data.count == 0 {
            return 0
        }
        var current = 0
        var run = 0
        var runOfEach: [[Int]] = []
        for number in data {
            if number == current {
                run += 1
            } else {
                runOfEach.append([current,run])
                current = number
                run = 1
            }
        }
        runOfEach.append([current,run])
        print(runOfEach)
        var mode = 0
        var largestRun = 0
        for i in runOfEach {
            if i[1] > largestRun {
                mode = i[0]
                largestRun = i[1]
            }
        }
        return mode
    }
}
