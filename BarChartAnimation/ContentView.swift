//
//  ContentView.swift
//  BarChartAnimation
//
//  Created by Dinesh Danda on 6/5/20.
//  Copyright © 2020 Dinesh Danda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem = 0
    @State var dataPoins: [CGFloat] = [50, 100, 150]
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.3378706319, green: 0.937254902, blue: 0.9115050101, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Calory Intake")
                    .font(.system(size: 35))
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelectedItem, label: Text ("")) {
                    Text("Morning").tag(0)
                    Text("Afternoon").tag(1)
                    Text("Evening").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 25)
                
                
                HStack (spacing: 20) {
                     BarView(topCapsuleValue: dataPoins[pickerSelectedItem])
                     BarView(topCapsuleValue: dataPoins[pickerSelectedItem])
                     BarView(topCapsuleValue: dataPoins[pickerSelectedItem])
                     BarView(topCapsuleValue: dataPoins[pickerSelectedItem])
                     BarView(topCapsuleValue: dataPoins[pickerSelectedItem])
                     BarView(topCapsuleValue: dataPoins[pickerSelectedItem])
                     BarView(topCapsuleValue: dataPoins[pickerSelectedItem])
                }.padding(.top, 24)
            }
        }
    }
}

struct BarView: View {
    var topCapsuleValue: CGFloat
    
    var body: some View {
    VStack {
        ZStack (alignment: .bottom){
            Capsule().frame(width: 30, height: 200)
                .foregroundColor(Color(#colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 0.5345141267)))
            Capsule().frame(width: 30, height: topCapsuleValue)
                .foregroundColor(.white)
        }
        Text("Su").padding(.top, 8)
    }
  }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
