//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/15/24.
//

import SwiftUI

struct SheetBasic2: View {
    // property
    @Environment(\.presentationMode) var presentaionMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            // background
            Color.red.ignoresSafeArea()
            
            // contents
            Button(action: {
                // Sheet 닫기 action
                presentaionMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })
        }
    }
}

#Preview {
    SheetBasic2()
}
