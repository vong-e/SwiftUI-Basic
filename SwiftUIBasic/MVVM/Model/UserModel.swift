//
//  UserModel.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 5/30/24.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
