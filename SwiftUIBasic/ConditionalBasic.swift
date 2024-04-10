//
//  ConditionalBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/11/24.
//

import SwiftUI

struct ConditionalBasic: View {
    // property
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            // 로딩 버튼
            Button(action: {
                isLoading.toggle()
            }, label: {
                Text("로드 중...: \(isLoading.description)")
            })
            
            // 로딩 이미지
            if isLoading {
                ProgressView()
            }
            
            // 원형 버튼
            Button(action: {
                showCircle.toggle()
            }, label: {
                Text("원형 버튼: \(showCircle.description)")
            })
            
            // 사각형 버튼
            Button(action: {
                showRectangle.toggle()
            }, label: {
                Text("사각형 버튼: \(showRectangle.description)")
            })
            
            // 조건 1: 원형 버튼이 true일 때
            if showCircle {
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
            
            // 조건 2: 사각형 버튼이 true일 때
            if showRectangle {
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
            
            // 조건 3: 원형 버튼, 사각형 모두 false일 때
            if !showCircle && !showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 100)
            }
            
            // 조건 4: 원형 버튼 또는 사각형 버튼이 true
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.red)
                    .frame(width: 200, height: 100)
            }
            
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBasic()
}
