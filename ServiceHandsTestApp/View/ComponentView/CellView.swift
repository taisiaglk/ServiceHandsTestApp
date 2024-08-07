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
    
    var body: some View {
        HStack(spacing: 16) {
            Image(cellModel.imageType)
                .resizable()
                .frame(width: 40, height: 40)
                .overlay {
                    Text(cellModel.imageEmoji)
                }
                .padding(.leading, 16)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(cellModel.cellType.rawValue)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Text(cellModel.cellDescription)
                    .font(.system(size: 14))
            }
            .padding(.top, 16)
            .padding(.bottom, 9)
            
            Spacer()
        }
        .background(Color(.white))
        .cornerRadius(8)
        .padding(.horizontal, 16)
        
    }
}
