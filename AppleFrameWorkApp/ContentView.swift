//
//  ContentView.swift
//  AppleFrameWorkApp
//
//  Created by Muhammad Zeshan on 03/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        VStack {
           
            LinearGradient(colors: [isNight ? .black :  .red, isNight ? .gray : .yellow], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            
            Button{
                isNight.toggle()
                
            }label: {
                Text("Change Theme Color")
            }
        }
    }
}

#Preview {
    ContentView()
}
