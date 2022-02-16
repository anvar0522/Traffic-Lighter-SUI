//
//  Circle.swift
//  Traffic Lighter SUI
//
//  Created by anvar on 16/02/22.
//

import SwiftUI

struct ColorCircle: View {
    var color: Color
    var opacity: CGFloat = 0.3
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 5)
            .opacity(opacity)
            
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1)
    }
}
