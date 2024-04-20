//
//  AlertBasic.swift
//  SwiftUIBasic
//
//  Created by vongvorovongvong on 4/20/24.
//

import SwiftUI

struct AlertBasic: View {
    // propety
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    @State var showAlert3: Bool = false
    @State var showAlert4: Bool = false
    
    @State var backgroundColor: Color = .yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: AlertCase? = nil
    
    enum AlertCase {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            // background
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                // 1
                Button(action: {
                    showAlert1.toggle()
                    print("showlaert: \(showAlert1)")
                }, label: {
                    Text("1번 alert")
                })
                .alert(isPresented: $showAlert1, content: {
                    Alert(title: Text("패스워드 에러 입니다. 다시 확인해주세요."))
                })
                
                // 2
                Button(action: {
                    showAlert2.toggle()
                }, label: {
                    Text("2번 alert")
                })
                .alert(isPresented: $showAlert2, content: {
                    getAlert2()
                })
                
                // 3
                HStack(spacing: 10) {
                    Button(action: {
                        alertTitle = "영상 업로드 에러"
                        alertMessage = "영상이 제대로 올라가지 않았습니다. 다시 확인해 주세요."
                        showAlert3.toggle()
                    }, label: {
                        Text("3번 alert 실패시")
                    })
                    
                    Button(action: {
                        alertTitle = "영상 업로드 성공"
                        alertMessage = "영상이 제대로 올라갔습니다."
                        showAlert3.toggle()
                    }, label: {
                        Text("3번 alert 성공시")
                    })
                } // :HStack
                .alert(isPresented: $showAlert3, content: {
                    getAlert3()
                })
                
                // 4
                HStack(spacing: 10) {
                    Button(action: {
                        alertType = .error
                        showAlert4.toggle()
                    }, label: {
                        Text("4번 alert 실패시")
                    })
                    
                    Button(action: {
                        alertType = .success
                        showAlert4.toggle()
                    }, label: {
                        Text("4번 alert 성공시")
                    })
                } // :HStack
                .alert(isPresented: $showAlert4, content: {
                    getAlert4()
                })
                
            } // :VStack
        } // :ZStack
    } // : Body
    
    func getAlert2() -> Alert {
        return Alert(title: Text("메세지 삭제"),
                     message: Text("정말 메세지 삭제 하시겠습니까?"),
                     primaryButton: .destructive(Text("Delete"), action: {
            backgroundColor = .red
        }),
                     secondaryButton: .cancel())
    }
    
    func getAlert3() -> Alert {
        return Alert(title: Text(alertTitle),
                     message: Text(alertMessage),
                     dismissButton: .default(Text("OK")))
    }
    
    func getAlert4() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("로그인에 성공했습니다."), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
                
            }))
        case .error:
            return Alert(title: Text("에러 발생 다시 확인하세요."), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .red
                
            }))
        default:
            return Alert(title: Text("에러"))
        }
    }
}

#Preview {
    AlertBasic()
}
