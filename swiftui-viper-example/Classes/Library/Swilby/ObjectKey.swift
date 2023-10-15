//
//  ObjectKey.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import Foundation

internal struct ObjectKey {
    fileprivate let objectType: Any.Type
    fileprivate let name: String?
    
    fileprivate(set) var key: String {
        get { return String(self.hashValue) }
        set {}
    }
    
    internal init(_ objectType: Any.Type, name: String? = nil) {
        self.objectType = objectType
        self.name = name
    }
}

// MARK: Hashable
extension ObjectKey: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(String(describing: objectType).hashValue ^ (name?.hashValue ?? 0))
    }
}

// MARK: Equatable
func == (lhs: ObjectKey, rhs: ObjectKey) -> Bool {
    return lhs.objectType == rhs.objectType && lhs.name == rhs.name
}
