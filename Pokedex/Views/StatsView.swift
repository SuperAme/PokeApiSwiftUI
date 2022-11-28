//
//  StatsView.swift
//  Pokedex
//
//  Created by Américo MQ on 25/11/22.
//

import SwiftUI

struct StatsView: View {
    
    let viewModel = PokemonViewModel()
    let propertyIntValue: Int
    let property: String
    let totalWidth = UIScreen.main.bounds.width * 0.5
    let propertyWidth: CGFloat
    let statsBGColor: Color
    
    init(propertyIntValue: Int, property: String, propertyWidth: CGFloat, statsBackGroundColor: Color) {
        self.propertyIntValue = propertyIntValue
        self.property = property
        self.propertyWidth = viewModel.getStatsBarWidth(ValueWidth: propertyWidth)
        self.statsBGColor = statsBackGroundColor
    }
    
    var body: some View {
        HStack() {
            Spacer()
            Text(property)
            Spacer()
            Text("\(propertyIntValue)")
            Spacer()
            ZStack(alignment: .leading) {
                ChartView(rectangleColor: Color.gray, rectangleWidth: totalWidth)
                ChartView(rectangleColor: statsBGColor, rectangleWidth: propertyWidth)
            }
            
        }
    }
    
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(propertyIntValue: 67, property: "Height", propertyWidth: 55, statsBackGroundColor: Color.orange)
    }
}
