//
//  Practice.swift
//  
//
//  Created by Programmer on 6/19/21.
//

import SwiftUI

struct ScrollReader: View {
    @State private var array: [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven"]
    @State private var chosenValue: String = ""
    @State private var tracking: String = ""
    var body: some View{
        
        VStack {
            TextField("Enter text ...", text: $chosenValue)
                .padding(20)
                .background(Color.gray)
                .font(.system(size: 20, weight: .black, design: .serif))
                .foregroundColor(.white)
            
            
            ScrollView(showsIndicators: false){
                ScrollViewReader{ proxy in
                    
                    ForEach(array, id: \.self){ valueForEach in
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.gray)
                                .frame(width: 250, height: 150)
                                .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.yellow, lineWidth: 5))
                                .shadow(color: .red, radius: 15, x: 5, y: 5)
                                
                                .padding(40)
                                .tag(valueForEach)
                            Text("Here is the time: \(valueForEach)")
                                .foregroundColor(.white)
                                .font(.system(size: 20,design: .serif))
                            
                        }
                            
                            
                            
                        
                    }.onChange(of: chosenValue){ value in
                        
                        proxy.scrollTo(value, anchor: .top)
                }
                
            }
            }
        }
    }
}
struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        ScrollReader()
    }
}
