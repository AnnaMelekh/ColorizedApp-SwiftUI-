//
//  HStackFile.swift
//  ColorizedApp (SwiftUI)
//
//  Created by Anna Melekhina on 21.02.2022.
//

import SwiftUI

struct HStackFile: View {
    @State var value: Double
    @State var text: String
    let color: Color
    
    var body: some View {
        
        HStack{
        Text("\(lround(value))")
            .padding()
        ColorSliderView (color: color, value: $value)
        
        TextField("text", text: $text)
            .onSubmit {
                guard text.isEmpty == false && Double(text) != nil else { return }
                value = Double(text) ?? 0
            }
            .frame(width: 80)
            .background()
            .padding()
        }
    }
}

struct HStackFile_Previews: PreviewProvider {
    static var previews: some View {
        HStackFile(value: 0, text: "", color: .red)
    }
}
