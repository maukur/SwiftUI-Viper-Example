//
//  RootApp.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import SwiftUI

@main
class RootApp: App {
    
    @ObservedObject var appViewBuilder: ApplicationViewBuilder
    @ObservedObject var navigationService: NavigationService
    
    let container: DependencyContainer = {
        let factory = AssemblyFactory()
        let container = DependencyContainer(assemblyFactory: factory)
        
        container.apply(NavigationAssembly.self)
        
        // Services
        container.apply(NavigationAssembly.self)
    
        // Modules
        container.apply(MainAssembly.self)

        return container
    }()

    required init() {
        navigationService = container.resolve(NavigationAssembly.self).build() as! NavigationService
        
        appViewBuilder = ApplicationViewBuilder(container: container)
    }
    
    
    var body: some Scene {
        WindowGroup {
            RootView(navigationService: navigationService,
                     appViewBuilder: appViewBuilder)
        }
    }
    
    
}
