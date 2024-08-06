//
//  CellView.swift
//  ServiceHandsTestApp
//
//  Created by Тася Галкина on 06.08.2024.
//

import Foundation
import SwiftUI

struct CellView: View {
    
    let cellModel: CellModel
    
    // var cellDescription: cellModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(cellModel.imageType)
                .resizable()
                .frame(width: 40)
            
            VStack(alignment: .leading, spacing: 16) {
                Text(cellModel.cellType.rawValue)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Text(cellModel.cellDescription)
                    .font(.system(size: 14))
            }
        }
    }
}
