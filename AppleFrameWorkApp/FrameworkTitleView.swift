//
//  FrameworkTitleView.swift
//  AppleFrameWorkApp
//
//  Created by Muhammad Zeshan on 09/07/2024.
//

import SwiftUI

struct FrameworkTitleView:View {
    
    var framework:Framework
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }.padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
