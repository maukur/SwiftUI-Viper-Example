//
//  WeakContainer.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import Foundation

class WeakContainer<T> {
    fileprivate weak var _value: AnyObject?
    var value: T? {
        set { self._value = newValue as AnyObject }
        get { return _value as? T }
    }
    
    init(value: T) {
        self._value = value as AnyObject
    }
}
