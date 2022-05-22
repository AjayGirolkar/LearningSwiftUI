//
//  OrderView.swift
//  LearningSwiftUI
//
//  Created by Ajay Girolkar on 22/05/21.
//

import SwiftUI

struct OrderView: View {
    var menuList = MenuModel().menu
    var orderModel:OrderModel

    var body: some View {
        HStack {
            Text("Menu")
        }
        .frame(maxWidth: .infinity)
        .background(Color("G1"))
        .padding()
        NavigationView{
        List(menuList){ item in
            NavigationLink(
                destination: MenuDetailView(orderModel: orderModel, menuItem: item),
                label: {
                    MenuRowView(menuItem: item)
                        .listRowInsets(EdgeInsets())
                        .layoutPriority(1)
                })
            
        }
        }
        .border(Color.gray)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orderModel: OrderModel())
    }
}

struct MenuRowView: View {
    var menuItem: MenuItem = testMenuItem
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Image("\(menuItem.id)_100w")
                    .clipShape(Capsule())
               
                VStack(alignment: .leading) {
                    Text(menuItem.name)
                        .foregroundColor(.blue)
                   // Spacer()
                    Text("$20.00")
                        .foregroundColor(.red)
                   // Spacer()
                    HStack {
                        RatingsView(count: menuItem.rating)
                    }
                    Button("Buy") {
                        print("Buy button clicked: ")
                    }
                }.padding()
            }.padding()
            Text(menuItem.description)
        }
        .padding()
    }
}
