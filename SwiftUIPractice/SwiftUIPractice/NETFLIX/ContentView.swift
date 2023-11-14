//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Seungyeon Kim on 11/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.black
            
            VStack {
                    Image("야구")
                        .resizable()
                        .frame(width: .infinity, height: 680)
                        .ignoresSafeArea()
                Spacer()
            }
            
            Image("background")
                .resizable()
                .ignoresSafeArea()
            
            Spacer()
            
            VStack {
                
                HStack {
                    Text("N")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.white)
                        .padding(5)
                    Spacer()
                    
                    Text("TV프로그램")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                        .padding()
                    
                    Text("영화")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                        .padding()
                    
                    Text("내가 찜한 콘텐츠")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                        .padding()
                }
                
                Spacer()
                
                HStack {
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        VStack{
                            Image("check")
                            Text("내가 찜한 컨텐츠")
                                .foregroundStyle(.white)
                        }
                    })
                    .padding()
                    
                    Image("play_normal")
                        .padding(30)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        VStack{
                            Image("info")
                            Text("정보")
                                .foregroundStyle(.white)
                        }
                    })
                    .padding(20)
                }
                .padding()
                
                HStack {
                    Text("미리보기")
                        .foregroundStyle(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.leading, 20)
                    Spacer()
                }
                
                HStack {
                    Image("스토브리그")
                        .resizable()
                        .frame(width: 120, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.green, lineWidth: 3))
                    
                    Image("머니볼")
                        .resizable()
                        .frame(width: 120, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.blue, lineWidth: 3))

                    Image("퍼펙트게임")
                        .resizable()
                        .frame(width: 120, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.red, lineWidth: 3))

                }
            }
            
            
            

            
        }
        
    }
}

#Preview {
    ContentView()
}
