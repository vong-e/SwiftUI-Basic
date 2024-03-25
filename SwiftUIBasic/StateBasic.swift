//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/26/24.
//

import SwiftUI

struct StateBasic: View {
    // property
    @State var backgroundColor: Color = .green
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("카운트: \(count)")
                
                HStack(spacing: 20) {
                    Button {
                        // action
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        count += 1
                    } label: {
                        Text("1번 버튼")
                    }
                    
                    Button {
                        // action
                        backgroundColor = .yellow
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    StateBasic()
}
