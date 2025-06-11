//
//  CameraView.swift
//  BisindoIpad
//
//  Created by Grachia Uliari on 11/06/25.
//

import SwiftUI
import AVFoundation

struct CameraView: UIViewRepresentable {
    
    class CameraViewCoordinator: NSObject, AVCaptureVideoDataOutputSampleBufferDelegate { }

    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        let session = AVCaptureSession()
        session.sessionPreset = .photo
        
        guard let camera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front),
              let input = try? AVCaptureDeviceInput(device: camera) else {
            return view
        }
        
        if session.canAddInput(input) {
            session.addInput(input)
        }
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: session)
        previewLayer.videoGravity = .resizeAspectFill
        previewLayer.frame = view.bounds
        previewLayer.connection?.automaticallyAdjustsVideoMirroring = false
        previewLayer.connection?.isVideoMirrored = true
        
        view.layer.addSublayer(previewLayer)
        
        DispatchQueue.main.async {
            previewLayer.frame = view.bounds
            previewLayer.connection?.videoRotationAngle = 0 //landscape right
        }
        
        // 🔧 Panggil startRunning di background thread
        DispatchQueue.global(qos: .userInitiated).async {
            session.startRunning()
        }
        
        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}

