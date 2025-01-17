//
//  ContentView.swift
//  AnimationsSwiftUI
//
//  Created by Ömer on 17.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scale = 1.0
    @State private var big = false
    
    var body: some View {
        VStack {
           Text("Tab Me!")
                .scaleEffect(scale)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 1)){
                        if big
                        {
                            scale = 1.0
                        }
                        else
                        {
                            scale = 2.0
                        }
                        big.toggle()
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
