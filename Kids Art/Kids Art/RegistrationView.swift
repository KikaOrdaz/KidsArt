//
//  RegistrationView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 12/05/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var username = ""
    @State private var dataDisclaimer = false
    @State private var emptyUsername = false
    
    @State private var kidUsername = UserDefaults.standard.string(forKey: "username")
    
    
    var body: some View {
<<<<<<< Updated upstream
        VStack{
            Circle()
                .fill(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
                .frame(width: 98, height: 98)
                .overlay(Text("🐵")
                    .font(.system(size: 54.02)))
                .padding(.top)
            Text("Enter your nickname")
                .fontWeight(.regular)
                .padding(.top, 25)
            Divider()
                .frame(width: 50, height: 2)
                .overlay(Color.blue)
            //Need to add a disclaimer to inform the user to not put any personal data
            
            
            Button() {
                        showingAlert = true
            } label: {
                TextField(text: $username, label: {
                    Text("Nickname")
                }) .padding()
                .multilineTextAlignment(.center)
                .background(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
                .cornerRadius(50)
                .frame(width: 400, height: 150)
            }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Disclaimer"), message: Text("Don’t put any personal data in your nickname!"), dismissButton: .default(Text("Got it!")))
                }
=======
        
        NavigationStack{
            VStack{
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
                
                
                Button() {
                    dataDisclaimer = true
                } label: {
                    TextField(text: $username, label: {
                        Text("Nickname")
                    })
                    .multilineTextAlignment(.center)
                    .background(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
                    .cornerRadius(50)
                    .frame(width: 400, height: 150)
                }
                .alert(isPresented: $dataDisclaimer) {
                    Alert(title: Text("Disclaimer"), message: Text("Don’t put any personal data in your nickname!"), dismissButton: .default(Text("Got it!")))
                }
                
                
                
                Button(){
                    if(username == "") {
                        emptyUsername = true
                    } else {
                        UserDefaults.standard.set(username, forKey: "username")
                    }
                    
                    
                } label: {
                    Capsule()
                        .fill()
                        .frame(width: 100, height: 45)
                        .overlay(
                            Text("Save")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white))
                }
                .alert(isPresented: $emptyUsername) {
                    Alert(title: Text("Disclaimer"), message: Text("You can't start without a nickname!"), dismissButton: .default(Text("Okidoki")))
                    
                }
                
                NavigationLink{
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
                
                
            }
        }
    }
    
    struct RegistrationView_Previews: PreviewProvider {
        static var previews: some View {
            RegistrationView()
>>>>>>> Stashed changes
        }
    }
}
