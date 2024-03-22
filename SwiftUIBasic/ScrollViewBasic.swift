//
//  ScrollViewBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/22/24.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        // 1번 - 세로 스크롤
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}

struct ScrollViewBasic2: View {
    var body: some View {
        // 2번 - 가로 스크롤
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 300, height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic2()
}

struct ScrollViewBasic3: View {
    var body: some View {
        // 3번 - 혼합
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic3()
}
