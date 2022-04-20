//
//  HapticsUtil.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import Foundation
import UIKit

class HapticsUtil{
    func createVibration() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}
