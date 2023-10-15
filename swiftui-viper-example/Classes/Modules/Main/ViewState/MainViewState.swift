//
//  MainViewState.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import SwiftUI

final class MainViewState: ObservableObject, MainViewStateProtocol {    
    private let id = UUID()
    private var presenter: MainPresenterProtocol?
    
    func set(with presener: MainPresenterProtocol) {
        self.presenter = presener
    }
}
