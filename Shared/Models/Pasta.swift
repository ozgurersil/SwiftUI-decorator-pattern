//
//  Pasta.swift
//  com.decorator (iOS)
//
//  Created by ozgur ersil on 15.08.2022.
//

import Foundation


class Pasta: Order{
    func cost() -> Float {
        return 2.4
    }
    
    func description() -> String {
        return "Pasta"
    }
}
