//
//  ForEachLoopBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 3/22/24.
//

import SwiftUI

struct ForEachLoopBasic: View {
    // 변수 생성
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        VStack {
            // 1번
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인데스 번호 : \(index)")
                }
            }
            
            Divider()
            
            // 2번
            ForEach(data, id: \.self) { item in
                Text(item)
            }
        }
    }
}

#Preview {
    ForEachLoopBasic()
}
