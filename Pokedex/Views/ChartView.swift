//
//  ChartView.swift
//  Pokedex
//
//  Created by Américo MQ on 25/11/22.
//

import SwiftUI

struct ChartView: View {
    let rectangleColor: Color
    let rectangleWidth: CGFloat
    
    init(rectangleColor: Color, rectangleWidth: CGFloat) {
        self.rectangleColor = rectangleColor
        self.rectangleWidth = rectangleWidth
    }
    var body: some View {
        
        RoundedRectangle(cornerRadius: 30)
            .fill(rectangleColor)
            .frame(width: rectangleWidth, height: 25)
            .opacity(90)
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        let width = UIScreen.main.bounds.width * 0.5
        ChartView(rectangleColor: Color.gray, rectangleWidth: width)
    }
}
