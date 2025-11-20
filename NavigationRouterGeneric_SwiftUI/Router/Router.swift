//
//  Router.swift
//  NavigationRouterGeneric_SwiftUI
//
//  Created by Mac on 20/11/25.
//

import Foundation
import SwiftUI


protocol NavigationDestination:Equatable{
    associatedtype Destination:View
    
    var title:String {get}
    @ViewBuilder
    var destinationView:Destination {get}
    
}


final class Router<Destination: NavigationDestination>:ObservableObject{
    @Published var navPaths:[Destination] = []
    @Published var stacks:[Destination] = []
    @Published var rootFlow : RootFlow = .Home
    
    enum RootFlow{
        case Home
        case Profile
    }
    
    func navigate(to destination:Destination){
        navPaths.append(destination)
        stacks.append(destination)
    }
    
    func navigationBack(){
        guard !navPaths.isEmpty else{return}
        navPaths.removeLast()
        stacks.removeLast()
    }
    
    func navigateToRoot(){
        navPaths.removeLast(navPaths.count)
        stacks.removeAll()
    }
    
    func navigateBack(to target: Destination){
        guard !stacks.isEmpty else{return}
        while let last = stacks.last , last != target{
            navPaths.removeLast()
            stacks.removeLast()
        }
    }
    
    func switchRoot(to newFlow: RootFlow) {
        navigateToRoot()
        rootFlow = newFlow
    }
    
}
