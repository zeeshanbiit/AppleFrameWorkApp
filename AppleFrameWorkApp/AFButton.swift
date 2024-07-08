//
//  AFButton.swift
//  AppleFrameWorkApp
//
//  Created by Muhammad Zeshan on 09/07/2024.
//

import SwiftUI

struct AFButton: View {
    
    var title:String
    var body: some View {
        Text(title)
            .frame(width: 250, height: 50)
            .font(.title2)
            .background(.red)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Hello World")
}
