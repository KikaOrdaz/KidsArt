//
//  DailyChallengeView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 10/05/23.
//

import SwiftUI
import PencilKit

struct DailyChallengeView: View {
    let image: String
    @State var rendition: Rendition?
    @State private var canvasView = PKCanvasView()
    @State private var isSharing = false
    
    var body: some View {
        NavigationStack {
            HStack {
                Text("Daily Challenge: Every Day A New Painting")
                    .fontWeight(.semibold)
                    .font(.system(size: 29.56))
                    .multilineTextAlignment(.leading)
            }
            ZoomableScrollView {
                ZStack {
                    Image("1.14")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    CanvasView(canvasView: $canvasView, onSaved: saveDrawing)
                }
                .padding(20)
                .navigationBarItems(
                    trailing: HStack {
                        /*To do: make the share button work properly
                        Button(action: shareDrawing) {
                            Image(systemName: "square.and.arrow.up")
                        }.sheet(isPresented: $isSharing) {
                            ShareSheet(
                                activityItems: [rendition?.image as Any],
                                excludedActivityTypes: [])
                        }*/
                        Button(action: restoreDrawing) {
                            Image(systemName: "trash.slash")
                        }
                        Button(action: deleteDrawing) {
                            Image(systemName: "trash")
                        }
                    })
                .navigationViewStyle(StackNavigationViewStyle())
            }
        }
    }
}


private extension DailyChallengeView {
    
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

struct DailyChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        DailyChallengeView(image: "1.14")
    }
}
