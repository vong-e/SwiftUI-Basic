//
//  ToggleBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/28/24.
//

import SwiftUI

struct ToggleBasic: View {
    // property
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            HStack {
                Text("로그인 상태")
                Text(toggleIsOn ? "온라인" : "오프라인")
            } //: HStack
            
            Toggle(isOn: $toggleIsOn,
                   label: {
                Text("로그인 상태 선택")
            }) // :Toggle
            .toggleStyle(SwitchToggleStyle(tint: .red))
            Spacer()
        } //: VStack
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBasic()
}
