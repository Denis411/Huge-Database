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
                    ZStack {
                        Rectangle()
                            .trim(from: someValueFrom, to: someValueTo)
                            .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                            .frame(width: 200, height: 100)
                            .padding(10)
                        Rectangle()
                            .trim(from: someValueFrom, to: someValueTo)
                            .frame(width: 200, height: 100)
                            .padding(10)
                    }
                }
                
                
                VStack {
                    Text("Circle")
                    ZStack {
                        Circle()
                            .trim(from: someValueFrom, to: someValueTo)
                            .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                            .frame(width: 150, height: 150)
                            .padding(10)
                        Circle()
                            .trim(from: someValueFrom, to: someValueTo)
                            .frame(width: 150, height: 150)
                            .padding(10)
                    }
                }
                
                VStack {
                    Text("RoundedRectangle")
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .trim(from: someValueFrom, to: someValueTo)
                            .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                            .frame(width: 150, height: 150)
                            .padding(10)
                        RoundedRectangle(cornerRadius: 20)
                            .trim(from: someValueFrom, to: someValueTo)
                            .frame(width: 150, height: 150)
                            .padding(10)
                    }
                }
                
                VStack {
                    Text("Ellipse")
                    ZStack {
                        Ellipse()
                            .trim(from: someValueFrom, to: someValueTo)
                            .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                            .frame(width: 150, height: 100)
                            .padding(10)
                        Ellipse()
                            .trim(from: someValueFrom, to: someValueTo)
                            .frame(width: 150, height: 100)
                            .padding(10)
                    }
                }
                
                VStack {
                    Text("Capsule")
                    ZStack {
                        Capsule()
                            .trim(from: someValueFrom, to: someValueTo)
                            .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .square, lineJoin: .bevel))
                            .frame(width: 150, height: 100)
                            .padding(10)
                        
                        Capsule()
                            .trim(from: someValueFrom, to: someValueTo)
                            .frame(width: 150, height: 100)
                            .padding(10)
                    }
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



