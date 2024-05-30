//
//  UserModelBasicView.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 5/30/24.
//

import SwiftUI

struct UserModelBasicView: View {
    // property
    @State var users: [UserModel] = [
        UserModel(displayName: "철수", userName: "철수123", followerCount: 100, isChecked: true),
        UserModel(displayName: "영희", userName: "영희사랑", followerCount: 55, isChecked: false),
        UserModel(displayName: "길동", userName: "홍길동", followerCount: 300, isChecked: false),
        UserModel(displayName: "한나", userName: "황한나", followerCount: 80, isChecked: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 20) {
                        // uuiid 출력
//                        Text(user.id)
                        
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } // :VStack
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Follwers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } // :VStack
                    } // :HStack
                    .padding(.vertical, 10)
                } // :Loop
            } // :List
        } // :Navigation
        .navigationTitle("회원 리스트")
    }
}

#Preview {
    UserModelBasicView()
}
