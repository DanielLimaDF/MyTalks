//
//  PhysicsCategory.swift
//  GravityField
//
//  Created by daniel.da.cunha.lima on 22/11/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import Foundation

struct PhysicsCategory {
    static let planet: UInt32 = 0b1 << 1
    static let asteroid: UInt32 = 0b1 << 2
}
