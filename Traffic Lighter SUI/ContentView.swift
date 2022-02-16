//
//  ContentView.swift
//  Traffic Lighter SUI
//
//  Created by anvar on 16/02/22.
//

import SwiftUI
enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var currentLightning = CurrentLight.red
    @State private var redLightOpacity = 0.3
    @State private var orangeLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    @State private var buttonTitle = "START"
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
        VStack(spacing: 100){
            ColorCircle(color: .red, opacity:(redLightOpacity))
            ColorCircle(color: .orange, opacity: orangeLightOpacity)
            ColorCircle(color: .green, opacity:(greenLightOpacity))
            Spacer()
            
            Button {
                buttonTitle = "NEXT"
                
                switch currentLightning {
                case .red:
                    greenLightOpacity = 0.3
                    redLightOpacity = 1
                    orangeLightOpacity = 0.3
                    currentLightning = .yellow
                case .yellow:
                    greenLightOpacity = 0.3
                    redLightOpacity = 0.3
                    orangeLightOpacity = 1
                    currentLightning = .green
                case .green:
                    greenLightOpacity = 1
                    redLightOpacity = 0.3
                    orangeLightOpacity = 0.3
                    currentLightning = .red
                }
            } label: {
                Text(buttonTitle)
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .foregroundColor(.white)
            .padding()
}
        .padding()
    }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
