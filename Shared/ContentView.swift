//
//  ContentView.swift
//  Shared
//
//  Created by ozgur ersil on 15.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var storeViewModel:StoreViewModel = StoreViewModel()
    
    var body: some View {
        VStack{
            Text("I want \n\(storeViewModel.info)")
                .font(.caption)
                .multilineTextAlignment(.center)
            HStack{
                ForEach(storeViewModel.allMainDishes) { food in
                    FoodUI(imageName: food.image, name: food.mainDish.description(), isSelected:storeViewModel.isSelectedFood(food: food)).onTapGesture {
                        storeViewModel.mainDishTapped(food: food)
                    }
                }
            }.padding(.vertical,20)
            VStack{
                ForEach(storeViewModel.allAddOns) { addOn in
                    VStack{
                        AddOnUI(name: addOn.name,isSelected: addOn.isSelected).onTapGesture {
                            storeViewModel.addOnTapped(addOn: addOn)
                        }
                    }.opacity(addOn.isSelected ? 1 : 0.5)
                }
            }.opacity(storeViewModel.selectedMainOrder != nil ? 1 : 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
