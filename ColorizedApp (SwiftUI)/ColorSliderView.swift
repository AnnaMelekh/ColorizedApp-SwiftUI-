//
//  ColorSliderView.swift
//  ColorizedApp (SwiftUI)
//
//  Created by Anna Melekhina on 20.02.2022.
//

import SwiftUI

struct ColorSliderView: View {
       var color: Color
       @Binding var value: Double
       
       var body: some View {
           Slider(value: $value, in: 0...255, step: 1)
               .accentColor(color)
               .padding()
       }
    }

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(color: .red, value: .constant(0.1))
    }
}
