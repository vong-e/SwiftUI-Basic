//
//  TextFieldBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/28/24.
//

import SwiftUI

struct TextFieldBasic: View {
    // property
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // TextField는 한줄, 적은양의 text입력 시 사용
//                TextField("최소 2글자 이상 입력", text: $inputText)
////                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(.gray.opacity(0.3))
//                    .cornerRadius(19)
//                    .font(.headline)
                
                // TextEditor 여러줄, 긴 글의 text입력 시 사용
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.5))
                
                Button(action: {
                    // 이름이 2글자 이상일 때 saveText가 되도록 조건 설정
                    if isTextEnough() {
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? .blue : .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!isTextEnough())
                
                ForEach(userNameData, id: \.self) { item in
                    Text(item)
                }
                
                Spacer()
            } // :VStack
            .padding()
            .navigationTitle("당신의 이름은?")
        } // :Navigation
    } // :Body
    
    func isTextEnough() -> Bool {
        // 2개 이상의 텍스트가 되면 true, 아니면 false
        if inputText.count >= 2 {
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
}

#Preview {
    TextFieldBasic()
}
