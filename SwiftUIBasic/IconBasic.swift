//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/17/24.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.fill.badge.plus")
                .resizable()
            // render mode 에서 original로 하게되면 실제 color에서 multi color로 변경되게 됨
            // 즉 고유 값 컬러로 변경되어서 다른 color로 변경하더라도 변경되지 않는 color가 됨
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    IconBasic()
}
