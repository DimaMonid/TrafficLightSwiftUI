//
//  ContentView.swift
//  TrafficLight
//
//  Created by Дима Монид on 4.04.25.
//

import SwiftUI

enum CurrentLight {
    case off, red, orange, green
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var currentLight: CurrentLight = .off
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                ColorCircleView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.4
                )
                ColorCircleView(
                    color: .orange,
                    opacity: currentLight == .orange ? 1 : 0.4
                )
                ColorCircleView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.4
                )
                
                Spacer()
                
                StartButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeLight()
                }
            }
            .padding()
        }
    }
    
    private func changeLight() {
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .orange
        case .orange: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
