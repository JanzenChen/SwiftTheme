//
//  File.swift
//  SwiftTheme
//
//  Created by Janzen on 2021/1/7.
//  Copyright © 2021 Gesen. All rights reserved.
//

import Foundation

public extension UIView {
    var theme_alpha_config: ThemeConfigPicker<Float>? {
        get { return ThemePicker.getThemePicker(self, "setAlpha:") as? ThemeConfigPicker<Float>}
        set { ThemePicker.setThemePicker(self, "setAlpha:", newValue) }
    }
    var theme_backgroundColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setBackgroundColor:") as? ThemeConfigPicker<UIColor>}
        set { ThemePicker.setThemePicker(self, "setBackgroundColor:", newValue) }
    }
    var theme_tintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setTintColor:") as? ThemeConfigPicker<UIColor>}
        set { ThemePicker.setThemePicker(self, "setTintColor:", newValue) }
    }
}
public extension UIApplication
{
    #if os(iOS)
    func theme_setStatusBarStyle_config(_ config: ThemeConfigPicker<UIStatusBarStyle>, animated: Bool) {
        let picker = ThemeStatusBarStylePicker(v: config.value)
        picker.animated = animated
        ThemePicker.setThemePicker(self, "setStatusBarStyle:animated:", picker)
    }
    #endif
}
public extension UIBarItem
{
    var theme_image_config: ThemeConfigPicker<UIImage>? {
        get { return ThemePicker.getThemePicker(self, "setImage:") as? ThemeConfigPicker<UIImage> }
        set { ThemePicker.setThemePicker(self, "setImage:", newValue) }
    }
    func theme_setTitleTextAttributes_config(_ config: ThemeConfigPicker<[NSAttributedString.Key: Any]>?, forState state: UIControl.State) {
        let statePicker = ThemePicker.makeStatePicker(self, "setTitleTextAttributes:forState:", config, state)
        ThemePicker.setThemePicker(self, "setTitleTextAttributes:forState:", statePicker)
    }
}
public extension UIBarButtonItem
{
    var theme_tintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setTintColor:", newValue) }
    }
}
public extension UILabel
{
    var theme_font_config: ThemeConfigPicker<UIFont>? {
        get { return ThemePicker.getThemePicker(self, "setFont:") as? ThemeConfigPicker<UIFont> }
        set { ThemePicker.setThemePicker(self, "setFont:", newValue) }
    }
    var theme_textColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setTextColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setTextColor:", newValue) }
    }
    var theme_highlightedTextColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setHighlightedTextColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setHighlightedTextColor:", newValue) }
    }
    var theme_shadowColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setShadowColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setShadowColor:", newValue) }
    }
    var theme_textAttributes_config: ThemeConfigPicker<[NSAttributedString.Key: Any]>? {
        get { return ThemePicker.getThemePicker(self, "updateTextAttributes:") as? ThemeConfigPicker<[NSAttributedString.Key: Any]> }
        set { ThemePicker.setThemePicker(self, "updateTextAttributes:", newValue) }
    }
    var theme_attributedText_config: ThemeConfigPicker<NSAttributedString>? {
        get { return ThemePicker.getThemePicker(self, "setAttributedText:") as? ThemeConfigPicker<NSAttributedString> }
        set { ThemePicker.setThemePicker(self, "setAttributedText:", newValue) }
    }
}
public extension UINavigationBar
{
    #if os(iOS)
    var theme_barStyle_config: ThemeConfigPicker<UIBarStyle>? {
        get { return ThemePicker.getThemePicker(self, "setBarStyle:") as? ThemeConfigPicker<UIBarStyle> }
        set { ThemePicker.setThemePicker(self, "setBarStyle:", newValue) }
    }
    #endif
    var theme_barTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setBarTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setBarTintColor:", newValue) }
    }
    var theme_titleTextAttributes_config: ThemeConfigPicker<[NSAttributedString.Key: Any]>? {
        get { return ThemePicker.getThemePicker(self, "setTitleTextAttributes:") as? ThemeConfigPicker<[NSAttributedString.Key: Any]> }
        set { ThemePicker.setThemePicker(self, "setTitleTextAttributes:", newValue) }
    }
    var theme_largeTitleTextAttributes_config: ThemeConfigPicker<[NSAttributedString.Key: Any]>? {
        get { return ThemePicker.getThemePicker(self, "setLargeTitleTextAttributes:") as? ThemeConfigPicker<[NSAttributedString.Key: Any]> }
        set { ThemePicker.setThemePicker(self, "setLargeTitleTextAttributes:", newValue) }
    }
    @available(iOS 13.0, tvOS 13.0, *)
    var theme_standardAppearance_config: ThemeConfigPicker<UINavigationBarAppearance>? {
        get { return ThemePicker.getThemePicker(self, "setStandardAppearance:") as? ThemeConfigPicker<UINavigationBarAppearance> }
        set { ThemePicker.setThemePicker(self, "setStandardAppearance:", newValue) }
    }
    @available(iOS 13.0, tvOS 13.0, *)
    var theme_compactAppearance_config: ThemeConfigPicker<UINavigationBarAppearance>? {
        get { return ThemePicker.getThemePicker(self, "setCompactAppearance:") as? ThemeConfigPicker<UINavigationBarAppearance> }
        set { ThemePicker.setThemePicker(self, "setCompactAppearance:", newValue) }
    }
    @available(iOS 13.0, tvOS 13.0, *)
    var theme_scrollEdgeAppearance_config: ThemeConfigPicker<UINavigationBarAppearance>? {
        get { return ThemePicker.getThemePicker(self, "setScrollEdgeAppearance:") as? ThemeConfigPicker<UINavigationBarAppearance> }
        set { ThemePicker.setThemePicker(self, "setScrollEdgeAppearance:", newValue) }
    }
}
public extension UITabBar
{
    #if os(iOS)
    var theme_barStyle_config: ThemeConfigPicker<UIBarStyle>? {
        get { return ThemePicker.getThemePicker(self, "setBarStyle:") as? ThemeConfigPicker<UIBarStyle> }
        set { ThemePicker.setThemePicker(self, "setBarStyle:", newValue) }
    }
    #endif
    var theme_unselectedItemTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setUnselectedItemTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setUnselectedItemTintColor:", newValue) }
    }
    var theme_barTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setBarTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setBarTintColor:", newValue) }
    }
}
public extension UITabBarItem
{
    var theme_selectedImage_config: ThemeConfigPicker<UIImage>? {
        get { return ThemePicker.getThemePicker(self, "setSelectedImage:") as? ThemeConfigPicker<UIImage> }
        set { ThemePicker.setThemePicker(self, "setSelectedImage:", newValue) }
    }
}
public extension UITableView
{
    var theme_separatorColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setSeparatorColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setSeparatorColor:", newValue) }
    }
    var theme_sectionIndexColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setSectionIndexColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setSectionIndexColor:", newValue) }
    }
    var theme_sectionIndexBackgroundColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setSectionIndexBackgroundColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setSectionIndexBackgroundColor:", newValue) }
    }
}
public extension UITextField
{
    var theme_font_config: ThemeConfigPicker<UIFont>? {
        get { return ThemePicker.getThemePicker(self, "setFont:") as? ThemeConfigPicker<UIFont> }
        set { ThemePicker.setThemePicker(self, "setFont:", newValue) }
    }
    var theme_keyboardAppearance_config: ThemeConfigPicker<UIKeyboardAppearance>? {
        get { return ThemePicker.getThemePicker(self, "setKeyboardAppearance:") as? ThemeConfigPicker<UIKeyboardAppearance> }
        set { ThemePicker.setThemePicker(self, "setKeyboardAppearance:", newValue) }
    }
    var theme_textColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setTextColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setTextColor:", newValue) }
    }
    var theme_placeholderAttributes_config: ThemeConfigPicker<[NSAttributedString.Key: Any]>? {
        get { return ThemePicker.getThemePicker(self, "updatePlaceholderAttributes:") as? ThemeConfigPicker<[NSAttributedString.Key: Any]> }
        set { ThemePicker.setThemePicker(self, "updatePlaceholderAttributes:", newValue) }
    }
}
public extension UITextView
{
    var theme_font_config: ThemeConfigPicker<UIFont>? {
        get { return ThemePicker.getThemePicker(self, "setFont:") as? ThemeConfigPicker<UIFont> }
        set { ThemePicker.setThemePicker(self, "setFont:", newValue) }
    }
    var theme_keyboardAppearance_config: ThemeConfigPicker<UIKeyboardAppearance>? {
        get { return ThemePicker.getThemePicker(self, "setKeyboardAppearance:") as? ThemeConfigPicker<UIKeyboardAppearance> }
        set { ThemePicker.setThemePicker(self, "setKeyboardAppearance:", newValue) }
    }
    var theme_textColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setTextColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setTextColor:", newValue) }
    }
}
public extension UISearchBar
{
    #if os(iOS)
    var theme_barStyle_config: ThemeConfigPicker<UIBarStyle>? {
        get { return ThemePicker.getThemePicker(self, "setBarStyle:") as? ThemeConfigPicker<UIBarStyle> }
        set { ThemePicker.setThemePicker(self, "setBarStyle:", newValue) }
    }
    #endif
    var theme_keyboardAppearance_config: ThemeConfigPicker<UIKeyboardAppearance>? {
        get { return ThemePicker.getThemePicker(self, "setKeyboardAppearance:") as? ThemeConfigPicker<UIKeyboardAppearance> }
        set { ThemePicker.setThemePicker(self, "setKeyboardAppearance:", newValue) }
    }
    var theme_barTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setBarTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setBarTintColor:", newValue) }
    }
}
public extension UIProgressView
{
    var theme_progressTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setProgressTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setProgressTintColor:", newValue) }
    }
    var theme_trackTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setTrackTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setTrackTintColor:", newValue) }
    }
}
public extension UIPageControl
{
    var theme_pageIndicatorTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setPageIndicatorTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setPageIndicatorTintColor:", newValue) }
    }
    var theme_currentPageIndicatorTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setCurrentPageIndicatorTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setCurrentPageIndicatorTintColor:", newValue) }
    }
}
public extension UIImageView
{
    var theme_image_config: ThemeConfigPicker<UIImage>? {
        get { return ThemePicker.getThemePicker(self, "setImage:") as? ThemeConfigPicker<UIImage>}
        set { ThemePicker.setThemePicker(self, "setImage:", newValue) }
    }
}
public extension UIActivityIndicatorView
{
    var theme_color_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setColor:", newValue) }
    }
    var theme_activityIndicatorViewStyle_config: ThemeConfigPicker<UIActivityIndicatorView.Style>? {
        get { return ThemePicker.getThemePicker(self, "setActivityIndicatorViewStyle:") as? ThemeConfigPicker<UIActivityIndicatorView.Style> }
        set { ThemePicker.setThemePicker(self, "setActivityIndicatorViewStyle:", newValue) }
    }
}
public extension UIScrollView
{
    var theme_indicatorStyle_config: ThemeConfigPicker<UIScrollView.IndicatorStyle>? {
        get { return ThemePicker.getThemePicker(self, "setIndicatorStyle:") as? ThemeConfigPicker<UIScrollView.IndicatorStyle> }
        set { ThemePicker.setThemePicker(self, "setIndicatorStyle:", newValue) }
    }
}
public extension UIButton
{
    func theme_setImage_config(_ config: ThemeConfigPicker<UIImage>?, forState state: UIControl.State) {
        let statePicker = ThemePicker.makeStatePicker(self, "setImage:forState:", config, state)
        ThemePicker.setThemePicker(self, "setImage:forState:", statePicker)
    }
    func theme_setBackgroundImage_config(_ config: ThemeConfigPicker<UIImage>?, forState state: UIControl.State) {
        let statePicker = ThemePicker.makeStatePicker(self, "setBackgroundImage:forState:", config, state)
        ThemePicker.setThemePicker(self, "setBackgroundImage:forState:", statePicker)
    }
    func theme_setTitleColor_config(_ config: ThemeConfigPicker<UIColor>?, forState state: UIControl.State) {
        let statePicker = ThemePicker.makeStatePicker(self, "setTitleColor:forState:", config, state)
        ThemePicker.setThemePicker(self, "setTitleColor:forState:", statePicker)
    }
    func theme_setAttributedTitle_config(_ config: ThemeConfigPicker<NSAttributedString>?, forState state: UIControl.State) {
        let statePicker = ThemePicker.makeStatePicker(self, "setAttributedTitle:forState:", config, state)
        ThemePicker.setThemePicker(self, "setAttributedTitle:forState:", statePicker)
    }
}
public extension CALayer
{
    var theme_backgroundColor_config: ThemeConfigPicker<CGColor>? {
        get { return ThemePicker.getThemePicker(self, "setBackgroundColor:") as? ThemeConfigPicker<CGColor>}
        set { ThemePicker.setThemePicker(self, "setBackgroundColor:", newValue) }
    }
    var theme_borderWidth_config: ThemeConfigPicker<CGFloat>? {
        get { return ThemePicker.getThemePicker(self, "setBorderWidth:") as? ThemeConfigPicker<CGFloat> }
        set { ThemePicker.setThemePicker(self, "setBorderWidth:", newValue) }
    }
    var theme_borderColor_config: ThemeConfigPicker<CGColor>? {
        get { return ThemePicker.getThemePicker(self, "setBorderColor:") as? ThemeConfigPicker<CGColor> }
        set { ThemePicker.setThemePicker(self, "setBorderColor:", newValue) }
    }
    var theme_shadowColor_config: ThemeConfigPicker<CGColor>? {
        get { return ThemePicker.getThemePicker(self, "setShadowColor:") as? ThemeConfigPicker<CGColor> }
        set { ThemePicker.setThemePicker(self, "setShadowColor:", newValue) }
    }
    var theme_strokeColor_config: ThemeConfigPicker<CGColor>? {
        get { return ThemePicker.getThemePicker(self, "setStrokeColor:") as? ThemeConfigPicker<CGColor> }
        set { ThemePicker.setThemePicker(self, "setStrokeColor:", newValue) }
    }
    var theme_fillColor_config: ThemeConfigPicker<CGColor>?{
        get { return ThemePicker.getThemePicker(self, "setFillColor:") as? ThemeConfigPicker<CGColor> }
        set { ThemePicker.setThemePicker(self, "setFillColor:", newValue) }
    }
}
public extension CATextLayer
{
    var theme_foregroundColor_config: ThemeConfigPicker<CGColor>? {
        get { return ThemePicker.getThemePicker(self, "setForegroundColor:") as? ThemeConfigPicker<CGColor>}
        set { ThemePicker.setThemePicker(self, "setForegroundColor:", newValue) }
    }
}
public extension CAGradientLayer
{
    var theme_colors_config: ThemeConfigPicker<Any>? {
        get { return ThemePicker.getThemePicker(self, "setColors:") as? ThemeConfigPicker<Any> }
        set { ThemePicker.setThemePicker(self, "setColors:", newValue) }
    }
}

