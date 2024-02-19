//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 2/19/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // Font 사이즈를 title, body, footnote 등 정하면 responsive하게 사이즈 변경됨
            Text("Hello world!")
                .font(.title)
//                .fontWeight(.black)
                .bold() // == .fontWeight(.bold)
                .underline(true, color: .red)
                .italic()
                .strikethrough(true, color: .green)
            
            // 이 방법으로 하게 되면 text 크기를 지정할 수 있음. ex) font 12, 40, ... 단 고정식
            Text("Hello world2!".uppercased())
                .font(.system(size: 25, weight: .semibold, design: .serif))
            
            // multiline text alignment
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.leading)
                .foregroundStyle(.linearGradient(colors: [.yellow, .blue], startPoint: .leading, endPoint: .bottom))
        }
    }
}

#Preview {
    TextBasic()
}
