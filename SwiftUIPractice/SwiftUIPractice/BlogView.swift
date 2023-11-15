//
//  BlogView.swift
//  SwiftUIPractice
//
//  Created by Seungyeon Kim on 11/15/23.
//

import SwiftUI

struct BlogView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(1..<60) { item in
                    
                    SampleImageView()
                        .frame(width: 150, height: 120)
                }
            }
        }
    }
}


struct SampleImageView : View {
    
    var body: some View {
        
        let url = URL(string: "https://picsum.photos/200")
        
        AsyncImage(url: url) { data in
            switch data {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .scaledToFit()
                    .frame(width: 180, height: 150)
            case .failure(let error):
                Image(systemName: "questionmark.app.fill")
            @unknown default:
                Image(systemName: "questionmark.app.fill")
            }
        }

        
    }
    
}



#Preview {
    BlogView()
}
