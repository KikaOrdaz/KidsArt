//
//  DrawingView.swift
//  Kids Art
//
//  Created by Nicola Sarli on 13/05/23.
//

import SwiftUI
import PencilKit

struct PaintingView: View {
    var image: String
    var colouredImage: String
    @AppStorage("paintSave") var paintSaving: Data?
    @State var paintSaved: [String : Data] = [:]
    
    @State var rendition: Rendition?
    @State private var canvasView = PKCanvasView()
    @State private var isSharing = false
    
    init(image: String, colouredImage: String) {
        self.image = image
        self.colouredImage = colouredImage
        if let data = paintSaving {
            let p = try! JSONDecoder().decode([String : Data].self, from: data)
            if p.keys.contains(image) {
                canvasView.drawing = try! PKDrawing(data: p[image]!)
            }
            _paintSaved = State(initialValue: p)
        }
    }
    
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
                                Image(systemName: "trash.slash")
                            }
                            Button(action: deleteDrawing) {
                                Image(systemName: "trash")
                            }
                            Button(action: {
                                let data = canvasView.drawing.dataRepresentation()
                                var paintSaved2 = paintSaved
                                paintSaved[image] = data
                                
                            }, label: {
                                Text("Save")
                            })
                        })
                    .navigationViewStyle(StackNavigationViewStyle())
        }
            .onChange(of: paintSaved) {
                
                self.paintSaving = try! JSONEncoder().encode($0)
            }
            
    }
}

private extension PaintingView {
    
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

struct PaintingView_Previews: PreviewProvider {
    static var previews: some View {
        PaintingView(image: "1.3", colouredImage: "")
    }
}
