//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/31/24.
//

import SwiftUI

struct BindingBasic: View {
    // property
    @State var backgroundColor: Color = .green
    @State var title: String = "Binding Basic View"
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack {
                Text(title)
                
                // button
                // parameter로 @State 앞에 '$(달러사인)'를 붙여줌
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
