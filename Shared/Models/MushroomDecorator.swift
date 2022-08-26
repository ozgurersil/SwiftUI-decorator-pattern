//
//  MushroomDecorator.swift
//  com.decorator (iOS)
//
//  Created by ozgur ersil on 15.08.2022.
//

import Foundation


class MushroomAdditionDecotator: AdditionDecotator {
    
    private let order:Order
    private let price:Double = 0.7
    private let name:String = "Mushroom"
    init(order:Order){
        self.order = order
    }
    func cost() -> Double {
        return self.order.cost() + price
    }
    
    func description() -> String {
        return "\(self.order.description()) with \(self.name)"
    }

}
