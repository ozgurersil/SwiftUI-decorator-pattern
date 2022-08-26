//
//  PizzaStoreViewModel.swift
//  com.decorator (iOS)
//
//  Created by ozgur ersil on 15.08.2022.
//

import Combine
import Foundation



class StoreViewModel: ObservableObject {
    
    @Published var allMainDishes:[Food]
    @Published var allAddOns:[AddOns]
    @Published var selectedOrder:Order? = nil
    @Published var info:String = ""
    
    var selectedMainOrder:Order? = nil
    var addedAddOnTypes:[AddOnsTypes] = []
    
    init(){
        self.allMainDishes = [
            Food(mainDish: Pizza(), image: "pizza",dishType: .pizza),
            Food(mainDish: Pasta(), image: "pasta",dishType: .pasta)
        ]
        
        self.allAddOns = [
            AddOns(name: "mushroom", addOnType: .mushroom,isSelected: false),
            AddOns(name: "corn",addOnType: .corn,isSelected: false),
            AddOns(name: "toppings",addOnType: .toppings,isSelected: false)
        ]
    }
    
    func mainDishTapped(food:Food){
        self.selectedOrder = createOrder(dishType: food.dishType)
        self.selectedMainOrder = self.selectedOrder;
        self.allAddOns.forEach { addOn in
            addOn.isSelected = false
        }
        updateDescription()
    }
    
    func createOrder(dishType:MainDish)->Order{
        switch dishType {
        case .pizza:
            return Pizza()
        case .pasta:
            return Pasta()
        }
    }
    
    func createAddOn(addOnType:AddOnsTypes, order:Order)->AdditionDecotator{
        switch addOnType {
        case .mushroom:
            return MushroomAdditionDecotator(order: order)
        case .corn:
            return CornAdditionDecotator(order: order)
        case .toppings:
            return ToppingsAdditionDecotator(order: order)
        }
    }
    
    func isSelectedFood(food:Food)->Bool{
        if let selectedMainOrder = selectedMainOrder {
            return selectedMainOrder.description() == food.mainDish.description()
        }
        return false
    }
    
    func addOnTapped(addOn:AddOns){
        if !addOn.isSelected && !addedAddOnTypes.contains(addOn.addOnType){
            addedAddOnTypes.append(addOn.addOnType)
            if let selectedOrder = self.selectedOrder{
                self.selectedOrder = createAddOn(addOnType: addOn.addOnType, order: selectedOrder)
            }
            
        }else{
            if let index = addedAddOnTypes.firstIndex(of: addOn.addOnType) {
                addedAddOnTypes.remove(at: index)
            }
            self.selectedOrder = self.selectedMainOrder
            addedAddOnTypes.forEach { addOnType in
                if let selectedOrder = selectedOrder {
                    self.selectedOrder = createAddOn(addOnType: addOnType, order:selectedOrder)
                }
            }
        }
        addOn.isSelected = !addOn.isSelected
        updateDescription()
    }
    
    func updateDescription(){
        if let selectedOrder = selectedOrder {
            let cost:Float = selectedOrder.cost()
            self.info = "\(selectedOrder.description()) \n cost: \(String(format:"%.2f",cost))$"
        }
    }
    
}
