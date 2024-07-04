//
//  FrameworkGridViewModel.swift
//  AppleFrameWorkApp
//
//  Created by Muhammad Zeshan on 05/07/2024.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel : ObservableObject{
    
    var selectedFramework : Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
