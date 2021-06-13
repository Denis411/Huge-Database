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
            NavigationLink(destination: Gradients()){
            Text("Hello, world!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
