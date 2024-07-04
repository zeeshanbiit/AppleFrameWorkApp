//
//  FrameWorkDetailView.swift
//  AppleFrameWorkApp
//
//  Created by Muhammad Zeshan on 04/07/2024.
//

import SwiftUI

struct FrameWorkDetailView: View {
    
    var framewrok : Framework
    @Binding var isShowingDetailView:Bool
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Spacer()
                    Button{
                        
                        isShowingDetailView = false 
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44,height: 44)
                    }
                }.padding()
               
                Spacer()
                FrameworkTitleView(framework: framewrok)
                
                Text(framewrok.description).font(.body).padding()
                Spacer()
                Button{
                    
                    
                }label: {
                    Text("Learn More")
                        .frame(width: 250, height: 50)
                        .font(.title2)
                        .background(.red)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .cornerRadius(10)
                    
                }
                Spacer()
            }
           
        }
    }
}

#Preview {
    FrameWorkDetailView(framewrok: MockData.sampleFramework, isShowingDetailView:.constant(false) )
}
