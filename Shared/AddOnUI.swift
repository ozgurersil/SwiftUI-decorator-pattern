//
//  AddOnUI.swift
//  com.decorator
//
//  Created by ozgur ersil on 26.08.2022.
//

import SwiftUI

struct AddOnUI: View {
    let name:String
    let isSelected:Bool
    
    
    var body: some View {
        HStack{
            Text(self.name)
            Image(isSelected ? "selected" : "not-selected")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
        }.frame(width: 180, height: 50, alignment: .center)
        
    }
}

struct AddOnUI_Previews: PreviewProvider {
    static var previews: some View {
        AddOnUI(name: "Mushroom",isSelected: true)
    }
}
