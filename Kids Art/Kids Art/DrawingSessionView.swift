//
//  DrawingSessionView.swift
//  Kids Art
//
//  Created by Nicola Sarli on 14/05/23.
//

import SwiftUI
import PencilKit

struct DrawingSessionView: View {
    @State private var zoomScale: CGFloat = 1
    
    @State var rendition: Rendition?
    @State private var canvasView = PKCanvasView()
    @State private var isSharing = false
    
    var body: some View {
                ZoomableScrollView {
                    CanvasView(canvasView: $canvasView, onSaved: saveDrawing)
                        .padding(20.0)
                        .navigationBarItems(
                            trailing: HStack {
                                Button(action: shareDrawing) {
                                    Image(systemName: "square.and.arrow.up")
                                }.sheet(isPresented: $isSharing) {
                                    ShareSheet(
                                        activityItems: [rendition?.image as Any],
                                        excludedActivityTypes: [])
                                }
                                Button(action: restoreDrawing) {
                                    Image(systemName: "arrow.uturn.left")
                                }
                                Button(action: deleteDrawing) {
                                    Image(systemName: "trash")
                                }
                            })
                }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ZoomableScrollView<Content: View>: UIViewRepresentable {
    private var content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    func makeUIView(context: Context) -> UIScrollView {
        // set up the UIScrollView
        let scrollView = UIScrollView()
        scrollView.delegate = context.coordinator  // for viewForZooming(in:)
        scrollView.maximumZoomScale = 20
        scrollView.minimumZoomScale = 1
        scrollView.bouncesZoom = true
        
        // create a UIHostingController to hold our SwiftUI content
        let hostedView = context.coordinator.hostingController.view!
        hostedView.translatesAutoresizingMaskIntoConstraints = true
        hostedView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        hostedView.frame = scrollView.bounds
        scrollView.addSubview(hostedView)
        
        return scrollView
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(hostingController: UIHostingController(rootView: self.content))
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        // update the hosting controller's SwiftUI content
        context.coordinator.hostingController.rootView = self.content
        assert(context.coordinator.hostingController.view.superview == uiView)
    }
    
    // MARK: - Coordinator
    
    class Coordinator: NSObject, UIScrollViewDelegate {
        var hostingController: UIHostingController<Content>
        
        init(hostingController: UIHostingController<Content>) {
            self.hostingController = hostingController
        }
        
        func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            return hostingController.view
        }
    }
}

private extension DrawingSessionView {
    
    func saveDrawing() {
        let image = canvasView.drawing.image(
            from: canvasView.bounds, scale: UIScreen.main.scale)
        let rendition = Rendition(
            title: "Best Drawing",
            drawing: canvasView.drawing,
            image: image)
        self.rendition = rendition
    }
    
    func deleteDrawing() {
        canvasView.drawing = PKDrawing()
    }
    
    func restoreDrawing() {
        if let rendition = rendition {
            canvasView.drawing = rendition.drawing
        }
    }
    
    func shareDrawing() {
        if rendition != nil {
            isSharing = true
        }
    }
    
    func resetImageState() {
        withAnimation(.interactiveSpring()) {
            zoomScale = 1
        }
    }
}
