//
//  HomeView.swift
//  NavigationRouterGeneric_SwiftUI
//
//  Created by Mac on 20/11/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var router = HomeFlowRouter()
    
    var body: some View {
        NavigationStack(path: $router.navPaths) {
            mainView
                .navigationDestination(for: HomeFlow.self) { destination in
                    destination.destinationView
                        .navigationTitle(destination.title)
                        .toolbarRole(.editor) // to remobe back button text
                        .navigationBarTitleDisplayMode(.inline)// to make title small
                        
                }
                .navigationTitle("Home View")
        }.environmentObject(router)
            
        
    }
    
    private var mainView: some View{
            VStack{
                Button {
                    router.navigate(to: .homeA)
                } label: {
                    Text("Go to Home A")
                }
            }
        }
}





struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
