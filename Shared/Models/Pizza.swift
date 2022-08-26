//
//  Pizza.swift
//  com.decorator (iOS)
//
//  Created by ozgur ersil on 15.08.2022.
//

import Foundation


class Pizza: Order{
    func cost() -> Double {
        return 3.2
    }
    
    func description() -> String {
        return "Pizza"
    }
}
