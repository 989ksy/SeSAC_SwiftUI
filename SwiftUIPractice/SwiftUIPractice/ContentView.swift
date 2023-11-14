//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Seungyeon Kim on 11/14/23.
//

//Netflix Login

import SwiftUI

struct ContentView: View {
    
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
                Text("NEXFLIX")
                    .font(.title)
                    .fontWeight(.black)
                .foregroundStyle(.red)
                
                TextField("", text: $email, prompt: Text("이메일 주소 또는 전화번호").foregroundColor(Color.white))
                    .padding(10)
                    .background(Color.gray)
                    .foregroundStyle(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.horizontal)
                
                Button(action: {
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
                
            }
            
                
            
        }//ZStack
        
    }//body
    
}//view

#Preview {
    ContentView()
}
