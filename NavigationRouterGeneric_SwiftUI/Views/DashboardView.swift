//
//  DashboardView.swift
//  NavigationRouterGeneric_SwiftUI
//
//  Created by Mac on 20/11/25.
//

import SwiftUI

enum TabFlow: Hashable {
    case home
    case profile
}

struct DashboardView: View {
    @StateObject var homeRouter = HomeFlowRouter()
    @StateObject var profileRouter = ProfileFlowRouter()
    @State private var selectedTab: TabFlow = .home
    
    var body: some View {
        TabView{
            HomeView()
                .environmentObject(homeRouter)
                .tag(TabFlow.home)
                .tabItem {
                    Label("Home View", systemImage: "house.fill")
                    
                }
            
            ProfileView()
                .environmentObject(profileRouter)
                .tag(TabFlow.profile)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
    
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
