//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/24/24.
//

import SwiftUI

struct LazyGridBasic: View {
    // LazyVGrid
    // columns 의 개수를 3개로 설정
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    var body: some View {
        // 1 - LazyVGrid
        ScrollView {
            // Hero 부분 (위에 사진 부분)
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                // Section 1
                Section(header: Text("Sectionm 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.gray)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index)번")
                            )
                    }
                } //: Section 1
                
                // Section 2
                Section(header: Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.green)
                            .frame(height: 150)
                            .overlay(
                                Text("\(index)번")
                            )
                    }
                } //: Section 2
            }
        } //: 1번
    }
}

#Preview {
    LazyGridBasic()
}

struct LazyGridBasic2: View {
    // LazyHGrid
    // title 을 1000개 변수를 생성
    // ["목록 1", "목록 2", ... "목록 1000"] ] [String]
    let title: [String] = Array(1...1000).map { "목록 \($0)" }
    
    // 화면 그리드 형식으로 채워줌
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
    ]
    
    var body: some View {
        // 2 - LazyHGrid
        // ScrollView Horizontal
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(.blue)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    LazyGridBasic2()
}
