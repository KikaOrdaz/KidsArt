//
//  EditProfileView.swift
//  Kids Art
//
//  Created by Francisca Ordaz on 15/05/23.
//

import SwiftUI

struct EditProfilePictureView: View {
    
    
    var body: some View {
        NavigationStack {
            VStack{
                TabView{
                    ProfilePageView()
                    ProfilePageColor()
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

struct EditProfilePictureView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfilePictureView()
    }
}
