//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/22/24.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // 1.Padding 기본
            Text("Hello, World!")
                .background(.yellow)
                .padding() // 기본값 == .padding(.all, 15)와 같음
                .padding(.leading, 20) // CSS 기준 padding
                .background(.blue) // background가 어디에 있느냐에 따라 요소 안/밖의 간격을 나타냄
                .padding(.bottom, 20) // CSS 기준 margin
            
            Divider()
            
            // 2.Padding 응용
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 29)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다.안녕하세요 헬로우 월드에 오신 여러분 환영합니다.안녕하세요 헬로우 월드에 오신 여러분 환영합니다.안녕하세요 헬로우 월드에 오신 여러분 환영합니다.안녕하세요 헬로우 월드에 오신 여러분 환영합니다.")
        }
        // VStack 범위 밖에서 padding 설정
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3),
                        radius: 10,
                        x: 10, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingBasic()
}
