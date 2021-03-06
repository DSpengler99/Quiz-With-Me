//
//  AvatarImage.swift
//  Quiz With Me
//
//  Created by Egzon Jusufi on 31.05.21.
//

import SwiftUI

struct AvatarImage: View {
    var userShortname: String
    
    var body: some View {
        VStack {
            Text(userShortname)
                .avatarFont()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.backgroundWhite)
                .padding()
                .background(Color.gameGreen)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.backgroundWhite, lineWidth: 10))
        }
    }
}

struct AvatarImage_Previews: PreviewProvider {
    static var previews: some View {
        AvatarImage(userShortname: "Te")
    }
}
