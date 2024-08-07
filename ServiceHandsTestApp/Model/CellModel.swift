//
//  CellModel.swift
//  ServiceHandsTestApp
//
//  Created by Тася Галкина on 06.08.2024.
//

import Foundation

enum CellType: String {
    case dead = "Мёртвая"
    case alive = "Живая"
    case newLife = "Жизнь"
}

struct CellModel: Identifiable, Equatable, Hashable {
    var id = UUID()
    let imageType: String
    let imageEmoji: String
    let cellType: CellType
    let cellDescription: String
}
