//
//  StartButtonView.swift
//  TrafficLight
//
//  Created by Дима Монид on 4.04.25.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 130, height: 60)
        .background(Color.blue)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.white, lineWidth: 4))
    }
}

#Preview {
    StartButtonView(title: "START", action: {})
}
