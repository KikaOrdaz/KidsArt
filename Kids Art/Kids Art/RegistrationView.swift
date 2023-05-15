//
//  RegistrationView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 12/05/23.
//

import SwiftUI

struct RegistrationView: View {
    @AppStorage("username") private var username = ""
    @State private var savedUsername = ""
    @State private var dataDisclaimer = false
    @State private var emptyUsername = false
    
    var body: some View {
        
        NavigationStack{
            VStack{
                Circle()
                    .fill(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
                    .frame(width: 98, height: 98)
                    .overlay(Text("🐵")
                        .font(.system(size: 54.02)))
                    .padding(.top)
                Text("Enter your Nickname")
                    .fontWeight(.regular)
                    .padding(.top, 25)
                Divider()
                    .frame(width: 50, height: 2)
                    .overlay(Color.blue)
                //Need to add a disclaimer to inform the user to not put any personal data
                
                
                Button() {
                    dataDisclaimer = true
                } label: {
                    TextField(text: $username, label: {
                        Text("Nickname")
                    })
                    .padding()
                    .multilineTextAlignment(.center)
                    .background(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
                    .cornerRadius(50)
                    .frame(width: 400, height: 150)
                }
                .alert(isPresented: $dataDisclaimer) {
                    Alert(title: Text("Disclaimer"), message: Text("Don’t put any personal data in your nickname!"), dismissButton: .default(Text("Got it!")))
                }
                
                
                NavigationLink {
                    DashboardView()
                } label: {
                    Capsule()
                        .fill()
                        .frame(width: 520, height: 93)
                        .overlay(
                            Text("Register")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white))

                }
                .disabled(username.isEmpty)
                
  
            }
            
        }
    }
    
    
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}


