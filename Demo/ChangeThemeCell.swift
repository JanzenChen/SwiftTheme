//
//  ChangeThemeCell.swift
//  Demo
//
//  Created by Gesen on 16/3/2.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit
import SwiftTheme

class ChangeThemeCell: BaseCell {
    
    @IBOutlet weak var changeTheme: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        changeTheme.theme_setTitleColor(["#FFF", "#000", "#FFF", "#000"], forState: .normal)
        changeTheme.theme_setTitleColor(["#555", "#AAA", "#555", "#AAA"], forState: .highlighted)
        changeTheme.theme_backgroundColor = ["#EB4F38", "#F4C600", "#56ABE4", "#ECF0F1"]
        changeTheme.layer.cornerRadius = 60
        
        /// 动态配置某个模式下的图片
        let imageStrs = ["icon_theme_red", "icon_theme_yellow", "icon_theme_blue", "icon_theme_light"]
        /// 方法一: 缺点, 不能兼容OC
        let theme_image_config = ThemeConfigPicker(config: { () -> UIImage? in
            switch MyThemes.current {
            case .red: fallthrough
            case .yello: fallthrough
            case .blue:
                return UIImage(named: imageStrs[MyThemes.current.rawValue])
            case .night:
                return UIImage(named: imageStrs[MyThemes.before.rawValue])
            }
        })
        changeTheme.theme_setImage_config(theme_image_config, forState: .normal)
    }
    
    @IBAction func tapChange(_ sender: UIButton) {
        MyThemes.switchToNext()
    }
    
    

}
