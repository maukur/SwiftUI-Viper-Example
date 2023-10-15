//
//  NavigationAssembly.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import Foundation

final class NavigationAssembly: Assembly {
    
    //Only one navigation should use in app
    static let navigation: any NavigationServiceType = NavigationService()
    
    func build() -> any NavigationServiceType {
        return NavigationAssembly.navigation
    }
}
