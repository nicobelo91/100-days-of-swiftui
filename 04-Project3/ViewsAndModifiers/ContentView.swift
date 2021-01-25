  //
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Nico Cobelo on 24/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("View Modifier")
            .titleStlye()
    }
}
  
  struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)
    }
  }
  
  extension View {
    func titleStlye() -> some View {
        self.modifier(Title())
    }
  }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
