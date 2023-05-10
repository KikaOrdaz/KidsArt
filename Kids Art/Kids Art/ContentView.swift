//
//  ContentView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 08/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 32 / 255, green: 70 / 255, blue: 207 / 255)
                    .ignoresSafeArea()
                
                VStack {
                        Image("Font bianco app")
                        .resizable()
                        .frame(width: 300, height: 70)
                        .offset(y: -250)
                    
                    //To be fixed, idk why but the link doesn't bring you to the home page
                    NavigationLink {
                        registrationPage()
                    } label: {
                        Text("Welcome")
                            .padding(10)
                    }
                    
                    .tint(.white)
                    .buttonStyle(.borderedProminent)
                    .cornerRadius(50)
                    .foregroundColor(.black)
                    .offset(y: 250)
                    .font(.system(size: 24))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
