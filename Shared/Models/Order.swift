//
//  Order.swift
//  com.decorator (iOS)
//
//  Created by ozgur ersil on 15.08.2022.
//

import Foundation


protocol Order {
    func cost()->Double
    func description()->String
}

protocol AdditionDecotator: Order{
    func cost()->Double
    func description()->String
}
