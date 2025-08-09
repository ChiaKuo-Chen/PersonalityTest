//
//  CheckpointModel.swift
//  PersonalityTest
//

import Foundation

struct CheckPoint : Identifiable, Hashable {
    
    var id = UUID()
    var title : String
    var choiceString : [String]
    var choiceDestination : [Int]
    var gotoEndView : [Bool] = [false, false, false]
}

