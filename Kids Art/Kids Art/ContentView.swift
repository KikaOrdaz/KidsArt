//
//  ContentView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 08/05/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("username") var username = ""

    var body: some View {
        
        
        NavigationStack{
            if(username.isEmpty) {
                ZStack {
                    Color(red: 32 / 255, green: 70 / 255, blue: 207 / 255)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack {
                            Image("Font bianco app")
                            .resizable()
                            .frame(width: 300, height: 70)
                            .offset(y: -250)
                      
                        
                        NavigationLink {
                            WelcomeRegisterView()
                         } label: {
                             Capsule()
                                 .fill(.white)
                                 .frame(width: 219, height: 82.12)
                                 .overlay(
                                 Text("Welcome")
                                     .font(.system(size: 31.29))
                                     .fontWeight(.semibold)
                                     .foregroundColor(.black))
                         }
                    }
                }
            } else {
                DashboardView()
               
            }
        }
       
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
