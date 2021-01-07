//
//  ThemeConfigPicker.swift
//  SwiftTheme
//
//  Created by Janzen on 2021/1/7.
//
import UIKit

public final class ThemeConfigPicker<T>: ThemePicker {
    public typealias ConfigType = () -> T?
    
    public convenience init(config: @escaping ConfigType) {
        self.init(v: config)
    }
}

public extension ThemeConfigPicker {
    class func pickerWithConfig(_ config: @escaping ConfigType) -> ThemeConfigPicker {
        return ThemeConfigPicker(v: config)
    }
    
}
