//
//  firstStory.swift
//  BisindoIpad
//
//  Created by Grachia Uliari on 11/06/25.
//

import SwiftUI

struct FirstStoryView: View {
    var onNext: () -> Void

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    Image(systemName: "arrowtriangle.left.fill")
                        .foregroundColor(.black)
                    Text("Chapter 1: The Swing")
                        .font(.title)
                        .fontWeight(.bold)
                    Button(action: {
                        onNext()
                    }) {
                        Image(systemName: "arrowtriangle.right.fill")
                            .foregroundColor(.black)
                    }
                }
                
                Spacer()
                
                Image("sitting_down")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: .infinity)
                    .frame(width: 400)
                Spacer()
                
                TypewriterText(
                    fullText: "Seorang anak laki-laki sedang duduk sendirian.\nDia tak mengucapkan sepatah kata pun.\nDia melihatmu, tapi dia tak berpaling.",
                    typingSpeed: 0.05,
                    onComplete: {}
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
    FirstStoryView(onNext: {})
}
