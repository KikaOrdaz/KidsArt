//
//  DrawingView.swift
//  Kids Art
//
//  Created by Nicola Sarli on 13/05/23.
//

import SwiftUI
import PencilKit

struct DrawingView: View {
    var image: String
    
    @State var rendition: Rendition?
    @State private var canvasView = PKCanvasView()
    @State private var isSharing = false
    
    var body: some View {
        NavigationStack {
                ZoomableScrollView {
                    ZStack {
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        CanvasView(canvasView: $canvasView, onSaved: saveDrawing)
                    }
                }
                    .padding(20.0)
                    .navigationBarTitle(Text("Draw your painting"), displayMode: .inline)
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
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

private extension DrawingView {
    
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
}

struct DrawingView_Previews: PreviewProvider {
    static var previews: some View {
        DrawingView(image: "1.3")
    }
}
