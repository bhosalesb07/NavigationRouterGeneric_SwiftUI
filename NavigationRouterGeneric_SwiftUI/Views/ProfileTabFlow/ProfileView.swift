//
//  ProfileView.swift
//  NavigationRouterGeneric_SwiftUI
//
//  Created by Mac on 20/11/25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var router: ProfileFlowRouter
    
    var body: some View {
        NavigationStack(path: $router.navPaths){
            mainView
                .navigationDestination(for: ProfileFlow.self) { destination in
                    destination.destinationView
                        .navigationTitle(destination.title)
                        .toolbarRole(.editor)
                        .navigationBarTitleDisplayMode(.large)
                }
        }
    }
    
    private var mainView: some View{
        VStack{
            Button("Go to profile A") {
                router.navigate(to: .profileA)
            }
        }
        .navigationTitle("Profile View")
    }
}




struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
