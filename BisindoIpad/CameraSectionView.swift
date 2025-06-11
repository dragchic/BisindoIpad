//
//  CameraSectionView.swift
//  BisindoIpad
//
//  Created by Grachia Uliari on 12/06/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct CameraSection: View {
    @State private var showGif: Bool = false

    var body: some View {
        ZStack {
            CameraView()
                .onAppear {
                    // logic buat show gif setelah delay (kalau mau)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        showGif = true
                    }
                }

            if showGif {
                VStack {
                    AnimatedImage(name: "waving-hand.gif")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.8)
                        .frame(width: 100, height: 100)
                    Text("Wave your hand")
                        .font(.body)
                        .foregroundColor(.white)
                }
            }
        }
    }
}
