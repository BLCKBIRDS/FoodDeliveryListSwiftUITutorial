//
//  DetailRow.swift
//  FoodDeliveryListSwiftUITutorial
//
//  Created by Andreas Schultz on 09.08.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import SwiftUI



struct DetailRow : View {
    
    var food: Food
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(food.title)
                    .font(.headline)
                    .padding(.top, 10)
                    Text("\(food.price) $")
                        .font(.caption)
                }
            Spacer()
            Button(action: {print("Order received")}) {
                    Text("ORDER")
                        //change
                        .foregroundColor(.white)
                }
                .frame(width: 80, height: 50)
                .background(Color.orange)
                .cornerRadius(10.0)
            }
            .padding()
    }
}

#if DEBUG
struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(food: foodData[0])
    }
}
#endif
