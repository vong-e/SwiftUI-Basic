//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/25/24.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack {
            // background
            Color.blue
                .ignoresSafeArea()
            
            // content
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    IgnoreSafeAreaBasic()
}

struct IgnoreSafeAreaBasic2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay {
                            Text("\(index) 번 리스트")
                        }
                }
            }
        }
        .background(
            Color.blue
        )
    }
}

#Preview {
    IgnoreSafeAreaBasic2()
}
