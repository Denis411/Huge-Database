//
//  TrimAndShapes.swift
//  Huge Database
//
//  Created by Programmer on 6/15/21.
//

import SwiftUI

struct TrimAndShapes: View {
    @State private var firstNum: CGFloat = 0
    @State private var secondNum: CGFloat = 1
    var body: some View {
        VStack{
            Text("Trim on a shape.")
                .header()
            HStack{
                Text("from: \(firstNum, specifier: "%.1f")")
                    .frame(width: 80)
                Slider(value:$firstNum, in: 0...1)
                    .padding(10)
            }
            HStack{
                Text("to: \(secondNum, specifier: "%.1f")")
                    .frame(width: 80)
                Slider(value:$secondNum, in: 0...1)
                    .padding(10)
            }
           TabView{
                
            ScrollView(showsIndicators: false){
                Circle()
                    .trim(from: firstNum, to: secondNum)
                    .fill(Color.blue)
                    .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height - 20)
                    
                
            }
            .tabItem{
                Image(systemName: "circle.fill")
            }
            ScrollView(showsIndicators: false){
                Circle()
                    .stroke(lineWidth: 40)
                    .trim(from: firstNum, to: secondNum)
                    .fill(Color.blue)
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 20)
                    .padding(40)
                    
                
            }
            .tabItem{
                Image(systemName: "circle")
            }
            ScrollView(showsIndicators: false){
            Circle()
                .trim(from: firstNum, to: secondNum)
                .stroke(Color.red, lineWidth: 20)
                .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height - 20)
                .padding(20)
                
            }
            .frame(width: UIScreen.main.bounds.width)
            .tabItem{
                Image(systemName: "circle")
                    .accentColor(.red)
            }
            }
          Spacer()
        }
    }
}

struct TrimAndShapes_Previews: PreviewProvider {
    static var previews: some View {
        TrimAndShapes()
    }
}
