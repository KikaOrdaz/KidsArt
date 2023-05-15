//
//  ProfilePageColor.swift
//  Kids ArtUITests
//
//  Created by Francisca Ordaz on 15/05/23.
//

import SwiftUI

struct ProfilePageColor: View {
    @State var selectedColor: Color = Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255)
    @AppStorage("profilepic") var selectedImage: String?
    @AppStorage("profilecolor") var profileColor: String?
    
    var availableColors = [Color.black,
                           Color(red: 128 / 255, green: 128 / 255, blue: 128 / 255),
                           Color(red: 224/255, green: 224/255, blue: 224/255),
                           Color(red: 0/255, green: 102 / 255, blue: 0 / 255),
                           Color(red: 0/255, green: 204/255, blue: 0 / 255),
                           Color(red: 0/255, green: 255/255, blue: 0 / 255),
                           Color(red: 0/255, green:  0 / 255, blue: 102 / 255),
                           Color(red: 0 / 255, green: 0 / 255, blue: 255 / 255),
                           Color(red: 11/255, green: 174 / 255, blue: 245 / 255),
                           Color(red: 102/255, green: 0 / 255, blue: 224 / 255),
                           Color(red: 255 / 255, green: 51 / 255, blue: 255 / 255),
                           Color(red: 255/255, green: 204 / 255, blue: 229 / 255),
                           Color(red: 102/255, green: 51 / 255, blue: 0 / 255),
                           Color(red: 153/255, green: 0/255, blue: 0/255),
                           Color.red,
                           Color(red: 255 / 255, green: 128 / 255, blue: 0 / 255),
                           Color(red: 255/255, green: 204 / 255, blue: 153 / 255),
                           Color(red: 255 / 255, green: 255 / 255, blue: 0 / 255)
    ]
  
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
       ]
    
    
    var body: some View {
        VStack {
                 Spacer()
                     
            HStack {
                Spacer()
                Circle()
                    .frame(width: 162, height: 162)
                    .padding()
                    .foregroundColor(stringToColor(string: profileColor ?? ""))
                    .overlay(
                        Text(selectedImage ?? "🐵")
                            .font(.system(size: 89.29))
                    )
             
                Spacer()
            }
                     
            Text("Choose your color")
                .fontWeight(.regular)
                .font(.system(size: 33))
            
            Rectangle()
                .frame(width: 58, height: 1)
                .foregroundColor(.accentColor)
            
            
            LazyVGrid(columns: columns, spacing:0){
                ForEach(availableColors, id: \.self){ color in
                    Button {
                        selectedColor = color
                        profileColor = colorToString(color: color)
                    } label: {
                        Circle()
                            .frame(width: 120, height: 120)
                            .padding()
                            .foregroundColor(color)
                            .overlay(
                                Text(selectedImage ?? "🐵" )
                                    .font(.system(size: 60))
                            )
                    
                    }
                   
                }
            }
            
            Spacer()
            
                 }
        .frame(width: 800, height: 800)
        
       
                
            }
}

func colorToString(color: Color)-> String {

 let uiColor = UIColor(color)
 var red: CGFloat = 0
 var green: CGFloat = 0
 var blue: CGFloat = 0
 var alpha: CGFloat = 0
 uiColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)

 return "\(red),\(green),\(blue),\(alpha)"
}

func stringToColor(string: String)-> Color{
    var color = Color(red: 224 / 255, green: 224 / 255, blue: 224 / 255)
    
    if (string != "" ) {
        
        let rgbArray = string.components(separatedBy: ",")
        if let red = Double (rgbArray[0]),
           let green = Double (rgbArray[1]),
           let blue = Double(rgbArray[2]),
           let alpha = Double (rgbArray[3]){
            color = Color(.sRGB, red: red, green: green, blue: blue, opacity: alpha)
        }
    }
    return color
}

struct ProfilePageColor_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePageColor()
    }
}
