//
//  Box.swift
//  SwiftUI_State&Binding
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation

final class Box<Value> {
  var value: Value

  init(_ value: Value) {
    self.value = value
  }
}

