//
//  SwiftUIView.swift
//  com.decorator
//
//  Created by ozgur ersil on 26.08.2022.
//

import SwiftUI

struct FoodUI: View {
    let imageName:String
    let name:String
    var body: some View {
        VStack{
        Image(imageName)
            .resizable()
            .scaledToFit()
            Text(name).multilineTextAlignment(.center)
        }.frame(width: 150, height: 150, alignment: .center)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FoodUI(imageName:"pizza",name: "Pizza")
    }
}
