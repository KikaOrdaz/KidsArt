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
            
            
            Text("Don't really know what to do with this page")
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
