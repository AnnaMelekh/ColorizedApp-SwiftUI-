//
//  RectangleFile.swift
//  ColorizedApp (SwiftUI)
//
//  Created by Anna Melekhina on 20.02.2022.
//

import SwiftUI

struct RectangleFile: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth:3))
            .frame(width: 350, height: 200)
            .padding()
    }
}

struct RectangleFile_Previews: PreviewProvider {
    static var previews: some View {
        RectangleFile()
    }
}
