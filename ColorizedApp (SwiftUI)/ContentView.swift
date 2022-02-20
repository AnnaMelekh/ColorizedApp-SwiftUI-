//
//  ContentView.swift
//  ColorizedApp (SwiftUI)
//
//  Created by Anna Melekhina on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderRedValue = Double.random(in: 0...255)
    @State private var sliderRedText = ""
    
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 0.1156305, green: 0.4357837439, blue: 0.7079777122, alpha: 1))
                .ignoresSafeArea()
            VStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.red)
                    .frame(width: 250, height: 100)
                HStack{
                    Text("\(sliderRedValue)")
                        .padding()
                    Slider(value: $sliderRedValue)
                        .padding()
                    TextField("text", text: $sliderRedText)
                        .background()
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
