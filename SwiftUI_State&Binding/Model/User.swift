//
//  User.swift
//  SwiftUI_State&Binding
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct User {
  
  var imageName: String
  var name: String
  var likedBooks: [Book]
  
  init(name: String, imageName: String, likedBooks: [Book] = []) {
    self.name = name
    self.imageName = imageName
    self.likedBooks = likedBooks
  }
}

extension User {
  static let exampleUser = User(name: "Ray", imageName: "Ray")
}

