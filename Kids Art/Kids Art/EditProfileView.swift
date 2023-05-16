//
//  EditProfileView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 15/05/23.
//

import SwiftUI

struct EditProfileView: View {
    @AppStorage("username") private var username = ""
    @State private var savedUsername = ""
    @State private var dataDisclaimer = false
    @State private var emptyUsername = false
    
    
    @AppStorage("profilepic") var selectedImage: String?
    @AppStorage("profilecolor") var profileColor: String?
    
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center){
                NavigationLink{
                    EditProfilePictureView()
                } label: {
                    Circle()
                        .fill(stringToColor(string: profileColor ?? ""))
                        .frame(width: 98, height: 98)
                        .overlay(Text(selectedImage ?? "🐵")
                            .font(.system(size: 54.02)))
                        .padding(.top)
                   
                }
                
                Text(username)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 25)
                
                Text("Change your Nickname")
                    .fontWeight(.regular)
                    .padding(.top, 25)
                Divider()
                    .frame(width: 50, height: 2)
                    .overlay(Color.blue)
                
                Button() {
                } label: {
                    TextField(text: $savedUsername, label: {
                        Text("Nickname")
                    })
                    .padding()
                    .multilineTextAlignment(.center)
                    .background(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
                    .cornerRadius(50)
                    .frame(width: 400, height: 150)
                }
                
                Button(action: {
                    username = savedUsername
                }, label: {
                    Capsule()
                        .fill()
                        .frame(width: 125, height: 70)
                        .overlay(
                            Text("Save")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white))
                })
                .disabled(savedUsername.isEmpty)
                
                Button(action: {
                    username = ""
                }, label: {
                    Capsule()
                        .fill(.red)
                        .frame(width: 175, height: 50)
                        .overlay(
                            Text("Reset Account")
                                .font(.system(size: 20))
                                .fontWeight(.light)
                                .foregroundColor(.white))
                })
            }
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
