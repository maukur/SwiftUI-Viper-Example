//
//  AssemblyFactory.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import Foundation

protocol AssemblyFactoryProtocol: AnyObject {
    func apply<T: AssemblyType>(_ assembly: T.Type, name: String?)
    func resolve<T: AssemblyType>(_ type: T.Type, name: String?) -> T.Type
}

class AssemblyFactory {
    typealias AssemblyCollection = [String : Any.Type]
    fileprivate var assemblyCollection = AssemblyCollection()
}

extension AssemblyFactory: AssemblyFactoryProtocol {
    func apply<T: AssemblyType>(_ assembly: T.Type, name: String? = nil) {
        let key = ObjectKey(assembly, name: name).key
        self.assemblyCollection[key] = assembly
    }
    
    func resolve<T: AssemblyType>(_ type: T.Type, name: String? = nil) -> T.Type {
        let key = ObjectKey(type, name: name).key
        guard let assembly = assemblyCollection[key] else { fatalError("Assemblay '\(String(describing: type))' has't been registered, use 'apply( _:)' method") }
        return assembly as! T.Type
    }
}
