//
//  File.swift
//  SwiftTheme
//
//  Created by Janzen on 2021/1/7.
//  Copyright © 2021 Gesen. All rights reserved.
//

import Foundation

public extension UIImageView
{
    var theme_image_config: ThemeConfigPicker<UIImage>? {
        get { return ThemePicker.getThemePicker(self, "setImage:") as? ThemeConfigPicker<UIImage>}
        set { ThemePicker.setThemePicker(self, "setImage:", newValue) }
    }
}

public extension UIButton
{
    func theme_setImage_config(_ config: ThemeConfigPicker<UIImage>?, forState state: UIControl.State) {
        let statePicker = ThemePicker.makeStatePicker(self, "setImage:forState:", config, state)
        ThemePicker.setThemePicker(self, "setImage:forState:", statePicker)
    }
}
