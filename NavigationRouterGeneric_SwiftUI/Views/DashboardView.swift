//
//  DashboardView.swift
//  NavigationRouterGeneric_SwiftUI
//
//  Created by Mac on 20/11/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        TabView{
            HomeView().tabItem {
               Label("Home View", systemImage: "house.fill")
            }
            
            ProfileView().tabItem {
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
