//
//  Router+Profile.swift
//  NavigationRouterGeneric_SwiftUI
//
//  Created by Mac on 20/11/25.
//

import Foundation
import SwiftUI



enum ProfileFlow:NavigationDestination{
    case profileA
    case profileB
    case profileC
    
    var title: String{
        switch self {
        case .profileA:
            return "profile A"
        case .profileB:
            return "profile B"
        case .profileC:
            return "profile C"
        }
    }
    var destinationView: some View{
        switch self {
        case .profileA:
            ProfileAView()
        case .profileB:
            ProfileBView()
        case .profileC:
            ProfileCView()
        }
    }
    
}

typealias ProfileFlowRouter = Router<ProfileFlow>
