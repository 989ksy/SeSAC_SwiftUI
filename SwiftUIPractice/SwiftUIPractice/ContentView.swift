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
        @State var isOn : Bool = true
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text("NEXFLIX")
                    .font(.title)
                    .fontWeight(.black)
                .foregroundStyle(.red)
                
                TextField("이메일 주소 또는 전화번호", text: $email)
                    .textFieldStyle(.roundedBorder)                    .background(.gray)
                    .foregroundStyle(.black)
//                    .padding(30)
                    .frame(width: 320, height: 50)
                
                Button(action: {}, label: {
                    Text("회원가입")
                })
                .padding(5)
                .frame(width: 320, height: 40)
                .background(.white)
                .foregroundStyle(.black)
                .fontWeight(.black)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                
                HStack {
//                    Text("추가 정보 입력")
//                        .foregroundStyle(.white)
//                        .padding(10)
                    
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
