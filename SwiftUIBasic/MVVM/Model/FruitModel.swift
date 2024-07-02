//
//  FruitModel.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 7/2/24.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
