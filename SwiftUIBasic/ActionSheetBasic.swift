//
//  ActionSheetBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/25/24.
//

import SwiftUI

struct ActionSheetBasic: View {
    // property
    @State var showActionSheet: Bool = false
    @State var resultActionSheet: String = ""
    
    var body: some View {
        VStack {
            // show result
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            // content
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                
                Text("Vong")
                
                Spacer()
                
                Button(action: {
                    // action
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
            } // :HStack
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1, contentMode: .fit)
            
            
            Spacer()
        } // :VStack
        .actionSheet(isPresented: $showActionSheet, content: {
            // actionSheet에 담기는 내용 ActionSheet type
            getActionSheet()
        })
    } // :Body
    
    func getActionSheet() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("공유하기")) {
            // action
            resultActionSheet = "공유 되었습니다."
        }
        
        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
            resultActionSheet = "신고 되었습니다."
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("삭제")) {
            resultActionSheet = "삭제 되었습니다."
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("ActionSheet 제목"),
            message: Text("ActionSheet 내용"),
            buttons: [
                shareButton,
                reportButton,
                deleteButton,
                cancelButton
            ])
    }
}

#Preview {
    ActionSheetBasic()
}
