//
//  RootTabView.swift
//  LearningSwiftUI
//
//  Created by Ajay Girolkar on 24/05/21.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ContentView(orderModel: OrderModel())
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            HistoryView()
                .tabItem {
                    Image(systemName: "book")
                    Text("History")
                }
        }
        .accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
