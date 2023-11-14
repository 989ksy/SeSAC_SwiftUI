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
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            Text("NEXFLIX")
                .font(.title)
                .fontWeight(.black)
                .foregroundStyle(.red)
            
            
        }//ZStack
        
    }//body
    
}//view

#Preview {
    ContentView()
}
