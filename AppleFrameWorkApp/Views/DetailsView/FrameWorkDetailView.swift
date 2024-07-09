//
//  FrameWorkDetailView.swift
//  AppleFrameWorkApp
//
//  Created by Muhammad Zeshan on 04/07/2024.
//

import SwiftUI

struct FrameWorkDetailView: View {
    var framewrok : Framework
   
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
          
            
            FrameworkTitleView(framework: framewrok)
            Text(framewrok.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
                isShowingSafariView = true
                
            }label: {
               AFButton(title: "Learn More")
            }
            
        }.sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string:framewrok.urlString) ?? URL(string: "www.aaple.com")!)
        })
    }
}

#Preview {
    FrameWorkDetailView(framewrok: MockData.sampleFramework)
}
