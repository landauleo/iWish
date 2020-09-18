//
//  ContentView.swift
//  iwish
//
//  Created by OVECHKIN Ilya on 19.09.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var currentAmount = 0
    @State private var hover = false
    
    var body: some View {
        Text("Hello, world \(self.currentAmount)")
            .foregroundColor(self.hover ? Color.blue : Color.red)
            .onTapGesture(perform: {
                handleTap()
            })
            .onLongPressGesture {
                resetState()
            }
    }
    
    func resetState() {
        self.hover = false
        self.currentAmount = 0
    }
    
    func handleTap() {
        self.hover.toggle()
        self.currentAmount = self.currentAmount + 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 8 Plus")
            ContentView()
                .previewDevice("iPhone 11")
        }
    }
}
