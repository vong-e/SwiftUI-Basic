//
//  SheetBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/15/24.
//

import SwiftUI

struct SheetBasic: View {
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            // Background
            Color.green.ignoresSafeArea()
            
            // Content
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.gray)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            })
            .sheet(isPresented: $showSheet, content: {
                SheetBasic2()
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SheetBasic2()
//            })
        }
    }
}

#Preview {
    SheetBasic()
}
