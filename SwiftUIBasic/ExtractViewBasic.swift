//
//  ExtractViewBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/26/24.
//

import SwiftUI

struct ExtractViewBasic: View {
    // property
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    // Content
    var contentLayer: some View {
        VStack {
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            })
        }
    }
    
    // Function
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}
