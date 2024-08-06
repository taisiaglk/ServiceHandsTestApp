//
//  CellModel.swift
//  ServiceHandsTestApp
//
//  Created by Тася Галкина on 06.08.2024.
//

import Foundation

enum CellType: String {
    case dead
    case alive
    case newLife
}

struct CellModel {
    let imageType: String
    let cellType: CellType
    let cellDescription: String
}