#if os(iOS)
public extension UIToolbar
{
    var theme_barStyle_config: ThemeConfigPicker<UIBarStyle>? {
        get { return ThemePicker.getThemePicker(self, "setBarStyle:") as? ThemeConfigPicker<UIBarStyle> }
        set { ThemePicker.setThemePicker(self, "setBarStyle:", newValue) }
    }
    var theme_barTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setBarTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setBarTintColor:", newValue) }
    }
}
public extension UISegmentedControl
{
    var theme_selectedSegmentTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setSelectedSegmentTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setSelectedSegmentTintColor:", newValue) }
    }
    func theme_setTitleTextAttributes_config(_ config: ThemeConfigPicker<[NSAttributedString.Key: Any]>?, forState state: UIControl.State) {
        let statePicker = ThemePicker.makeStatePicker(self, "setTitleTextAttributes:forState:", config, state)
        ThemePicker.setThemePicker(self, "setTitleTextAttributes:forState:", statePicker)
    }
}
public extension UISwitch
{
    var theme_onTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setOnTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setOnTintColor:", newValue) }
    }
    var theme_thumbTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setThumbTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setThumbTintColor:", newValue) }
    }
}
public extension UISlider
{
    var theme_thumbTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setThumbTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setThumbTintColor:", newValue) }
    }
    var theme_minimumTrackTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setMinimumTrackTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setMinimumTrackTintColor:", newValue) }
    }
    var theme_maximumTrackTintColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setMaximumTrackTintColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setMaximumTrackTintColor:", newValue) }
    }
}
public extension UIPopoverPresentationController
{
    var theme_backgroundColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setBackgroundColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setBackgroundColor:", newValue) }
    }
}
public extension UIRefreshControl
{
    var theme_titleAttributes_config: ThemeConfigPicker<[NSAttributedString.Key: Any]>? {
        get { return ThemePicker.getThemePicker(self, "updateTitleAttributes:") as? ThemeConfigPicker<[NSAttributedString.Key: Any]> }
        set { ThemePicker.setThemePicker(self, "updateTitleAttributes:", newValue) }
    }
}
public extension UIVisualEffectView
{
    var theme_effect_config: ThemeConfigPicker<UIVisualEffect>? {
        get { return ThemePicker.getThemePicker(self, "setEffect:") as? ThemeConfigPicker<UIVisualEffect> }
        set { ThemePicker.setThemePicker(self, "setEffect:", newValue) }
    }
}
@available(iOS 13.0, *)
public extension UINavigationBarAppearance
{
    var theme_titleTextAttributes_config: ThemeConfigPicker<[NSAttributedString.Key: Any]>? {
        get { return ThemePicker.getThemePicker(self, "setTitleTextAttributes:") as? ThemeConfigPicker<[NSAttributedString.Key: Any]> }
        set { ThemePicker.setThemePicker(self, "setTitleTextAttributes:", newValue) }
    }
    var theme_largeTitleTextAttributes_config: ThemeConfigPicker<[NSAttributedString.Key: Any]>? {
        get { return ThemePicker.getThemePicker(self, "setLargeTitleTextAttributes:") as? ThemeConfigPicker<[NSAttributedString.Key: Any]> }
        set { ThemePicker.setThemePicker(self, "setLargeTitleTextAttributes:", newValue) }
    }
    var theme_backIndicatorImage_config: ThemeConfigPicker<UIImage>? {
        get { return ThemePicker.getThemePicker(self, "setBackIndicatorImage:") as? ThemeConfigPicker<UIImage> }
        set { ThemePicker.setThemePicker(self, "setBackIndicatorImage:", newValue) }
    }
}
@available(iOS 13.0, *)
public extension UIBarAppearance
{
    var theme_backgroundColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setBackgroundColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setBackgroundColor:", newValue) }
    }
    var theme_backgroundImage_config: ThemeConfigPicker<UIImage>? {
        get { return ThemePicker.getThemePicker(self, "setBackgroundImage:") as? ThemeConfigPicker<UIImage> }
        set { ThemePicker.setThemePicker(self, "setBackgroundImage:", newValue) }
    }
    var theme_backgroundEffect_config: ThemeConfigPicker<UIBlurEffect>? {
        get { return ThemePicker.getThemePicker(self, "setBackgroundEffect:") as? ThemeConfigPicker<UIBlurEffect> }
        set { ThemePicker.setThemePicker(self, "setBackgroundEffect:", newValue) }
    }
    var theme_shadowColor_config: ThemeConfigPicker<UIColor>? {
        get { return ThemePicker.getThemePicker(self, "setShadowColor:") as? ThemeConfigPicker<UIColor> }
        set { ThemePicker.setThemePicker(self, "setShadowColor:", newValue) }
    }
    var theme_shadowImage_config: ThemeConfigPicker<UIImage>? {
        get { return ThemePicker.getThemePicker(self, "setShadowImage:") as? ThemeConfigPicker<UIImage> }
        set { ThemePicker.setThemePicker(self, "setShadowImage:", newValue) }
    }
}
#endif
