//
//  firstStory.swift
//  BisindoIpad
//
//  Created by Grachia Uliari on 11/06/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct firstStoryValidationView: View {
    @State private var showGif: Bool = false
    var onPrevious: () -> Void
    
    var body: some View {
        ZStack(alignment: .top){
            VStack(spacing: 0) {
                HStack {
                    Button(action: {
                        onPrevious()
                    }) {
                        Image(systemName: "arrowtriangle.left.fill")
                            .foregroundColor(.black)
                    }
                    Text("Chapter 1: The Swing")
                        .font(.title)
                        .fontWeight(.bold)
                    Image(systemName: "arrowtriangle.right.fill")
                        .foregroundColor(.black)
                }
                Spacer()

                Image("boy-smile")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity)
                    .frame(width: 400)
                Spacer()

                TypewriterText(
                    fullText: "Dia melihatmu sekarang!\nLihat, dia tersenyum kecil padamu.",
                    typingSpeed: 0.05,
                    onComplete: {
                        showGif = true
                    }
                )
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

            }
            .padding(.top, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .border(Color.black, width: 1)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    firstStoryValidationView(onPrevious: {})
}

