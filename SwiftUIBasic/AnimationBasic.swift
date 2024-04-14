//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/14/24.
//

import SwiftUI

struct AnimationBasic: View {
    // property
    @State var isAnimated: Bool = false
    
    var body: some View {
        // 1번 view
        VStack {
            Button(action: {
                withAnimation(.default
//                    .repeatCount(5)
//                    .repeatForever()
//                    .delay(1)
                ) {
                    isAnimated.toggle()
                }
            }, label: {
                Text("Button")
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBasic()
}

struct AnimationBasic2: View {
    // property
    @State var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    var body: some View {
        // 2번 view - Speed에 따른 animation
        VStack {
            Button(action: {
                isAnimated.toggle()
            }, label: {
                Text("Button")
            })
            
            // linear animation : 처음부터 끝까지 속도가 일정한 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 0, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            // easeIn animation : 처음에 느렸다가 끝에 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 0, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // easeOut animation : 처음엔 빨랐다가 끝에 느려지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 0, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            // easeInOut animation : 처음과 끝에 느려지고, 중간 부분이 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 0, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
        }
    }
}

#Preview {
    AnimationBasic2()
}

struct AnimationBasic3: View {
    // property
    @State var isAnimated: Bool = false
    
    let timing: Double = 5.0
    
    var body: some View {
        // 3번 view - Spring animation
        VStack {
            // response: 단일 진동을 완료하는데 걸리는 시간
            // damping: 얼마나 빠르게 스프링이 정지하는 속도제어, 만약 0일때 영원히 멈추지 않음 (0~1 사이)
            // blendDuration: 다른 애니메이션 간의 전환 길이 제어
            Button(action: {
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 0)) {
                        isAnimated.toggle()
                    }
            }, label: {
                Text("Button")
            })
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
        }
    }
}

#Preview {
    AnimationBasic3()
}
