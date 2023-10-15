//
//  MainContracts.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import SwiftUI


// Router
protocol MainRouterProtocol: RouterProtocol {

}

// Presenter
protocol MainPresenterProtocol: PresenterProtocol {

}

// Interactor
protocol MainInteractorProtocol: InteractorProtocol {

}

// ViewState
protocol MainViewStateProtocol: ViewStateProtocol {
    func set(with presenter: MainPresenterProtocol)
}
