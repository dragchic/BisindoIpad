////
////  firstStory.swift
////  BisindoIpad
////
////  Created by Grachia Uliari on 11/06/25.
////
//
//import SwiftUI
//import AVFoundation
//import SDWebImageSwiftUI
//
//
//struct firstStoryView: View {
//    @State private var showGif: Bool = false
//    
//    var body: some View {
//        NavigationStack {
//            ZStack(alignment: .top){
//                GeometryReader { geometry in
//                    HStack(spacing: 0){
//                        ZStack {
//                            CameraView()
//                                .frame(width: geometry.size.width/2, height: geometry.size.height)
//                            if showGif {
//                                VStack {
//                                    AnimatedImage(name: "waving-hand.gif")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .opacity(0.8)
//                                        .frame(width: 100, height: 100)
//                                    Text("Wave your hand")
//                                        .font(.body)
//                                        .foregroundColor(.white)
//                                }
//                            }
//                            
//                        }
//                        
//                        ZStack {
//                            VStack(spacing: 0) {
//                                
//                                HStack {
//                                    Image(systemName: "arrowtriangle.left.fill")
//                                        .foregroundColor(.black)
//                                    Text("Chapter 1: The Swing")
//                                        .font(.title)
//                                        .fontWeight(.bold)
//                                    NavigationLink(destination: firstStoryValidationView()) {
//                                        Image(systemName: "arrowtriangle.right.fill")
//                                            .foregroundColor(.black)
//                                    }
//                                }
//                                //                            .padding(.bottom, 10)
//                                Spacer()
//                                
//                                Image("sitting_down")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 400, height: 700)
//                                //                                .padding(.bottom, 20)
//                                Spacer()
//                                
//                                TypewriterText(
//                                    fullText: "Seorang anak laki-laki sedang duduk sendirian.\nDia tak mengucapkan sepatah kata pun.\nDia melihatmu, tapi dia tak berpaling.",
//                                    typingSpeed: 0.05,
//                                    onComplete: {
//                                        showGif = true
//                                    }
//                                )
//                                .font(.body)
//                                .multilineTextAlignment(.center)
//                                .padding()
//                                
//                                
//                                Spacer()
//                                
//                            }
//                            .padding(.top, 20)
//                            .frame(width: geometry.size.width/2, height: geometry.size.height)
//                            .border(Color.black, width: 1)
//                            
//                        }
//                    }
//                    
//                }
//                
//                //            .padding(.leading, 600)
//            }
//            .ignoresSafeArea()
//        }
//    }
//}
//
//#Preview {
//    firstStoryView()
//}
