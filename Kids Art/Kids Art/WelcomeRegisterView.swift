//
//  registrationPage.swift
//  Kids Art
//
//  Created by Nicola Sarli on 10/05/23.
//

import SwiftUI

struct WelcomeRegisterView: View {
    //TO DO: insert a check to not allow empty usernames
    @State private var username = ""
    @State private var showingAlert = false
    
    
    private let clickableColor : Color = Color(red: 50 / 255, green: 50 / 255, blue: 50 / 255)
    private let notClickableColor : Color = Color(red: 120 / 255, green: 120 / 255, blue: 120 / 255)
    
    var body: some View {
        
        let infos : [pageInfo] = [pageInfo(buttonLabel: "Choose your favorite painting", imageName: "Choose", capsuleColor: notClickableColor),
                                  pageInfo(buttonLabel: "Color your favorite painting", imageName: "Paint", capsuleColor: notClickableColor),
                                  pageInfo(buttonLabel: "Share it with your friends", imageName: "Friends", capsuleColor: notClickableColor),
                                  pageInfo(buttonLabel: "Start painting!", imageName: "", capsuleColor: clickableColor)]
        
        NavigationStack {
            VStack{
                TabView{
                    ForEach(infos) {
                        item in
                        VStack {
                            if (item.buttonLabel == "Start painting!") {
                                
                                RegistrationView()
                                
                               /* NavigationLink{
                                    DashboardView()
                                } label: {
                                    
                                    Capsule()
                                        .fill(item.capsuleColor)
                                        .frame(width: 520, height: 93)
                                        .overlay(
                                            Text(item.buttonLabel)
                                                .font(.system(size: 20))
                                                .fontWeight(.bold)
                                                .foregroundColor(.white))
                                }*/
                                
                            } else {
                                Image(item.imageName)
                                    .resizable()
                                    .frame(width: 591.7, height: 417)
                                    .padding(40)
                                
                                Capsule()
                                    .fill(item.capsuleColor)
                                    .frame(width: 520, height: 93)
                                    .overlay(
                                        Text(item.buttonLabel)
                                            .font(.system(size: 20))
                                            .fontWeight(.bold)
                                            .foregroundColor(.white))
                            }
                        }
                    }
                    
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct WelcomeRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeRegisterView()
    }
}


struct pageInfo : Identifiable {
    var id = UUID()
    var buttonLabel : String
    var imageName : String
    var capsuleColor : Color
    
}
