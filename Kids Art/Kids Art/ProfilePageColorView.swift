//
//  ProfilePageColorView.swift
//  Kids Art
//
//  Created by Nicola Sarli on 15/05/23.
//

import SwiftUI

struct ProfilePageColorView: View {
    @State var selectedColor: Color = Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255)
    
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Button(action: {
                    selectedColor = Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255)
                }) {
                    Image("monkey")
                        .resizable()
                        .frame(width: 180, height: 180)
                        .foregroundColor(.white)
                        .padding()
                        .background(selectedColor)
                        .clipShape(Circle())
                }
                Text("Choose your color")
                    .fontWeight(.regular)
                    .font(.system(size: 33))
                
                NavigationLink {
                    ExploreView()
                } label: {
                    Text("Done")
                }
                
                Spacer()
                
                HStack {
                    Button(action: {
                        selectedColor = .black
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 128 / 255, green: 128 / 255, blue: 128 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 128 / 255, green: 128 / 255, blue: 128 / 255))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 224/255, green: 224/255, blue: 224/255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224/255, green: 224/255, blue: 224/255))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 0/255, green: 102 / 255, blue: 0 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0/255, green: 102 / 255, blue: 0 / 255))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 0/255, green: 204/255, blue: 0 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0/255, green: 204/255, blue: 0 / 255))
                            .clipShape(Circle())
                    }
                    .frame(height: 80)
                    Button(action: {
                        selectedColor = Color(red: 0/255, green: 255/255, blue: 0 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0/255, green: 255/255, blue: 0 / 255))
                            .clipShape(Circle())
                    }
                    
                }
                Spacer()
                
                HStack {
                    Button(action: {
                        selectedColor = Color(red: 0/255, green:  0 / 255, blue: 102 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0/255, green:  0 / 255, blue: 102 / 255))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 0 / 255, green: 0 / 255, blue: 255 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 0 / 255, green: 0 / 255, blue: 255 / 255))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 11/255, green: 174 / 255, blue: 245 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 11/255, green: 174 / 255, blue: 245 / 255))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 102/255, green: 0 / 255, blue: 224 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 102/255, green: 0 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 255 / 255, green: 51 / 255, blue: 255 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 255 / 255, green: 51 / 255, blue: 255 / 255))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 255/255, green: 204 / 255, blue: 229 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 255/255, green: 204 / 255, blue: 229 / 255))
                            .clipShape(Circle())
                    }
                }
                HStack {
                    Button(action: {
                        selectedColor = Color(red: 102/255, green: 51 / 255, blue: 0 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 102/255, green: 51 / 255, blue: 0 / 255))
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 153/255, green: 0/255, blue: 0/255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 153/255, green: 0/255, blue: 0/255))
                        
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color.red
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .clipShape(Circle())
                    }
                    Button(action: {
                        selectedColor = Color(red: 255 / 255, green: 128 / 255, blue: 0 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 255 / 255, green: 128 / 255, blue: 0 / 255))
                            .clipShape(Circle())
                    }
                    
                    Button(action: {
                        selectedColor = Color(red: 255/255, green: 204 / 255, blue: 153 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 255/255, green: 204 / 255, blue: 153 / 255))
                            .clipShape(Circle())
                    }
                    
                    Button(action: {
                        selectedColor = Color(red: 255 / 255, green: 255 / 255, blue: 0 / 255)
                    }) {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 255 / 255, green: 255 / 255, blue: 0 / 255))
                        
                            .clipShape(Circle())
                    }
                }
                Spacer()
            }
        }
    }
}


struct ProfilePageColorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageColorView()
    }
}
