//
//  Orientation.swift
//  BisindoIpad
//
//  Created by Grachia Uliari on 11/06/25.
//

import SwiftUI

extension View {
    func supportedOrientations(_ orientations: UIInterfaceOrientationMask) -> some View {
        self
            .background(OrientationSetter(orientations: orientations))
    }
}

struct OrientationSetter: UIViewControllerRepresentable {
    let orientations: UIInterfaceOrientationMask

    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            AppDelegate.orientationLock = self.orientations
            UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
            controller.setNeedsUpdateOfSupportedInterfaceOrientations()
        }
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
