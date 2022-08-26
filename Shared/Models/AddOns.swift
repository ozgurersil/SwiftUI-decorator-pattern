//
//  AddOns.swift
//  com.decorator (iOS)
//
//  Created by ozgur ersil on 18.08.2022.
//

import Foundation

enum AddOnsTypes {
    case mushroom, corn, toppings
}

class AddOns: Identifiable {
    let id:String = UUID().uuidString
    let name:String
    let addOnType:AddOnsTypes
    var isSelected:Bool
    
    init(name:String,
         addOnType:AddOnsTypes,
         isSelected:Bool){
        self.name = name
        self.addOnType = addOnType
        self.isSelected = isSelected
    }
}
