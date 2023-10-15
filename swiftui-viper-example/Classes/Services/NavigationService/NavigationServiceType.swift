//
//  NavigationServiceType.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import Foundation

protocol NavigationServiceType: ObservableObject, Identifiable {
    var items:[Views] { get set }
    var modalView: Views? { get set }
    var alert: CustomAlert? { get set }
}
