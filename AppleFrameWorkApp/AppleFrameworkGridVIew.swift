//
//  AppleFrameworkGridVIew.swift
//  AppleFrameWorkApp
//
//  Created by Muhammad Zeshan on 04/07/2024.
//

import SwiftUI

struct AppleFrameworkGridVIew: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let column : [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column){
                    ForEach(MockData.frameworks){ framework in
                        
                        FrameworkTitleView(framework:framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }.padding()
            }.navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameWorkDetailView(framewrok: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView)
                }
            
        }
        
        
    }
}

#Preview {
    AppleFrameworkGridVIew()
}


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
