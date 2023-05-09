//
//  HomeView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 09/05/23.
//

import SwiftUI

struct HomeView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        
        TabView(selection: $selection){
            VStack{
                HStack{
                    Circle()
                        .fill(Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255))
                        .frame(width: 44, height: 44)
                        .overlay(Text("🐵")).padding(40)
                    VStack(alignment: .leading){
                        Text("Nice to see you").foregroundColor(Color(red: 150 / 255, green: 150 / 255, blue: 150 / 255))
                        Text("Josh")
                            .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    
                }
                
                VStack(alignment: .leading){
                    Text("Daily Challenge")
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        
                    Rectangle()
                        .fill(Color(red: 236 / 255, green: 157 / 255, blue: 154 / 255))
                        .frame(width: 750, height: 150)
                        .cornerRadius(10)
                        .overlay(Text("🔥")
                            .font(.system(size : 100)))

                }
                
                Spacer()
                
                
                    
                
            }
            .tabItem{
        
                    Image(systemName: "paintpalette.fill")
                    Text("Dashboard")
                
                
            }.tag(0)
    
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
