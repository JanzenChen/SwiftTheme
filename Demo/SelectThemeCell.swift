//
//  SelectThemeCell.swift
//  Demo
//
//  Created by Gesen on 16/3/2.
//  Copyright © 2016年 Gesen. All rights reserved.
//

import UIKit
import SwiftTheme

class SelectThemeCell: BaseCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var themeIcon: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        title.theme_textColor = GlobalPicker.textColor
//        themeIcon.theme_image = ["icon_theme_red", "icon_theme_yellow", "icon_theme_blue", "icon_theme_light"]
        
        /// 动态配置某个模式下的图片
        let imageStrs = ["icon_theme_red", "icon_theme_yellow", "icon_theme_blue", "icon_theme_light"]
        /// 方法一: 缺点, 不能兼容OC
//        themeIcon.theme_image_config = ThemeConfigPicker(config: { () -> UIImage? in
//            switch MyThemes.current {
//            case .red: fallthrough
//            case .yello: fallthrough
//            case .blue:
//                return UIImage(named: imageStrs[MyThemes.current.rawValue])!
//            case .night:
//                return UIImage(named: imageStrs[MyThemes.before.rawValue])!
//            }
//        })
        
        /// 方法二: 缺点: 需要写硬代码"setImage:"及闭包返回类型的容错问题, 不方便使用
        let picker = ThemePicker(v: { () -> UIImage? in
            switch MyThemes.current {
            case .red: fallthrough
            case .yello: fallthrough
            case .blue:
                return UIImage(named: imageStrs[MyThemes.current.rawValue])!
            case .night:
                return UIImage(named: imageStrs[MyThemes.before.rawValue])!
            }
        })
        
        ThemePicker.setThemePicker(themeIcon, "setImage:", picker)
    }

}
