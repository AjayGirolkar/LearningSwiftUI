//
//  OrderView.swift
//  LearningSwiftUI
//
//  Created by Ajay Girolkar on 22/05/21.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        Text("Order Pizza")
            .font(.title)
        Text("Menu")
        Spacer()
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/){ item in
            PizzaItems()
        }
        .border(Color.gray)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

struct PizzaItems: View {
    var body: some View {
        HStack {
            Image("1_100w")
                .scaledToFill()
            Spacer()
            Text("Chicken Pizza")
                .foregroundColor(.blue)
            Spacer()
            Text("$20.00")
                .foregroundColor(.red)
            Button("Buy") {
                print("Buy button clicked: ")
            }
        }
    }
}
