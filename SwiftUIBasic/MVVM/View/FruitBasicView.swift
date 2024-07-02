//
//  FruitBasicView.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 7/2/24.
//

import SwiftUI

struct FruitBasicView: View {
    // property
    
    // @ObservedObject 사용해서 ViewModel 객체화 하기 -> 주로 SubView에서 사용 (부모 View에서 값을 넘겨받았을 경우)
//    @ObservedObject var fruitViewModel = FruitViewModel()
    
    // @StateObject 사용하여 ViewModel 객체화 하기 -> View가 처음 생성, 초기화 할 때 (부모 View에서 주로 사용)
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack(spacing: 20) {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text("\(fruit.name)")
                                .font(.headline)
                                .bold()
                        } // :HStack
                    } // :Loop
                }
            } // :List
//            .onAppear {
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(
                trailing: NavigationLink(
                    destination: SecondScreen(fruitViewModel: fruitViewModel),
                    label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    })
            )
            .navigationTitle("과일 리스트")
        } // :Naviagtion
    }
}

// Second Screen
struct SecondScreen: View {
    // property
    @ObservedObject var fruitViewModel = FruitViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            // background
            Color.green.ignoresSafeArea()
            
            // foreground
            VStack(spacing: 20) {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                } // :Loop
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("뒤로가기")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                })
            } // :VStack
        } // :ZStack
    }
}

#Preview {
    FruitBasicView()
}
