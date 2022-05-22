//
//  MenuDetailView.swift
//  Pizza
//
//  Created by Steven Lipton on 9/2/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI
///A `View`for entering in an order. Takes basic information about the order from `menuItem`
struct MenuDetailView: View {
    @ObservedObject var orderModel: OrderModel
    @State var didOrderDetails:Bool = false
    var menuItem:MenuItem

    var formattedPrice:String{
        String(format:"%3.2f",menuItem.price)
    }
    func addItem(){
        orderModel.add(menuID: menuItem.id)
        didOrderDetails = true
    }
    

    
    var body: some View {
        VStack {
            PageTitleView(title: menuItem.name)
            SelectedImageView(image: "\(menuItem.id)_250w")
                .padding(5)
                .layoutPriority(3)
            
            Text(menuItem.description)
                .lineLimit(5)
                .padding()
                .layoutPriority(3)
                
            Spacer()
            HStack{
                Spacer()
                Text("Pizza size")
                Text("Small")
            }
            .font(.headline)
            HStack{
                Text("Quantity:")
                Text("1")
                    .bold()
                Spacer()
            }
            .padding()
            HStack{
                Text("Order:  \(formattedPrice)")
                    .font(.headline)
                Spacer()
                Text("Order total: \(formattedPrice)" )
                    .font(.headline)
            }
            .padding()
            HStack{
                Spacer()
                Button(action: addItem) {
                   Text("Add to order")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    .background(Color("G4"))
                        .foregroundColor(Color("IP"))
                        .cornerRadius(5)
                }
//                .alert(isPresented: $didOrderDetails, content: {
//                        Alert(title: Text("Pizza ordered"), message: Text("You ordered a" + menuItem.name))
//                })
                .sheet(isPresented: $didOrderDetails, content: {
                    ConfirmView(menuID: self.menuItem.id, orderModel: orderModel, isPresented: self.$didOrderDetails)
                })
                Spacer()
            }
            .padding(.top)
            Spacer()
        }
        
    }
}

struct MenuDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetailView(orderModel: OrderModel(), menuItem: testMenuItem)
    }
}
