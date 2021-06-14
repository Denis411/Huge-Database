//
//  PractiseCGSize.swift
//  Huge Database
//
//  Created by Programmer on 6/14/21.
//

import SwiftUI

struct PractiseCGSize: View {
    @State private var width = 20
    @State private var height = 20
    @State private var selectedColor: Color = .blue
    @State private var shapeWidth = UIScreen.main.bounds.width - 20
    var body: some View {
        ScrollView(.vertical){
            VStack{
                VStack{
                    Text("CornerSize: CGSize")
                        .fontWeight(.bold)
                    
                    // MARK: - Stepper type one
                    
                    Stepper("Widht: \(width)", value: $width, in: -20...300, step: 2)
                    
                    // MARK: - Stepper type two
                    
                    Stepper("Height: \(height)"){
                        self.height += 1
                    } onDecrement: {
                        self.height -= 1
                    }
                    // MARK: -
                    Text("Color of the shape")
                        .fontWeight(.bold)
                    ColorPicker("Select a color", selection: $selectedColor)
                }
                .padding(5)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(15, antialiased: true)
                .padding(10)

                RoundedRectangle(cornerSize: CGSize(width: self.width, height: self.height))
                    .fill(selectedColor)
                    .frame(width: self.shapeWidth, height: 100)
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .frame(maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 0.33)))
        
    }
    
}

struct PractiseCGSize_Previews: PreviewProvider {
    static var previews: some View {
        PractiseCGSize()
    }
}
