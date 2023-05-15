//
//  ProfilePageView.swift
//  Kids Art
//
//  Created by Nicola Sarli on 15/05/23.
//

import SwiftUI

struct ProfilePageView: View {
    @State var selectedImage: String?
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        selectedImage = "monkey"
                    }, label: {
                        Image(selectedImage ?? "monkey")
                            .resizable()
                            .frame(width: 180, height: 180)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                        
                    })
                    Spacer()
                }
                Text("Choose your pic")
                    .fontWeight(.regular)
                    .font(.system(size: 33))
                
                HStack {
                    Spacer()
                    Button(action: {
                        
                        selectedImage = "snow"
                        
                    }, label: {
                        Image("snow")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "world"
                    }, label: {
                        Image("world")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "sun"
                    }, label: {
                        Image("sun")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    
                    Button(action: {
                        selectedImage = "smile"
                    }, label: {
                        Image("smile")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "angry"
                    }, label: {
                        Image("angry")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "alien"
                    }, label: {
                        Image("alien")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    
                    Spacer()
                }
                HStack{
                    
                    Spacer()
                    Button(action: {
                        
                        selectedImage = "paintboard"
                        
                    }, label: {
                        Image("paintboard")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "teddy"
                        
                    }, label: {
                        Image("teddy")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "horse"
                        
                    }, label: {
                        Image("horse")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "dolphin"
                        
                    }, label: {
                        Image("dolphin")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "moon"
                        
                    }, label: {
                        Image("moon")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "flame"
                        
                    }, label: {
                        Image("flame")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    
                    Spacer()
                }
                HStack{
                    Button(action: {
                        
                        selectedImage = "monkey"
                        
                    }, label: {
                        Image("monkey")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "lion"
                        
                    }, label: {
                        Image("lion")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "dog"
                        
                    }, label: {
                        Image("dog")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "planet"
                        
                    }, label: {
                        Image("planet")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "soccer"
                        
                    }, label: {
                        Image("soccer")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    Button(action: {
                        selectedImage = "basketball"
                        
                    }, label: {
                        Image("basketball")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255))
                            .clipShape(Circle())
                    })
                    NavigationLink {
                        ProfilePageColorView()
                    } label: {
                        Text("Next")
                    }
                }
            }
        }
    }
}

struct ProfilePageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageView()
    }
}
