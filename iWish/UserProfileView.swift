//
//  UserProfileView.swift
//  iWish
//
//  Created by OVECHKIN Ilya on 20.09.2020.
//

import SwiftUI

struct UserProfileView: View {
    @State var avatarStrokeColor : Color = Color.white
    
    var body: some View {
        VStack(alignment: .leading, content: {
            HStack(alignment: .top, content: {
                Image("avatar")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle()
                                .stroke(self.avatarStrokeColor, lineWidth: 3)
                                .shadow(radius: 10))
                
                Text("Ilya Ovechkin")
                    .offset(y: 30)
                
            })
            .frame(alignment: .leading)
            
            Image("avatar")
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
            
            Button("Switch", action: {
                print(self.$avatarStrokeColor)
                print(self._avatarStrokeColor)
                print(self.avatarStrokeColor)
                self.avatarStrokeColor = self.avatarStrokeColor == .white ? .red : .white
            })
            
            Spacer()
        })
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .leading)
    }
}

#if DEBUG
struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
            
            
    }
}
#endif
