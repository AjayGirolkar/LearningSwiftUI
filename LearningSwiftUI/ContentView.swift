//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Ajay Girolkar on 22/05/21.
//

import SwiftUI

struct ContentView: View {
    @State var isMenuDisplayed: Bool = true
    @ObservedObject var orderModel:OrderModel

    var body: some View {
//        NavigationView {
//            Form {
                VStack() {
                    //IntroductonHeaderView()
                    Button(action: {
                        self.isMenuDisplayed.toggle()
                    }, label: {
                        PageTitleView(title: "Order pizza", isDisplayingOrders: self.isMenuDisplayed)
                    })
                    OrderView(orderModel: orderModel)
                        .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
                    Spacer()
//                    NavigationLink(
//                        destination: SecondNavigationView(),
//                        label: {
//                            Text("Continue")
//                                .padding()
//                                .background(Color.red, alignment: .center)
//                                .foregroundColor(.white)
//                                .cornerRadius(10)
//                                .font(.title2)
//                                .frame(maxWidth: .infinity)
//                        })
                }
//            }
            .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
//        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(orderModel: OrderModel())
                .environment(\.sizeCategory, .accessibilityMedium)
            ContentView(orderModel: OrderModel())
                .colorScheme(.dark)
                .background(Color.black)
                .previewDevice("iPAD Pro 9.7-Inch)")
        }
    }
}
