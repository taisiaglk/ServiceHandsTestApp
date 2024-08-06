//
//  AppViewModel.swift
//  ServiceHandsTestApp
//
//  Created by Тася Галкина on 06.08.2024.
//

import Foundation

final class AppViewModel: ObservableObject  {
    
    @Published
    var cells: [CellModel] = []
    
    var deadCellCnt = 0
    var aliveCellCnt = 0
    
    func addCell() {
        let newCellType: CellType = Bool.random() ? .alive : .dead
        
        switch newCellType {
        case .alive:
            aliveCellCnt += 1
            deadCellCnt = 0
        case .dead:
            deadCellCnt += 1
            aliveCellCnt = 0
        default:
            break
        }
        
        let newCell = CellModel(imageType: newCellType == .alive ? "alive" : "dead", imageEmoji: newCellType == .alive ? "\u{1F4A5}" : "\u{1F480}", cellType: newCellType, cellDescription: newCellType == .alive ? "и шевелится!" : "или прикидывается")
        
        cells.append(newCell)
        
        if aliveCellCnt == 3 {
            cells.append(CellModel(imageType: "newLife", imageEmoji: "\u{1F423}", cellType: .newLife, cellDescription: "Ку-ку!"))
            aliveCellCnt = 0
        } else if deadCellCnt == 3 {
            if let index = cells.lastIndex(where: { $0.cellType == .newLife }) {
                cells.remove(at: index)
            }
            deadCellCnt = 0
        }
    }
}
