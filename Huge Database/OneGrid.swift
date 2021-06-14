//
//  OneGrid.swift
//  Huge Database
//
//  Created by Programmer on 6/13/21.
//

import SwiftUI

struct OneGrid: View {
    
    var columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)]
   
    var body: some View {
        
        // MARK: - VGrid
        ScrollView(showsIndicators: false){
            Text("LazyVGrid")
                .underline(true, color: Color.purple)
                .header()
            
            ScrollView(.vertical){
                LazyVGrid(columns: columns){
                    ForEach(0..<20){x in
                        Text("column: \(x)")
                            .padding(3)
                            .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(2)
                            .overlay(Capsule().stroke(Color.blue, lineWidth: 4))
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width - 10, height: 200)
            .background(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
            ScrollView(.horizontal){
            Text("""
                LazyVGrid(columns: columns){
                    ForEach(0..<20){x in
                        Text("column: Color Literal")
                            .padding(3)
                            .foregroundColor(Color Literal)
                            .cornerRadius(2)
                            .overlay(Capsule().stroke(Color.blue, lineWidth: 4))
                    }
                }
                """)
            }
            .background(Color.gray.opacity(0.2))
            .padding(5)
            
            // MARK: - HGrid
            Text("LazyHGrid")
                .underline(true, color: Color.purple)
                .header()
            ScrollView(.horizontal){
                LazyHGrid(rows: columns){
                    ForEach(0..<200){x in
                        Text("column: \(x)")
                            .padding(3)
                            .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                            .cornerRadius(2)
                            .overlay(Capsule().stroke(Color.blue, lineWidth: 4))
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width - 10, height: 200)
            .background(Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)))
            ScrollView(.horizontal){
               Text("""
                    LazyHGrid(rows: columns){
                        ForEach(0..<200){x in
                            Text("column: \\(x)")
                                .padding(3)
                                .foregroundColor(Color(Color Literal))
                                .cornerRadius(2)
                                .overlay(Capsule().stroke(Color.blue, lineWidth: 4))
                        }
                    }
                    """)
                .background(Color.gray.opacity(0.2))
                .padding(5)
            }
            
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct OneGrid_Previews: PreviewProvider {
    static var previews: some View {
        OneGrid()
    }
}




