//
//  RatingUtil.swift
//  doomovie
//
//  Created by Alejandro Trujillo Moya on 20/4/22.
//

import Foundation
import SwiftUI

extension Double{
    func setRatingColor()->Color{
        switch self {
        case 0...0.99:
        return Color.rating0
        case 1.00...1.99:
        return Color.rating1
        case 2.00...2.99:
        return Color.rating2
        case 3.00...3.99:
        return Color.rating3
        case 4.00...4.99:
        return Color.rating4
        case 5.00...5.99:
        return Color.rating5
        case 6.00...6.99:
        return Color.rating6
        case 7.00...7.99:
        return Color.rating7
        case 8.00...8.99:
        return Color.rating8
        case 9.00...9.49:
        return Color.rating9
        case 9.59...10:
        return Color.rating10
        default:
        return Color.onSurface
        }
    }
        
    func setRatingText()->String{
        switch self {
        case 0...0.99:
            return "rating-0-text".localized()
        case 1.00...1.99:
            return "rating-1-text".localized()
        case 2.00...2.99:
            return "rating-2-text".localized()
        case 3.00...3.99:
            return "rating-3-text".localized()
        case 4.00...4.99:
            return "rating-4-text".localized()
        case 5.00...5.99:
            return "rating-5-text".localized()
        case 6.00...6.99:
            return "rating-6-text".localized()
        case 7.00...7.99:
            return "rating-7-text".localized()
        case 8.00...8.99:
            return "rating-8-text".localized()
        case 9.00...9.49:
            return "rating-9-text".localized()
        case 9.50...10:
            return "rating-10-text".localized()
        default:
        return "---"
        }
    }
}
