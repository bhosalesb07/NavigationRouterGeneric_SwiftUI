//
//  ProfileViews.swift
//  NavigationRouterGeneric_SwiftUI
//
//  Created by Mac on 20/11/25.
//

import Foundation
import SwiftUI


struct ProfileAView: View {
    @EnvironmentObject var router : ProfileFlowRouter
    var body: some View {
        VStack{
            Button("Go to Profile B") {
                router.navigate(to: .profileB)
            }
        }
    }
}

struct ProfileBView: View {
    @EnvironmentObject var router : ProfileFlowRouter
    var body: some View {
        VStack{
            Button("Go to Profile C") {
                router.navigate(to: .profileC)
            }
        }
    }
}


struct ProfileCView: View {
    @EnvironmentObject var router : ProfileFlowRouter
    
    var body: some View {
        VStack(alignment: .center,spacing: 20){
            Button("Go to Home B") {
                router.navigationBack()
            }
            Button("Go to Home A") {
                router.navigateBack(to: .profileA)
            }
            Button("Go to Home") {
                router.navigateToRoot()
            }
            Button("Switch Root") {
                router.switchRoot(to: .Profile)
            }
        }
    }
}
