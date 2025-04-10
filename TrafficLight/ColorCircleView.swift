//
//  ColorCircleView.swift
//  TrafficLight
//
//  Created by Дима Монид on 4.04.25.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(.white, lineWidth: 4))
    }
}

#Preview {
    ColorCircleView(color: .red, opacity: 1)
}
