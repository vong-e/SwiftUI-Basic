//
//  BackgroundOverlayBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/19/24.
//

import SwiftUI

struct BackgroundOverlayBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // 1.Background
            Text("Hello, World!")
                .frame(width: 100, height: 100)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [.red, .blue]),
                                startPoint: .leading,
                                endPoint: .trailing)
                        )
                )
                .frame(width: 120, height: 120)
                .background(
                    Circle()
                        .fill(.red)
                )
            
            Divider()
            
            // 2.Overlay
            Circle()
                .fill(.pink)
                .frame(width: 100, height: 100)
                .overlay(
                    Text("1")
                        .font(.title)
                        .foregroundColor(.white)
                )
                .background(
                    Circle()
                        .fill(.purple)
                        .frame(width: 120, height: 120)
                )
            
            Divider()
            
            // 3.Background and overlay
            Rectangle()
                .frame(width: 200, height: 200)
                .overlay(
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                    , alignment: .leading
                )
                .background(
                    Rectangle()
                        .fill(.red)
                        .frame(width: 250, height: 250)
                )
                .padding()
            
            Divider()
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.cyan, Color.blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .blue, radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("2")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                                .shadow(color: .red, radius: 10, x: 5, y: 5)
                            , alignment: .bottomTrailing
                        )
                )
                .padding()
        }
    }
}

#Preview {
    BackgroundOverlayBasic()
}
