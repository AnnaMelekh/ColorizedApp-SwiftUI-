//
//  ContentView.swift
//  ColorizedApp (SwiftUI)
//
//  Created by Anna Melekhina on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderRedValue = Double.random(in: 0...255)
    @State private var sliderGreenValue = Double.random(in: 0...255)
    @State private var sliderBlueValue = Double.random(in: 0...255)
    @State private var sliderRedText = ""
    @State private var alertPresented = false
    
    private func checkText() {
        if var _ = Double(sliderRedText) {
            sliderRedValue = Double(sliderRedText) ?? 0
        } else {
            alertPresented.toggle()
            return
        }
        sliderRedText = ""
    }
    
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 0.5,
                                green: 0.3,
                                blue: 0.7,
                                alpha: 1))
                .ignoresSafeArea()
            VStack{
                Spacer()
                RectangleFile()
                    .foregroundColor(Color(#colorLiteral(red: Float(sliderRedValue/255),
                                                         green: Float(sliderGreenValue/255),
                                                         blue: Float(sliderBlueValue/255),
                                                         alpha: 1)))
                
                HStack{
                    Text("\(lround(sliderRedValue))")
                        .padding()
                    ColorSliderView (color: .red, value: $sliderRedValue)

                    TextField("text", text: $sliderRedText)
                        .frame(width: 80)
                        .background()
                        .padding()
                }
                HStack{
                    Text("\(lround(sliderGreenValue))")
                        .padding()
                    ColorSliderView (color: .green, value: $sliderGreenValue)
                    TextField("text", text: $sliderRedText)
                        .frame(width: 80)
                        .background()
                        .padding()
                }
                HStack{
                    Text("\(lround(sliderBlueValue))")
                        .padding()
                    ColorSliderView (color: .blue, value: $sliderBlueValue)

                    TextField("text", text: $sliderRedText)
                        .frame(width: 80)
                        .background()
                        .padding()
                }
                Spacer()
                Button("Done",action: checkText)
                    .foregroundColor(.white)
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
