//
//  IntroductonHeaderView.swift
//  LearningSwiftUI
//
//  Created by Ajay Girolkar on 22/05/21.
//

import SwiftUI

struct IntroductonHeaderView: View {
    var body: some View {
        Text("This is Ajay")
            .font(.largeTitle)
        Spacer()
        Text("This is Swift UI Demo for all")
            .fontWeight(.semibold)
            .italic()
            .underline()
        Image("Surf Board")
            .resizable()
            .scaledToFit()
        Spacer()
        
    }
}

struct IntroductonHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductonHeaderView()
    }
}
