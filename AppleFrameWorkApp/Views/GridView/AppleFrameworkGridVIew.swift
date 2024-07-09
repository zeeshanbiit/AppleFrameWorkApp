//
//  AppleFrameworkGridVIew.swift
//  AppleFrameWorkApp
//
//  Created by Muhammad Zeshan on 04/07/2024.
//

import SwiftUI

struct AppleFrameworkGridVIew: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationStack{
            List{
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(value:framework){
                        FrameworkTitleView(framework:framework)
                   }
                    
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self){framework in
                    FrameWorkDetailView(framewrok: framework)
                }
        }.tint(Color(.label))
        
        
    }
}

#Preview {
    AppleFrameworkGridVIew()
}



