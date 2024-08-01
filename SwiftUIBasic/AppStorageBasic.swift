//
//  AppStorageBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 8/1/24.
//

import SwiftUI

struct AppStorageBasic: View {
    // property
    // 일반적인 Data
    @State var generalname: String?
    
    // App Storage를 사용하면 앱을 다시 열 때 자동으로 키에서 이름을 가져옵니다.
    @AppStorage("name") var appStorageName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            // 일반적인 State
            VStack(spacing: 10) {
                Text("@State로 저장")
                    .font(.headline)
                
                Text(generalname ?? "당신의 이름은 무엇인가요?")
                
                Button {
                    generalname = "Vong"
                } label: {
                    Text("이름 불러오기")
                }
            }
            .padding()
            .border(.green)
             
            // @AppStorage tkdyd
            VStack(spacing: 10) {
                Text("@AppStorage로 저장")
                    .font(.headline)
                
                Text(appStorageName ?? "당신의 이름은 무엇인가요?")
                
                Button {
                    appStorageName = "Vong"
                } label: {
                    Text("이름 불러오기")
                }
            }
            .padding()
            .border(.red)
        } // :VStack
    }
}

#Preview {
    AppStorageBasic()
}
