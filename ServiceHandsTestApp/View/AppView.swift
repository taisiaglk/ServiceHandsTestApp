//
//  AppView.swift
//  ServiceHandsTestApp
//
//  Created by Тася Галкина on 06.08.2024.
//

import SwiftUI

struct AppView: View {
    
    @ObservedObject var viewModel = AppViewModel()
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Клеточное наполнение")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    ForEach(viewModel.cells) { cell in
                        CellView(cellModel: CellModel(imageType: cell.imageType, imageEmoji: cell.imageEmoji, cellType: cell.cellType, cellDescription: cell.cellDescription))
                    }
                }
                
            }
            
            Spacer()
            
            Button(action: {
                viewModel.addCell()
            }, label: {
                Text("СОТВОРИТЬ")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .frame(height: 36)
                    .frame(maxWidth: .infinity)
                    .background(Color.buttonColor)
                    .cornerRadius(4)
                    .padding(.horizontal, 14)
            })
        }
        .background(Color(.purple))
        
    }
}

#Preview {
    AppView()
}
