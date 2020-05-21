//
//  BookRow.swift
//  SwiftUI_State&Binding
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct BookRow: View {
  
    @Binding var book: Book
    @ObservedObject var user: User
    
  var proxy: GeometryProxy
  
  var body: some View {
    
    NavigationLink(destination: BookDetailView(book: $book, user: user)) {
      
      VStack {
        Text(book.title)
          .fontWeight(.bold)
          .font(Font.system(.headline, design: .rounded))
          .minimumScaleFactor(0.75)
          .padding(.top)
          .multilineTextAlignment(.center)
          .lineLimit(nil)
          .foregroundColor(.white)

        Image(book.imageName)
          .renderingMode(.original)
          .resizable()
          .scaledToFit()
          .padding()
          .shadow(color: .gray, radius: 20)
      }
      .padding()
        .frame(width: max(proxy.size.width - proxy.frame(in: .global).midX, proxy.size.width),
        height: proxy.size.height - 50)


        .background(Image(book.imageName)
          .renderingMode(.original)
          .resizable()
          .scaledToFill()
          .opacity(1)
          .overlay(Color.myGreen)
          .blendMode(.multiply)
          .blur(radius: 1))


        .cornerRadius(10)
        .padding(.vertical)
        .shadow(radius: 3)
        .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).midX) / 40), axis: (x: -4, y: -3, z: -3))
    }
  }
}
