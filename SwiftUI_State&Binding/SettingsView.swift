//
//  SettingsView.swift
//  SwiftUI_State&Binding
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
  
  @ObservedObject var user: User
  
  var body: some View {
    NavigationView {
      List {
        Section(header: Text("User")) {
          Text(user.name)
        }
        
        Section(header: Text("Liked Books")) {
          ForEach(user.likedBooks) { book in
            HStack {
              Image(book.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
              
              Text(book.title)
                .font(Font.system(.body))
            }
            
          }
        }
      }
      .listStyle(GroupedListStyle())
        .navigationBarTitle("User Settings")
      
    }
  }
}

struct SettingsView_Previews: PreviewProvider {
  
  static var previews: some View {
    SettingsView(user: User.exampleUser)
  }
}
