//
//  Router+Home.swift
//  NavigationRouterGeneric_SwiftUI
//
//  Created by Mac on 20/11/25.
//

import Foundation
import SwiftUI

enum HomeFlow:NavigationDestination{
    case homeA
    case homeB
    case homeC
    
    var title: String{
        switch self {
        case .homeA:
            return "Home A"
        case .homeB:
            return "Home B"
        case .homeC:
            return "Home C"
        }
    }
    var destinationView: some View{
        switch self {
        case .homeA:
            HomeAView()
        case .homeB:
            HomeBView()
        case .homeC:
            HomeCView()
        }
    }
    
}

typealias HomeFlowRouter = Router<HomeFlow>
