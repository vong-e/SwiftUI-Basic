//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/17/24.
//

import SwiftUI

struct NavigationBasic: View {
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    // destination: 목적지. 어디 페이지로 이동할꺼냐
                    SecondNavigationView()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                }
            } // : VStack
            // navigationTitle - 상단 페이지 제목
            .navigationTitle("페이지 제목")
            // navigationBarTitleDisplayMode - 상단 페이지 제목 스타일
            // .automatic: 자동, inline - 상단에 자겍, large: leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.automatic)
            // .navigationBarHidden - 네비게이션 타이틀, 바를 감춤
//            .navigationBarHidden(true)
            
            // navigationBarItems - 상단 좌우에 icon, text, button을 사용해서 나타낼 수 있음
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                }))
        } // : NavigationView
        .sheet(isPresented: $showSheet, content: {
            ZStack {
                // background
                Color.green.ignoresSafeArea()
                
                // content
                    .font(.largeTitle)
                Text("설정 페이지 입니다.")
            }
        })
    }
}

#Preview {
    NavigationBasic()
}
