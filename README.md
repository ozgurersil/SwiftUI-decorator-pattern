# SwiftUI Decorator Pattern

Swift decorator pattern explained in real MVVM SwiftUI project simulating a food store with different main foods and extra flavours to add or remove easily without changing the core object.

## How decorating works
```
let pizza:Order = Pizza()
print(pizza.cost()) --> //3.20$
```

# Decorating pizza with mushroom
```
let mushroomPizza:Order = MushroomAdditionDecotator(pizza)
print(mushroomPizza.cost()) --> //3.90$
```

# Decorating a decorator - Mushroom pizza with corn addition
```
let mushroomPizzaWithCorn:Order = CornAdditionDecotator(mushroomPizza)
print(mushroomPizzaWithCorn.cost()) --> //4.30$
```

## Running locally
- Clone the repository 
- Run com.decorator.xcodeproj in Xcode


## Screens

![Screen Shot 2022-08-26 at 16 46 01](https://user-images.githubusercontent.com/182851/186918210-ec91b281-2f06-4523-8a11-6402d4d5aadc.png)

![Screen Shot 2022-08-26 at 16 46 09](https://user-images.githubusercontent.com/182851/186918236-ae7c495c-ea84-489f-9866-a0472006e2df.png)
