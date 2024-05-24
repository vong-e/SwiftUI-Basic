//
//  OnTabGesture.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 5/25/24.
//

import SwiftUI

struct OnTabGesture: View {
    // property
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            // Rectangle 박스
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            // 1. 일반적인 Button
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(.blue)
                    .cornerRadius(25)
            }
            
            // 2. onTabGesture 한 번 클릭 시 실행
            Text("2. onTabGesture 한 번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(.blue)
                .cornerRadius(25)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTabGesture 두 번 클릭 시 실행
            Text("3. onTabGesture 두 번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(.blue)
                .cornerRadius(25)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }

            Spacer()
        } // :VStack
        .padding(40)
    }
}

#Preview {
    OnTabGesture()
}
