//
//  FruitViewModel.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 7/2/24.
//

import Foundation

class FruitViewModel: ObservableObject {
    // property
    
    // published wrapper는 @State와 비슷하게 상태값을 선언하는데, class 안에서는 @Published를 사용한다는 점이 다름
    // @Published 는 Friut 배열의 값이 View에서 변경이 되면 FruitViewModel에서 새로운 변경사항을 알아차려서 변경함
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    // init
    init() {
        getFruit()
    }
    
    // funciton
    
    // Fruit 생성하고 Array에 추가하는 함수
    func getFruit() {
        // fruit의 값 선언
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 2)
        let fruit3 = FruitModel(name: "바나나", count: 80)
        
        // 3초 딜레이 후 FriutArray에 선언된 값을 집어넣음
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        })
    }
    
    // FruitArray에서 값을 삭제하는 함수
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}
