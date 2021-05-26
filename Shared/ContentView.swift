//
//  ContentView.swift
//  Shared
//
//  Created by Luke Drushell on 5/25/21.
//

import SwiftUI
import Introspect

struct ContentView: View {
    var body: some View {
        TabView {
            Rectangle()
                .tabItem {
                    Label("Rectangle", systemImage: "rectangle")
                }
            Cylinder()
                .tabItem {
                    Label("Cylinder", systemImage: "capsule.portrait")
                }
            Sphere()
                .tabItem {
                    Label("Sphere", systemImage: "circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension  UITextField {
   @objc func doneButtonTapped(button:UIBarButtonItem) -> Void {
      self.resignFirstResponder()
   }
}
