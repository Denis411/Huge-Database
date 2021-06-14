//
//  ContentView.swift
//  Huge Database
//
//  Created by Programmer on 6/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                NavigationLink(destination: Gradients()){
                Text("Hello, world!")
                }
                NavigationLink(destination: OneGrid()){
                Text("Hello, world two!")
                }
                NavigationLink(destination: PractiseCGSize()){
                    Text("CGSize practise")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
