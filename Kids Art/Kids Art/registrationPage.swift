//
//  registrationPage.swift
//  Kids Art
//
//  Created by Nicola Sarli on 10/05/23.
//

import SwiftUI

struct registrationPage: View {
    //TO DO: insert a check to not allow empty usernames
    @State private var username = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Circle()
                        .fill(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
                        .frame(width: 98, height: 98)
                        .overlay(Text("🐵")
                            .font(.system(size: 54.02)))
                        .padding(.top)
                    Text("Enter your nickname")
                        .fontWeight(.heavy)
                        .padding(.top, 10)
                    Divider()
                        .frame(width: 50, height: 2)
                        .overlay(Color.blue)
                    //Need to add a disclaimer to inform the user to not put any personal data
                    TextField(text: $username, label: {
                        Text("Nickname")
                    })
                    .multilineTextAlignment(.center)
                    .background(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
                    .cornerRadius(50)
                    .frame(width: 400, height: 150)
                    
                    //NEED TO ADD A SLIDER TO EXPLAIN THE FUNCTIONS OF THIS APP AND AS THE FINAL ONE THE REGISTRER BUTTON
                    
                NavigationLink {
                    HomeView()
                } label: {
                    Text("Welcome")
                }
                
                .tint(.black)
                .buttonStyle(.borderedProminent)
                .cornerRadius(50)
                .foregroundColor(.white)
                .offset(y: 150)
                .font(.system(size: 24))
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct registrationPage_Previews: PreviewProvider {
    static var previews: some View {
        registrationPage()
    }
}
