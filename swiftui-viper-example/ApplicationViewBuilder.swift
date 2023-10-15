//
//  ApplicationViewBuilder.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import SwiftUI

@MainActor
final class ApplicationViewBuilder : Assembly, ObservableObject {
    
    required init(container: Container) {
        super.init(container: container)
    }
   
    @ViewBuilder
    func build(view: Views) -> some View {
        switch view {
        case .main:
            buildMain()
        }
    }
    
    @ViewBuilder
    fileprivate func buildMain() -> some View {
        container.resolve(MainAssembly.self).build()
    }
    
}

extension ApplicationViewBuilder {
    
    static var stub: ApplicationViewBuilder {
        return ApplicationViewBuilder(
            container: RootApp().container
        )
    }
}
