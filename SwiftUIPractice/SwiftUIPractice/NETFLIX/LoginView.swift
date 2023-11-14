//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Seungyeon Kim on 11/14/23.
//

//Netflix Login

import SwiftUI

struct LoginView: View {
    
    @State var isPresented = false
    
    var body: some View {
        
        @State var email : String = ""
        @State var password : String = ""
        @State var nickname : String = ""
        @State var location : String = ""
        @State var code : String = ""
        @State var isOn : Bool = true

        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text("NETFLIX")
                    .font(.title)
                    .fontWeight(.black)
                .foregroundStyle(.red)
                
                Spacer()
                
                textfieldRequirementView(text: $email, placeHolder: "이메일 주소 또는 전화번호")
                textfieldRequirementView(text: $password, placeHolder: "비밀번호")
                textfieldRequirementView(text: $nickname, placeHolder: "닉네임")
                textfieldRequirementView(text: $location, placeHolder: "위치")
                textfieldRequirementView(text: $code, placeHolder: "추천 코드 입력")
                
                Button(action: {
                    isPresented = true
                    print("logined!")
                }, label: {
                    Text("회원가입")
                        .padding(.horizontal, 150)
                        .padding(.vertical, 15)
                        .foregroundStyle(.black)
                        .fontWeight(.black)
                        .background(.white)
                })
                .clipShape(RoundedRectangle(cornerRadius: 5))
                
                HStack {
                    
                    Toggle("추가 정보 입력 ", isOn: $isOn)
                        .toggleStyle(SwitchToggleStyle(tint: Color.red))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 35)
                }
                
                Spacer()
                
            }
        
        }//ZStack
        .fullScreenCover(isPresented: $isPresented, content: {
            ContentView()
        })
        
    }//body
    
}//view

#Preview {
    LoginView()
}

struct textfieldRequirementView: View {
    
    @Binding var text : String
    let placeHolder : String
    
    var body: some View {

        TextField("", text: $text, prompt: Text(placeHolder).foregroundColor(Color.white))
            .padding(10)
            .background(Color.gray)
            .foregroundStyle(.black)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .padding(.horizontal)
            .multilineTextAlignment(.center)
    }
}
