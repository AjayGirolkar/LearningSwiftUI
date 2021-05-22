//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Ajay Girolkar on 22/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
           IntroductonHeaderView()
            OrderView()
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Continue")
                    .padding()
                    .background(Color.red, alignment: .center)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.title2)
            }).frame(maxWidth: .infinity)
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        ContentView()
        ContentView()
            .background(Color.black)
            .previewDevice("iPAD Pro 9.7-Inch)")
        }
    }
}
