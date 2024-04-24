//
//  ContextMenuBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/24/24.
//

import SwiftUI

struct ContextMenuBasic: View {
    // property
    @State var statusText: String = ""
    @State var background: Color = .cyan
    
    var body: some View {
        VStack(spacing: 30) {
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Context Menu Test")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다.")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(30)
            .background(background)
            .cornerRadius(20)
            .contextMenu {
                Button {
                    statusText = "공유가 되었습니다"
                    background = .yellow
                } label: {
                    Label {
                        // title
                        Text("Share post")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
                
                Button {
                    statusText = "신고가 접수되었습니다"
                    background = .red
                } label: {
                    Label {
                        // title
                        Text("Report post")
                    } icon: {
                        Image(systemName: "exclamationmark.bubble")
                    }
                }
                
                Button {
                    statusText = "좋아요 추가"
                    background = .green
                } label: {
                    Label {
                        // title
                        Text("Share post")
                    } icon: {
                        Image(systemName: "hand.thumbsup")
                    }
                }
            } // :ContextMenu
        } // :VStack
    }
}

#Preview {
    ContextMenuBasic()
}
