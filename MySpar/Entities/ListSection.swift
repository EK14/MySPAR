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
    case BBQWithABang([ListItem])
    
    var items: [ListItem]{
        switch self{
        case .stories(let items),
                .promotions(let items),
                .selection(let items),
                .recommend(let items),
                .sweetMood(let items),
                .BBQWithABang(let items):
            return items
        }
    }
    
    var count: Int{
        return items.count
    }
    
    var title: String{
        switch self{
        case .stories,
                .promotions,
                .selection:
            return ""
        case .recommend:
            return "Рекомендуем"
        case .sweetMood:
            return "Сладкое настроение"
        case .BBQWithABang:
            return "Шашлыки на ура"
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
