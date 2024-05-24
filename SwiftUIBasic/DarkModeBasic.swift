//
//  DarkModeBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 5/25/24.
//

import SwiftUI

struct DarkModeBasic: View {
    // property
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // primary and secondary color는 자동으로 다크 모드일 때 색 변환 됨
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    
                    // 일반적인 black, white는 고정 값
                    Text("Black Color")
                        .foregroundColor(.black)
                    Text("White Color")
                        .foregroundColor(.white)
                    Text("Red Color")
                        .foregroundColor(.red)
                    
                    // Asest에서 adaptive라는 이름의 color set을 만든 후 light, dark mode에서 색을 설정할 수 있음
                    Text("Asset에서 Adaptive 색 설정")
//                        .foregroundColor(.adpative)
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    // @Environment 사용해서 coloeScheme 사용하기
                    Text("@Environment 사용해서 Adaptive 색 설정")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                }
            } // :Scroll
        } // :Navigation
    }
}

#Preview {
    DarkModeBasic()
}
