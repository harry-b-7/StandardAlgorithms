//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Harry Bell on 23/11/2020.
//

import Foundation

class Searching {
    
    func linearSearch(list: [Int], toFind: Int) -> Int? {
        for i in 0..<list.count {
            if list[i] == toFind {
                return i
            }
        }
        return nil
    }
}
