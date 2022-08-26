//
//  Food.swift
//  com.decorator (iOS)
//
//  Created by ozgur ersil on 15.08.2022.
//

import Foundation

enum MainDish: CaseIterable{
    case pizza,pasta
}


struct Food: Identifiable {
    let id: String = UUID().uuidString
    let mainDish: Order
    let image:String
    let dishType:MainDish
}
