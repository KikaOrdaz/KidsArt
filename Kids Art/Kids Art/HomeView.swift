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
            
            List{
                Label("Dashboard", systemImage: "paintpalette.fill")
            }
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
                
                
                //THIS IS NOT A FUNCTIONING SEARCH BAR
                Capsule()
                    .fill(Color(red: 250 / 255, green: 250 / 255, blue: 250 / 255))
                    .frame(width: 348, height: 53)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(red: 158 / 255, green: 158 / 255, blue: 158 / 255))
                                
                        
                            Text("What are you looking for?")
                                .foregroundColor(Color(red: 158 / 255, green: 158 / 255, blue: 158 / 255))
                                
                        }
                        
                        
                    )
                
                VStack(alignment: .leading){
                    Text("Daily Challenge")
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                        
                    Rectangle()
                        .fill(Color(red: 236 / 255, green: 157 / 255, blue: 154 / 255))
                        .frame(width: 375, height: 150)
                        .cornerRadius(10)
                        .overlay(Text("🔥")
                            .font(.system(size : 100)))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(40)
                
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
