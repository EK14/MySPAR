//
//  ListSection.swift
//  MySpar
//
//  Created by Элина Карапетян on 14.08.2023.
//

import Foundation

enum ListSection{
    case stories([ListItem])
    case promotions([ListItem])
    case selection([ListItem])
    case recommend([ListItem])
    case sweetMood([ListItem])
//    case BBQWithABang([String])
//    case specialForYou([String])
//    case forKids([String])
//    case cookForYou([String])
//    case video([String])
//    case weLoveFresh([String])
//    case purityAndBeauty([String])
//    case brands([String])
//    case childrenCare([String])
//    case sparNovelty([String])
    
    var items: [ListItem]{
        switch self{
        case .stories(let items),
                .promotions(let items),
                .selection(let items),
                .recommend(let items),
                .sweetMood(let items):
//                .BBQWithABang(let items),
//                .specialForYou(let items),
//                .forKids(let items),
//                .cookForYou(let items),
//                .video(let items),
//                .weLoveFresh(let items),
//                .purityAndBeauty(let items),
//                .brands(let items),
//                .childrenCare(let items),
//                .sparNovelty(let items):
            return items
        }
    }
    
    var count: Int{
        return items.count
    }
    
    var title: String{
        switch self{
        case .stories:
            return "Stories"
        case .promotions:
            return "Promotions"
        case .selection:
            return "Selection"
        case .recommend:
            return "Recommend"
        case .sweetMood:
            return "SweetMood"
//        case .BBQWithABang:
//            return "BBQWithABang"
//        case .specialForYou:
//            return "SpecialForYou"
//        case .forKids:
//            return "ForKids"
//        case .cookForYou:
//            return "CookForYou"
//        case .video:
//            return "Video"
//        case .weLoveFresh:
//            return "WeLoveFresh"
//        case .purityAndBeauty:
//            return "PurityAndBeauty"
//        case .brands:
//            return "Brands"
//        case .childrenCare:
//            return "ChildrenCare"
//        case .sparNovelty:
//            return "SparNovelty"
        }
    }
}
