//
//  DashboardView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 11/05/23.
//

import SwiftUI

struct DashboardView: View {
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationSplitView {
            ZStack{
                
                Color(red: 211 / 255, green: 216 / 255, blue: 232 / 255)
                    .ignoresSafeArea()
                
                VStack {
                
                    //The searchable modifier makes the search bar functional, needs to be adjusted the design based on the Figma prototype
                    Text("")
                        .searchable(text: $searchText, prompt: "What are you looking for?")
                    
                    
                    NavigationLink{
                        DrawingView()
                    } label: {
                        Rectangle()
                            .fill(Color(red: 255 / 255, green: 149 / 255, blue: 0 / 255))
                            .frame(width: 254.25, height: 104.15)
                            .cornerRadius(10)
                            .overlay(
                                VStack{
                                    Text("🖌️")
                                        .font(.system(size : 53.37))
                                    
                                    Text("Artworks")
                                    .font(.system(size : 12.32))
                                    .foregroundColor(.white)
                                })
                            .shadow(radius: 5)
                    }
                    
                    
                    Rectangle()
                        .fill(.white)
                        .frame(width: 198, height: 1)

                    
                    HStack(){
                        
                        NavigationLink{
                            ExploreView()
                                .navigationBarBackButtonHidden(true)
                        } label: {
                            Rectangle()
                                .fill(Color(red: 0 / 255, green: 122 / 255, blue: 255 / 255))
                                .frame(width: 123, height: 106.45)
                                .cornerRadius(10)
                                .overlay(
                                    VStack {
                                        //Added a navigation link both for the emoji symbol and the "label", I've done it for each section (excluded the profile section that needs to be reworked)
                                        Text("🗺️")
                                            .font(.system(size : 53.37))
                                        
                                        Text("Explore")
                                        .font(.system(size : 12.32))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                       
                                    })
                                .shadow(radius: 5)
                        }
                        
                        NavigationLink{
                            DailyChallengeView()
                        } label: {
                            Rectangle()
                                .fill(Color(red: 266 / 255, green: 78 / 255, blue: 68 / 255))
                                .frame(width: 123, height: 106.45)
                                .cornerRadius(10)
                                .overlay(
                                    VStack {
                                        Text("🔥")
                                            .font(.system(size : 53.37))
                                      
                                        Text("Daily Challenge")
                                            .font(.system(size : 12.32))
                                            .foregroundColor(.white)
                                    })
                                .shadow(radius: 5)
                        }
                    }
            
                    Rectangle()
                        .fill(.white)
                        .frame(width: 198, height: 1)
                    
                
                    
                    NavigationLink {
                        FriendsView()
                    } label: {
                        Rectangle()
                            .fill(Color(red: 234 / 255, green: 152 / 255, blue: 106 / 255))
                            .frame(width: 254.25, height: 104.15)
                            .cornerRadius(10)
                            .overlay(
                                VStack{
                                    Text("Your Friends' Drawings")
                                        .font(.system(size : 12.32))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                    Text("🧑🏼‍🎨🧑🏾‍🎨👩🏽‍🎨👩🏻‍🎨")
                                        .font(.system(size : 50))
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                })
                            .shadow(radius: 5)
                    }
                    
                
                    
                    Spacer()
                }
            }
        } detail: {
            HomeView()
        }
        .navigationBarBackButtonHidden(true)

    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
