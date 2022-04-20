//
//  ViewUtil.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import Foundation
import UIKit
import SwiftUI

class ViewUtil{
    func getSafeAreaSize(_ type: ViewUtilSafeAreaType)->CGFloat{
        switch type{
        case .bottom:
            return (UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0)
        case .top:
            return (UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0)
        }
    }
    enum ViewUtilSafeAreaType{
        case bottom, top
    }
}
