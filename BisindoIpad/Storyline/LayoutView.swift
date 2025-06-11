import SwiftUI

struct LayoutView: View {
    @State private var currentPage: StoryPage = .first

    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                // CameraView stay disini
                CameraSection()
                    .frame(width: geometry.size.width/2, height: geometry.size.height)

                // Story section yang berubah
                ZStack {
                    switch currentPage {
                    case .first:
                        FirstStoryView(onNext: {
                            withAnimation {
                                currentPage = .validation
                            }
                        })
                    case .validation:
                        firstStoryValidationView(onPrevious: {})
                    }
                }
                .ignoresSafeArea()
                .frame(width: geometry.size.width/2, height: geometry.size.height)
            }
            .ignoresSafeArea()
        }
    }
}

enum StoryPage {
    case first
    case validation
}
