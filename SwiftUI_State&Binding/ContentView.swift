//
//  ContentView.swift
//  SwiftUI_State&Binding
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State private var isPresented = false
    @State var selectedBook: Book? = nil
    @State var books = Box(Book.demoBooks)
    
  @State private var user: User = User.exampleUser

  var body: some View {
    
    NavigationView {
      
      ZStack {
        VStack {
            RecommendedRow(book: $books.value[books.value.indices.randomElement()!])
          
          ScrollView(.horizontal, showsIndicators: false) {
           // BooksView(books: $books.value)
            BooksView(books: $books.value, user: user)
          }
          .shadow(color: .black, radius: 10, x: 20, y: 20)
        }
        
        Spacer()
        .layoutPriority(1)
      }
      .background(Color.myPurple)
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarTitle("RW Swift Books")
        .navigationBarItems(trailing:
          Button(action: {
            self.isPresented.toggle()
          }, label: {
            Text("Settings")
          }))
        .sheet(isPresented: self.$isPresented, content: {
          SettingsView(user: self.user)
        })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
