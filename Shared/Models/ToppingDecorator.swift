//
//  ToppingDecorator.swift
//  com.decorator (iOS)
//
//  Created by ozgur ersil on 15.08.2022.
//

import Foundation

class ToppingsAdditionDecotator: AdditionDecotator {
    
    private let order:Order
    private let price:Float = 0.8
    private let name:String = "toppings"
    
    init(order:Order){
        self.order = order
    }
    func cost() -> Float {
        return self.order.cost() + price
    }
    
    func description() -> String {
        return "\(self.order.description()) with \(self.name)"
    }
}
