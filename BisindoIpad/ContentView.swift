//
//  ContentView.swift
//  BisindoIpad
//
//  Created by Grachia Uliari on 10/06/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
//    let gifURL = URL(string: "https://openlab.bmcc.cuny.edu/luis-castro-portfolio/wp-content/uploads/sites/327/2020/02/Untitled-3-2.gif")
    
    var body: some View {
        VStack(alignment: .center){
            HStack {
                Image(systemName: "arrowtriangle.left.fill")
                    .foregroundColor(.black)
                Text("The Swing")
                    .font(.title)
                    .fontWeight(.bold)
                Image(systemName: "arrowtriangle.right.fill")
                    .foregroundColor(.black)
            }
            HStack {
                Text("Story Prompt")
                    .font(.caption)
                    .frame(width: 390, height: 300)
                    .background(Color.gray.opacity(0.2))
                
//                WebImage(url: gifURL)
//                    .resizable()
//                    .indicator(.activity)
//                    .transition(.fade(duration: 0.5))
//                    .scaledToFit()
//                    .frame(width: 390, height: 300)
//                    .background(Color.gray.opacity(0.2))
                
                AnimatedImage(name: "rainy.gif")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 390, height: 300)
                    .background(Color.gray.opacity(0.2))
                    
                //                Text("Animation")
                //                    .font(.caption)
                //                    .frame(width: 390, height: 300)
                //                    .background(Color.gray.opacity(0.2))
                
            }
            //            Rectangle()
            //                .frame(width: 800, height: 300)
            //                .foregroundColor(.gray.opacity(0.2))
            Text("Camera & ghost hand")
                .font(.title)
                .frame(width: 800, height: 750)
                .background(Color.gray.opacity(0.5))
            
            
            //            Rectangle()
            //                .frame(width: 800, height: 700)
            //                .foregroundColor(.gray.opacity(0.5))
            
            
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
