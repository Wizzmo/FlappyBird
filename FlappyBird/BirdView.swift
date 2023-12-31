//
//  BirdView.swift
//  FlappyBird
//
//  Created by Maxim Makarov on 08.11.2023.
//

import SwiftUI

struct BirdView: View {
    let birdSize: CGFloat
    
    var body: some View {
        Image(.flappyBird)
            .resizable()
            .scaledToFit()
            .frame(width: birdSize, height: birdSize)
//          .border(.red, width: 2)
    }
}

#Preview {
    BirdView(birdSize: 80)
}
