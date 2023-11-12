//
//  PipeView.swift
//  FlappyBird
//
//  Created by Maxim Makarov on 08.11.2023.
//

import SwiftUI

struct PipeView: View {
    let topPipeHeight: CGFloat
    let pipeWidth: CGFloat
    let pipeSpacing: CGFloat
    
    var body: some View {
        GeometryReader { geometry in
            let availableHeight = geometry.size.height - pipeSpacing
            let bottomPipeHeight = availableHeight - topPipeHeight
            
            VStack {
                // Верхняя труба
                Image(.flappeBirdPipe)
                    .resizable()
                    .rotationEffect(.degrees(180))
                    .frame(width: pipeWidth, height: topPipeHeight)
                //  .border(.black, width: 2)
                
                Spacer()
                    .frame(height: pipeSpacing)
                
                Image(.flappeBirdPipe)
                    .resizable()
                    .frame(width: pipeWidth, height: bottomPipeHeight)
                //  .border(.black, width: 2)
            }
        }
    }
}

#Preview {
    PipeView(topPipeHeight: 300, pipeWidth: 100, pipeSpacing: 100)
}
