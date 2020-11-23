//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Bell, Harry (MAG) on 13/11/2020.
//

import Foundation

class Sorting {

    func bubbleSort(data: [Int]) -> [Int] {
        var isSorted: Bool = false
        var temp: Int = 0
        var varData = data
        
        while isSorted == false {
            var changes: Int = 0
            changes = 0
            if data.count == 0 || data.count == 1 {
                return data
            }
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
    
    func mergeSort(data: [Int]) -> [Int] {
        
        func sortList(intList: [Int]) -> [Int] {
            var firstHalf: [Int] = []
            var secondHalf: [Int] = []
            
            if intList.count == 0 {
                return []
            }
            
            if intList.count != 1 {
                
                let firstHalfCount = intList.count/2
                
                for i in 0...firstHalfCount-1 {
                    firstHalf.append(intList[i])
                }
                
                for i in firstHalfCount...intList.count-1 {
                    secondHalf.append(intList[i])
                }
                 
                let firstHalfToSort = sortList(intList: firstHalf)
                let secondHalfToSort = sortList(intList: secondHalf)
                var newSortedList: [Int] = []
                var firstHalfIndex = 0
                var secondHalfIndex = 0
                
                while firstHalfIndex < firstHalfToSort.count && secondHalfIndex < secondHalfToSort.count {
                    if firstHalfToSort[firstHalfIndex] < secondHalfToSort[secondHalfIndex] {
                        newSortedList.append(firstHalfToSort[firstHalfIndex])
                        firstHalfIndex += 1
                    } else {
                        newSortedList.append(secondHalfToSort[secondHalfIndex])
                        secondHalfIndex += 1
                        
                    }
                }
                
                while firstHalfIndex < firstHalfToSort.count {
                    newSortedList.append(firstHalfToSort[firstHalfIndex])
                    firstHalfIndex += 1
                }
                
                while secondHalfIndex < secondHalfToSort.count {
                    newSortedList.append(secondHalfToSort[secondHalfIndex])
                    secondHalfIndex += 1
                }
                
                return newSortedList
                
            } else {
                return intList
            }
        }
        
        return sortList(intList: data)
        
        
        
    }
}

