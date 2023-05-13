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
        
        VStack{
            Color("Background")
                .edgesIgnoringSafeArea(.all)
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
                NavigationLink {
                    DrawingView()
                } label: {
                    Image("1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
                
                NavigationLink {
                    DrawingView()
                } label: {
                    Image("7")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
                
                NavigationLink {
                    DrawingView()
                } label: {
                    Image("6")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
            }
            HStack {
                NavigationLink {
                    DrawingView()
                } label: {
                    Image("5")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
                
                NavigationLink {
                    DrawingView()
                } label: {
                    Image("10")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
                
                NavigationLink {
                    DrawingView()
                } label: {
                    Image("2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
            }
            
            HStack {
                NavigationLink {
                    DrawingView()
                } label: {
                    Image("8")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
                
                NavigationLink {
                    DrawingView()
                } label: {
                    Image("4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300,height: 200)
                        .cornerRadius(25)
                }
                
                NavigationLink {
                    DrawingView()
                } label: {
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
        
        ExploreView()
            .environment(\.colorScheme, .dark)
    }
}
