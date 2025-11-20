//
//  HomeViews.swift
//  NavigationRouterGeneric_SwiftUI
//
//  Created by Mac on 20/11/25.
//

import Foundation
import SwiftUI

struct HomeAView: View {
    @EnvironmentObject var router: HomeFlowRouter
    var body: some View {
        VStack{
            Button("Go to Home B") {
                router.navigate(to: .homeB)
            }
        }
    }
}

struct HomeBView: View {
    @EnvironmentObject var router: HomeFlowRouter

    var body: some View {
        VStack{
            Button("Go to Home C") {
                router.navigate(to: .homeC)
            }
        }
    }
}


struct HomeCView: View {
    @EnvironmentObject var router: HomeFlowRouter

    var body: some View {
        VStack(alignment: .center,spacing: 20){
            Button("Go to Home B") {
                router.navigationBack()
            }
            Button("Go to Home A") {
                router.navigateBack(to: .homeA)
            }
            Button("Go to Home") {
                router.navigateToRoot()
            }
        }
    }
}
