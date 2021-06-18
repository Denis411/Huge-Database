//
//  AnglesInGradient.swift
//  jjjjj
//
//  Created by Programmer on 6/18/21.
//

import SwiftUI

struct AnglesInGradient: View {
    @State private var someValueFrom: CGFloat = 0
    @State private var someValueTo: CGFloat = 1
    var body: some View {
        ZStack {
            Color.yellow
            VStack() {
                VStack {
                    Text("Rectangle")
                    Rectangle()
                        .trim(from: someValueFrom, to: someValueTo)
                        .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                        .frame(width: 200, height: 100)
                        .padding(10)
                }
                
                
                VStack {
                    Text("Circle")
                    Circle()
                        .trim(from: someValueFrom, to: someValueTo)
                        .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                        .frame(width: 150, height: 150)
                        .padding(10)
                }
                
                VStack {
                    Text("RoundedRectangle")
                    RoundedRectangle(cornerRadius: 20)
                        .trim(from: someValueFrom, to: someValueTo)
                        .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                        .frame(width: 150, height: 150)
                        .padding(10)
                }
                
                VStack {
                    Text("Ellipse")
                    Ellipse()
                        .trim(from: someValueFrom, to: someValueTo)
                        .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                        .frame(width: 150, height: 100)
                        .padding(10)
                }
                
                VStack {
                    Text("Capsule")
                    Capsule()
                        .trim(from: someValueFrom, to: someValueTo)
                        .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                        .frame(width: 150, height: 100)
                        .padding(10)
                }
                
                VStack(alignment: .leading) {
                    Text("from: \(someValueFrom, specifier: "%.2f")")
                    Slider(value: $someValueFrom, in: 0...1)
                    
                }
                
                VStack(alignment: .leading) {
                    Text("to: \(someValueTo, specifier: "%.2f")")
                    Slider(value: $someValueTo, in: 0...1)
                }

            }
            .scaleEffect(0.8)
        }
    }
    
    
}



struct AnglesInGradient_Previews: PreviewProvider {
    static var previews: some View {
        AnglesInGradient()
    }
}



