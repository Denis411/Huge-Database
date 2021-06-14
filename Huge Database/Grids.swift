//
//  1Grids.swift
//  Huge Database
//
//  Created by Programmer on 6/13/21.
//

import SwiftUI

struct Grids: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)]
    var body: some View {
        ScrollView(showsIndicators: false){
            LazyVGrid(columns: columns){
                ForEach(0..<10){x in
                    Text("column: \(x)")
                        .padding(3)
                        .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(10)
                        .overlay(Capsule().stroke(Color.blue, lineWidth: 7))
                }
            }
            
        }
    }
}

struct _Grids_Previews: PreviewProvider {
    static var previews: some View {
        Grids()
    }
}
