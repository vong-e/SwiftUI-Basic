//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/14/24.
//

import SwiftUI

struct TransitionBasic: View {
    // property
    @State var showTransition:  Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height / 2)
//                    .opacity(showTransition ? 1.0 : 0)
                
                // 1번. move transtion
//                    .transition(.move(edge: .bottom))
                // 2번. opacity transition 위에서 준 opcaity와 같은 효과
//                    .transition(.opacity)
                // 3번 scale tansition
//                    .transition(.scale)
                // 4번 asymetric transition - 시작점, 끝점을 custom으로 정해주기 때문에 비대칭 transtion이라고 함
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBasic()
}
