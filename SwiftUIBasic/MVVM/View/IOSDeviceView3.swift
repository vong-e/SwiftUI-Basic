//
//  IOSDeviceView3.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 7/11/24.
//

import SwiftUI

struct IOSDeviceView3: View {
    // property
    // @StateObject에서 선언한 viewModel을 @EnvironmentObject를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            // background
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.iOSDeviceArray) { item in
                        Text(item.name)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel())
}
