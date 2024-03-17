//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/17/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Linear Gradient 선형 그라디언트
            Text("Linear Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]), 
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            // Radial Gradient 원형 그라디언트
            Text("Radial Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(colors: [Color.yellow, Color.purple],
                                   center: .bottomLeading,
                                   startRadius: 5,
                                   endRadius: 300)
                )
                .frame(width: 300, height: 200)
            
            // Angular Gradient 각진 그라디언트
            Text("Angular Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(colors: [.blue, .green],
                                    center: .topLeading,
                                    angle: .degrees(34))
                )
                .frame(width: 300, height: 200)
        }
    }
}

#Preview {
    GradientBasic()
}
