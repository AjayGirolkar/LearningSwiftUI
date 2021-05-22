//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Ajay Girolkar on 22/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("This is Ajay")
            Text("Hello, world!")
                .padding()
            Image("Surf Board")
            Spacer(minLength: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
