//
//  StepperBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 5/7/24.
//

import SwiftUI

struct StepperBasic: View {
    // property
    @State var stepperValue: Int = 0
    @State var widthChange: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("기본 Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            Divider()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthChange, height: 100)
            
            Stepper("직사각형 너비 변화") {
                // + 누를 때 변화되는 것
                differentWidth(amount: 20)
            } onDecrement: {
                // - 누를 때 변화
                differentWidth(amount: -20)
            }
        } // :VStack
    }
    
    func differentWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthChange += amount
        }
    }
}

#Preview {
    StepperBasic()
}
