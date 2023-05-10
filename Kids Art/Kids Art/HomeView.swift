//
//  HomeView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 09/05/23.
//

import SwiftUI

struct HomeView: View {

    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView(){
            
            ZStack{
                
                Color(red: 211 / 255, green: 216 / 255, blue: 232 / 255)
                    .ignoresSafeArea()
                
                
                VStack{
                    
                    //THIS IS NOT A FUNCTIONING SEARCH BAR
                    Capsule()
                        .fill(Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255))
                        .frame(width: 262, height: 53)
                        .overlay(
                            HStack{
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color(red: 158 / 255, green: 158 / 255, blue: 158 / 255))
                                
                                Text("What are you looking for?")
                                    .foregroundColor(Color(red: 158 / 255, green: 158 / 255, blue: 158 / 255))
                            })
                        .padding(30)
                    
                    
                    
                    Circle()
                        .fill(Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255))
                        .frame(width: 98, height: 98)
                        .overlay(Text("🐵")
                            .font(.system(size: 54.02)))
                    Text("Josh").font(.system(size : 39.89))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    
                    HStack(){
                        Rectangle()
                            .fill(Color(red: 0 / 255, green: 122 / 255, blue: 255 / 255))
                            .frame(width: 123, height: 106.45)
                            .cornerRadius(10)
                            .overlay(
                                VStack {
                                    Image(systemName: "binoculars.fill")
                                        .resizable()
                                        .frame(width: 45.93, height: 35)
                                        .foregroundColor(.white)
                                        
                                    Text("Explore")
                                        .font(.system(size : 12.32))
                                        .foregroundColor(.white)
                                })
                        
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
                                
                                Text("Your Friends' Drawings")
                                    .font(.system(size : 12.32))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    
                                
                                Text("🧑🏼‍🎨🧑🏾‍🎨👩🏽‍🎨👩🏻‍🎨")
                                    .font(.system(size : 50))
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
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
                }
                
                Divider()
                    .frame(width: 783)
                
                Spacer()
                
            }
            
            
        
                
                    
                
                
           
    
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
