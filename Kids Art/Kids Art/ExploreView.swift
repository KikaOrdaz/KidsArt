//
//  ExploreView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 10/05/23.
//

import SwiftUI

struct ExploreView: View {
    //To do: drop a list with the paintings' titles
    @State private var searchText = ""
    
    var body: some View {
        NavigationView(){
            
            ZStack{
                
                Color(red: 211 / 255, green: 216 / 255, blue: 232 / 255)
                    .ignoresSafeArea()
                
                VStack {
                    Circle()
                        .fill(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255))
                        .frame(width: 98, height: 98)
                        .overlay(Text("🐵")
                            .font(.system(size: 54.02)))
                    Text("Josh").font(.system(size : 39.89))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    //The searchable modifier makes the search bar functional, needs to be adjusted the design based on the Figma prototype
                    Text("")
                        .searchable(text: $searchText, prompt: "What are you looking for?")
                    
                    HStack(){
                        Rectangle()
                            .fill(Color(red: 0 / 255, green: 122 / 255, blue: 255 / 255))
                            .frame(width: 123, height: 106.45)
                            .cornerRadius(10)
                            .overlay(
                                VStack {
                                    //Added a navigation link both for the emoji symbol and the "label", I've done it for each section (excluded the profile section that needs to be reworked)
                                    NavigationLink {
                                        ExploreView()
                                    } label: {
                                        Image(systemName: "binoculars.fill")
                                            .resizable()
                                            .frame(width: 45.93, height: 35)
                                            .foregroundColor(.white)
                                    }
                                    
                                    NavigationLink {
                                        ExploreView()
                                    } label: {
                                        Text("Explore")
                                    }
                                    .font(.system(size : 12.32))
                                    .foregroundColor(.white)
                                })
                        
                        Rectangle()
                            .fill(Color(red: 266 / 255, green: 78 / 255, blue: 68 / 255))
                            .frame(width: 123, height: 106.45)
                            .cornerRadius(10)
                            .overlay(
                                VStack {
                                    NavigationLink {
                                        DailyChallengeView()
                                    } label: {
                                        Text("🔥")
                                            .font(.system(size : 53.37))
                                    }
                                    NavigationLink {
                                        DailyChallengeView()
                                    } label: {
                                        Text("Daily Challenge")
                                            .font(.system(size : 12.32))
                                            .foregroundColor(.white)
                                    }
                                })
                    }
                    
                    Rectangle()
                        .fill(.white)
                        .frame(width: 198, height: 1)
                    
                    Rectangle()
                        .fill(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                        .frame(width: 254.25, height: 104.15)
                        .cornerRadius(10)
                        .overlay(
                            VStack {
                                NavigationLink {
                                    FriendsView()
                                } label: {
                                    Text("Your Friends' Drawings")
                                        .font(.system(size : 12.32))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                }
                                
                                NavigationLink {
                                    FriendsView()
                                } label: {
                                    Text("🧑🏼‍🎨🧑🏾‍🎨👩🏽‍🎨👩🏻‍🎨")
                                        .font(.system(size : 50))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                }
                            })
                    
                    Rectangle()
                        .fill(.white)
                        .frame(width: 198, height: 1)
                    
                    Rectangle()
                        .fill(Color(red: 255 / 255, green: 204 / 255, blue: 0 / 255))
                        .frame(width: 254.25, height: 104.15)
                        .cornerRadius(10)
                    
                    Spacer()
                }
            }
            VStack{
                HStack{
                    Text("Choose a Painting")
                        .fontWeight(.semibold)
                        .padding(40)
                        .font(.system(size: 29.56))
                    
                    Spacer()
                    
                    HStack {
                        Circle()
                            .fill(Color(red: 245 / 255, green: 242 / 255, blue: 242 / 255))
                            .frame(width: 98, height: 98)
                            .overlay(Text("🐵")
                                .font(.system(size: 54.02)))
                            .padding(.trailing, 50)
                    }
                }
                Divider()
                    .frame(width: 783)
                HStack {
                    //Paintings available to be coloured
                    //I have to create a struct for images like the professors app, so I can make the code cleaner and manage all the future paintings by 1 single struct and not changing manually everytime
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                    
                    Image("7")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                    
                    Image("6")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
                HStack {
                    Image("5")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                    Image("10")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                    Image("2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
                HStack {
                    Image("8")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                    Image("4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                    Image("9")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
