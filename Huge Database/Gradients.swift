//
//  Gradients.swift
//  Huge Database
//
//  Created by Programmer on 6/13/21.
//

import SwiftUI

struct Gradients: View {
    @State private var angle: Double = 0
    @GestureState private var scaleEffectOne: CGFloat = CGFloat(1.0)
    
    @State private var indexFirst: Double = 0.0
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false){
                // MARK: - LinearGradient
                
                
                Text("LinearGradient ")
                    
                    .underline(true, color: Color.purple)
                    .header()
                    
                LinearGradient(gradient: Gradient(
                                colors: [.red, .orange, .yellow]),
                               startPoint: .top,
                               endPoint: .bottom)
                    .frame(width: UIScreen.main.bounds.width - 10,
                           height: 200)
                ScrollView(.horizontal){
                    Text(
                """
                LinearGradient(gradient: Gradient(
                               colors: [.red, .orange, .yellow]),
                               startPoint: .top,
                               endPoint: .bottom)
                          .frame(width: UIScreen.main.bounds.width - 10,
                                      height: 200)
                """)
                }
                .zIndex(indexFirst)
                .background(Color(#colorLiteral(red: 0.9086712599, green: 0.9087928534, blue: 0.9118834138, alpha: 1)))
                .padding(5)
                .scaleEffect(scaleEffectOne)
                .gesture(
                MagnificationGesture()
                    .updating($scaleEffectOne){ currentState, gestureState, transaction in
                        gestureState = currentState
                        indexFirst = 1
                    }
                    )
                // MARK: - AngularGradient
                
                Text("AngularGradient")
                    .underline(true, color: Color.purple)
                    .header()
                AngularGradient(gradient: Gradient(
                                colors: [.red, .purple, .blue, .green, .red]),
                                center: .center)
                    .frame(width: UIScreen.main.bounds.width - 10,
                           height: 200)
                ScrollView(.horizontal){
                Text("""
                          AngularGradient(gradient: Gradient(
                                        colors: [.red, .purple, .blue, .green, .red]),
                                        center: .center)
                        
                        angle(.degrees(45)) - can be take as a parameter as well
                        gives a rotation effect
                        startAngle(.degrees(45)), endAngle(.degrees(90))
                        """)
                }
                .background(Color.gray.opacity(0.2))
                .padding(5)
                // MARK: - RadialGradient

                Text("RadialGradient")
                    .underline(true, color: Color.purple)
                    .header()
                RadialGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green]),
                               center: .center,
                               startRadius: 20,
                               endRadius: 120)
                    .frame(width: UIScreen.main.bounds.width - 10, height: 200)
                ScrollView(.horizontal){
                Text("""
                    RadialGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green]),
                                   center: .center,
                                   startRadius: 20,
                                   endRadius: 120)
                    """)
                }
                .background(Color.gray.opacity(0.2))
                .padding(5)
                
                // MARK: - AngularGradient plus angle
                // The VStack is needed because the number of elements is 10
                
                VStack {
                    VStack(spacing: 0){
                        Text("AngularGradient")
                            .underline(true, color: .purple)
                            .header()
                        Text("with an angle parameter")
                            .underline(true, color: .purple)
                            .header()
                    }
                    HStack {
                        Slider(value: $angle, in: 0...360, step: 1)
                            .padding(.horizontal, 1)
                        Text("\(angle, specifier: "%.0f")")
                            .frame(width: 100)
                    }
                    .padding(.horizontal, 10)
                    
                    AngularGradient(gradient: Gradient(colors: [.red, .orange, .green, .blue]),
                                    center: .center,
                                    angle:   .degrees(angle))
                        .frame(width: UIScreen.main.bounds.width - 10, height: 200)
                    ScrollView(){
                    Text("""
                        AngularGradient(gradient: Gradient(colors: [.red, .orange, .green, .blue]),
                                        center: .center,
                                        angle:   \(angle, specifier: "%.0f"))
                        """
                        )
                    
                    }
                    .frame(width: UIScreen.main.bounds.width - 10)
                    .background(Color.gray.opacity(0.2))
                    .padding(5)
                }
            }
            .navigationBarTitleDisplayMode(.automatic)
        }
        
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}

