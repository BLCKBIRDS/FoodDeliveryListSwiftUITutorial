//
//  ContentView.swift
//  FoodDeliveryListSwiftUITutorial
//
//  Created by Andreas Schultz on 09.08.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//


import SwiftUI



struct ContentView : View {
    var body: some View {
        NavigationView {
            List {
                //change
                NavigationLink(destination: DetailView(currentCategory: .burger)) {
                    CategoryView(imageName: "burger", categoryName: "BURGER")
                }
                NavigationLink(destination: DetailView(currentCategory: .pizza)) {
                    CategoryView(imageName: "pizza", categoryName: "PIZZA")
                }
                NavigationLink(destination: DetailView(currentCategory: .pasta)) {
                    CategoryView(imageName: "pasta", categoryName: "PASTA")
                }
                NavigationLink(destination: DetailView(currentCategory: .dessert)) {
                    CategoryView(imageName: "cake", categoryName: "DESSERTS")
                }
            }
                .navigationBarTitle(Text("Food Delivery"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct CategoryView : View {
    
    var imageName: String
    var categoryName: String
    
    var body: some View {
        return ZStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 150)
                .clipped()
                .cornerRadius(20.0)
            Spacer()
            Text(categoryName)
                .font(.custom("HelveticaNeue-Medium", size: 50))
                .foregroundColor(.white)
            }
                .padding(.top, 5)
                .padding(.bottom, 5)
    }
}
