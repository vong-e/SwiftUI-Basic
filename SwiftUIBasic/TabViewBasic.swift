//
//  TabViewBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 5/12/24.
//

import SwiftUI

struct TabViewBasic: View {
    // property
    @State var initPageNumber: Int = 0
    
    var body: some View {
        // selection: TabView가 어떤 페이지를 가르키는지 설정
        TabView(selection: $initPageNumber,
                content:  {
            HomeView(selectedTab: $initPageNumber)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            Text("둘러보기 화면")
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            Text("프로필 화면")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(2)
        })
        .accentColor(.red)
    }
}

#Preview {
    TabViewBasic()
}

// HomeView
struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            // background
            Color.red.edgesIgnoringSafeArea(.top)
            
            // foreground
            VStack(spacing: 20) {
                Text("홈 화면")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("프로필 화면 이동")
                        .font(.headline)
                        .padding(20)
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                })
            }
        } // :ZStack
    }
}
