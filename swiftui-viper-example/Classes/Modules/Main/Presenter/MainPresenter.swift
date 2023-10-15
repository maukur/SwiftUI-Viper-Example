//
//  MainPresenter.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import SwiftUI

final class MainPresenter: MainPresenterProtocol {
    
    private let router: MainRouterProtocol
    private let viewState: MainViewStateProtocol
    private let interactor: MainInteractorProtocol
    
    init(router: MainRouterProtocol,
         interactor: MainInteractorProtocol,
         viewState: MainViewStateProtocol) {
        self.router = router
        self.interactor = interactor
        self.viewState = viewState
    }
    
    
}
