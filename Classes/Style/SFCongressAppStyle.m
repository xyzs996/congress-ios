//
//  SFCongressAppStyle.m
//  Congress
//
//  Created by Daniel Cloud on 3/6/13.
//  Copyright (c) 2013 Sunlight Foundation. All rights reserved.
//

#import "SFCongressAppStyle.h"

@implementation UIColor (SFCongressAppStyle)

static NSString * const SFCongressDefaultTintColor = @"3b849a";

static NSString * const SFCongressPrimaryBackgroundColor = @"FAFBEB";
static NSString * const SFCongressSecondaryBackgroundColor = @"f5f4da";
static NSString * const SFCongressSearchTextColor = @"fcfcee";

static NSString * const SFCongressPrimaryTextColor = @"434338";
static NSString * const SFCongressSecondaryTextColor = @"67675d";
static NSString * const SFCongressLinkTextColor = @"c8a70d";
static NSString * const SFCongressPrimaryHighlightColor = @"c53f24";
static NSString * const SFCongressSecondaryHighlightColor = @"e47c68";

static NSString * const SFCongressNavigationBarColor = @"70b6b7";
static NSString * const SFCongressNavigationBarTextColor = @"fcfcee";
static NSString * const SFCongressNavigationBarTextShadowColor = @"4c918f";

static NSString * const SFCongressSelectedSegmentedTextColor = @"434338";
static NSString * const SFCongressUnselectedSegmentedTextColor = @"c8a70d";

static NSString * const SFCongressMenuBackgroundColor = @"c64d22";
static NSString * const SFCongressMenuSelectionBgColor = @"b63c17";
static NSString * const SFCongressMenuTextColor = @"f2e1d1";
static NSString * const SFCongressMenuDividerBottomInsetColor = @"b63b19";
static NSString * const SFCongressMenuDividerBottomColor = @"d05b30";

static NSString * const SFCongressTableSeparatorColor = @"e9e8cf";
static NSString * const SFCongressTableHeaderTextColor = @"828875";
static NSString * const SFCongressTableHeaderBackgroundColor = @"e7e9ce";
static NSString * const SFCongressTableCellSelectedColor = @"e9e8cf";

static NSString * const SFCongressDetailLineColor = @"e9e8cf";
static NSString * const SFCongressMapBorderLineColor = @"d6d5bc";

+ (UIColor *)defaultTintColor
{
    return [UIColor colorWithHex:SFCongressDefaultTintColor];
}

+ (UIColor *)primaryBackgroundColor
{
    return [UIColor colorWithHex:SFCongressPrimaryBackgroundColor];
}

+ (UIColor *)secondaryBackgroundColor
{
    return [UIColor colorWithHex:SFCongressSecondaryBackgroundColor];
}

+ (UIColor *)selectedCellBackgroundColor
{
    return [UIColor colorWithHex:SFCongressTableCellSelectedColor];
}

+ (UIColor *)menuBackgroundColor
{
    return [UIColor colorWithHex:SFCongressMenuBackgroundColor];
}

+ (UIColor *)menuSelectionBackgroundColor
{
    return [UIColor colorWithHex:SFCongressMenuSelectionBgColor];
}

+ (UIColor *)menuTextColor
{
    return [UIColor colorWithHex:SFCongressMenuTextColor];
}

+ (UIColor *)primaryTextColor
{
    return [UIColor colorWithHex:SFCongressPrimaryTextColor];
}

+ (UIColor *)secondaryTextColor
{
    return [UIColor colorWithHex:SFCongressSecondaryTextColor];
}

+ (UIColor *)linkTextColor
{
    return [UIColor colorWithHex:SFCongressLinkTextColor];
}

+ (UIColor *)linkHighlightedTextColor
{
    return [UIColor colorWithHex:SFCongressPrimaryHighlightColor];
}

+ (UIColor *)menuDividerBottomInsetColor
{
    return [UIColor colorWithHex:SFCongressMenuDividerBottomInsetColor];
}

+ (UIColor *)menuDividerBottomColor
{
    return [UIColor colorWithHex:SFCongressMenuDividerBottomColor];
}

+ (UIColor *)navigationBarBackgroundColor
{
    return [UIColor colorWithHex:SFCongressNavigationBarColor];
}

+ (UIColor *)navigationBarTextColor
{
    return [UIColor colorWithHex:SFCongressNavigationBarTextColor];
}

+ (UIColor *)navigationBarTextShadowColor
{
    return [UIColor colorWithHex:SFCongressNavigationBarTextShadowColor];
}

+ (UIColor *)tableSeparatorColor
{
    return [UIColor colorWithHex:SFCongressTableSeparatorColor];
}

+ (UIColor *)tableHeaderTextColor
{
    return [UIColor colorWithHex:SFCongressTableHeaderTextColor];
}

+ (UIColor *)tableHeaderBackgroundColor
{
    return [UIColor colorWithHex:SFCongressTableHeaderBackgroundColor];
}

+ (UIColor *)titleColor
{
    return [UIColor colorWithHex:SFCongressPrimaryTextColor];
}

+ (UIColor *)subtitleColor
{
    return  [UIColor colorWithHex:SFCongressSecondaryTextColor];
}

+ (UIColor *)selectedSegmentedTextColor
{
    return  [UIColor colorWithHex:SFCongressSelectedSegmentedTextColor];
}

+ (UIColor *)unselectedSegmentedTextColor
{
    return  [UIColor colorWithHex:SFCongressUnselectedSegmentedTextColor];
}

+ (UIColor *)detailLineColor
{
    return [UIColor colorWithHex:SFCongressDetailLineColor];
}

+ (UIColor *)primaryHighlightColor
{
    return [UIColor colorWithHex:SFCongressPrimaryHighlightColor];
}

+ (UIColor *)secondaryHighlightColor
{
    return [UIColor colorWithHex:SFCongressSecondaryHighlightColor];
}

+ (UIColor *)searchTextColor
{
    return [UIColor colorWithHex:SFCongressSearchTextColor];
}

+ (UIColor *)mapBorderLineColor
{
    return [UIColor colorWithHex:SFCongressMapBorderLineColor];
}

@end

@implementation UIFont (SFCongressAppStyle)

+ (UIFont *)navigationBarFont
{
    return [UIFont fontWithName:@"EuphemiaUCAS-Bold" size:19.0f];
}

+ (UIFont *)menuFont
{
    return [UIFont fontWithName:@"EuphemiaUCAS" size:18.0f];
}

+ (UIFont *)menuSelectedFont
{
    return [UIFont fontWithName:@"EuphemiaUCAS-Bold" size:18.0f];
}

+ (UIFont *)buttonFont
{
    return [UIFont fontWithName:@"EuphemiaUCAS-Bold" size:18.0f];
}

+ (UIFont *)bodyTextFont
{
    return [UIFont fontWithName:@"HoeflerText-Regular" size:13.0f];
}

+ (UIFont *)bodySmallFont
{
    return [UIFont fontWithName:@"HoeflerText-Regular" size:12.0f];
}

+ (UIFont *)billTitleFont
{
    return [UIFont fontWithName:@"Helvetica-Bold" size:14.0f];
}

+ (UIFont *)subitleFont
{
    return [UIFont fontWithName:@"Helvetica" size:10.0f];
}

+ (UIFont *)subitleStrongFont
{
    return [UIFont fontWithName:@"Helvetica-Bold" size:10.0f];
}

+ (UIFont *)subitleEmFont
{
    return [UIFont fontWithName:@"HoeflerText-Italic" size:13.0f];
}

+ (UIFont *)legislatorTitleFont
{
    return [UIFont fontWithName:@"EuphemiaUCAS-Bold" size:15.0f];
}

+ (UIFont *)linkFont
{
    return [UIFont fontWithName:@"Helvetica-Bold" size:13.0f];
}

+ (UIFont *)cellTextFont
{
    return [UIFont fontWithName:@"Helvetica-Bold" size:14.0f];
}

+ (UIFont *)cellDetailTextFont
{
    return [UIFont fontWithName:@"Helvetica-Bold" size:10.0f];
}

+ (UIFont *)cellDecorativeTextFont
{
    return [UIFont fontWithName:@"HoeflerText-Italic" size:11.0f];
}

+ (UIFont *)cellPanelTextFont
{
    return [UIFont fontWithName:@"Helvetica" size:13.0f];
}

+ (UIFont *)cellPanelStrongTextFont
{
    return [UIFont fontWithName:@"Helvetica-Bold" size:13.0f];
}

+ (UIFont *)tableSectionHeaderFont
{
    return [UIFont fontWithName:@"Helvetica-Bold" size:10.0f];
}

+ (UIFont *)searchBarFont
{
    return [UIFont fontWithName:@"Helvetica" size:14.0f];
}

+ (UIFont *)segmentedControlFont
{
    return [UIFont fontWithName:@"Helvetica-Bold" size:12.0f];
}
@end

@implementation NSMutableAttributedString (SFCongressAppStyle)

+ (NSMutableAttributedString *)underlinedStringFor:(NSString *)string
{
    NSMutableAttributedString *linkString = [[NSMutableAttributedString alloc] initWithString:string];
    [linkString addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(0, linkString.length)];
    return linkString;
}

+ (NSMutableAttributedString *)linkStringFor:(NSString *)string
{
    NSMutableAttributedString *linkString = [[NSMutableAttributedString alloc] initWithString:string];
    NSRange stringRange = NSMakeRange(0, linkString.length);
    [linkString addAttribute:NSForegroundColorAttributeName value:[UIColor linkTextColor] range:stringRange];
    return linkString;
}

+ (NSMutableAttributedString *)highlightedLinkStringFor:(NSString *)string
{
    NSMutableAttributedString *linkString = [NSMutableAttributedString linkStringFor:string];
    NSRange stringRange = NSMakeRange(0, linkString.length);
    [linkString addAttribute:NSForegroundColorAttributeName value:[UIColor linkHighlightedTextColor] range:stringRange];
    return linkString;
}

+ (NSMutableAttributedString *)underlinedLinkStringFor:(NSString *)string
{
    NSMutableAttributedString *linkString = [NSMutableAttributedString underlinedLinkStringFor:string];
    NSRange stringRange = NSMakeRange(0, linkString.length);
    [linkString addAttribute:NSForegroundColorAttributeName value:[UIColor linkTextColor] range:stringRange];
    return linkString;
}

+ (NSMutableAttributedString *)underlinedHighlightedLinkStringFor:(NSString *)string
{
    NSMutableAttributedString *linkString = [NSMutableAttributedString underlinedLinkStringFor:string];
    NSRange stringRange = NSMakeRange(0, linkString.length);
    [linkString addAttribute:NSForegroundColorAttributeName value:[UIColor linkHighlightedTextColor] range:stringRange];
    return linkString;
}

@end

@implementation NSParagraphStyle (SFCongressAppStyle)

static CGFloat const SFCongressParagraphLineSpacing = 6.0f;

+ (NSParagraphStyle *)congressParagraphStyle
{
    NSMutableParagraphStyle *object = [[NSMutableParagraphStyle alloc] init];
    object.lineSpacing = SFCongressParagraphLineSpacing;
    object.paragraphSpacing = floorf(SFCongressParagraphLineSpacing*2);

    return (NSParagraphStyle *)object;
}

+ (CGFloat)lineSpacing
{
    return SFCongressParagraphLineSpacing;
}

@end

@implementation SFCongressAppStyle

+ (void)setUpGlobalStyles
{
    NSInteger statusBarStyleValue;
    UITableView *tableViewStyle = [UITableView appearance];
    tableViewStyle.sectionIndexColor = [UIColor primaryTextColor];

    if ([[UIDevice currentDevice] systemMajorVersion] < 7) {
        statusBarStyleValue = UIStatusBarStyleBlackOpaque;
    }
    else {
        statusBarStyleValue = UIStatusBarStyleLightContent;
        tableViewStyle.sectionIndexBackgroundColor = [UIColor clearColor];
    }
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    [self _setUpNavigationBarAppearance];
    [self _setUpSegmentedControlAppearance];
    [self _setUpSearchBarAppearance];
}

+ (void)_setUpSearchBarAppearance
{
    UISearchBar *searchBar = [UISearchBar appearance];
    [searchBar setBackgroundImage:[UIImage searchBarBackgroundImage]];
    [searchBar setSearchFieldBackgroundImage:[UIImage searchBarAreaImage] forState:UIControlStateNormal];
    [searchBar setImage:[UIImage searchBarIconImage] forSearchBarIcon:UISearchBarIconSearch state:UIControlStateNormal];
    [searchBar setImage:[UIImage searchBarCancelImage] forSearchBarIcon:UISearchBarIconClear state:UIControlStateNormal];
    [searchBar setScopeBarButtonBackgroundImage:[UIImage searchBarBackgroundImage] forState:UIControlStateNormal];
    [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setFont:[UIFont searchBarFont]];
    [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setTextColor:[UIColor primaryTextColor]];
    [[UIButton appearanceWhenContainedIn:[UISearchBar class], nil] setBackgroundImage:nil forState:UIControlStateNormal];
    [[UIButton appearanceWhenContainedIn:[UISearchBar class], nil] setBackgroundImage:nil forState:UIControlStateHighlighted];
    [[UIButton appearanceWhenContainedIn:[UISearchBar class], nil] setTitleColor:[UIColor searchTextColor] forState:UIControlStateDisabled];
    [[UIButton appearanceWhenContainedIn:[UISearchBar class], nil] setTitleColor:[UIColor navigationBarTextColor] forState:UIControlStateNormal];
}

+ (void)_setUpSegmentedControlAppearance
{
    UISegmentedControl *sControl = [UISegmentedControl appearance];
    //    [sControl setTintColor:[UIColor navigationBarBackgroundColor]];
    [sControl setBackgroundImage:[UIImage segmentedBarBackgroundImage] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [sControl setBackgroundImage:[UIImage segmentedBarSelectedImage] forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    [sControl setDividerImage:[UIImage segmentedBarDividerImage]
          forLeftSegmentState:UIControlStateNormal
            rightSegmentState:UIControlStateNormal
                   barMetrics:UIBarMetricsDefault];
    [sControl setDividerImage:[UIImage segmentedBarDividerImage]
          forLeftSegmentState:UIControlStateSelected
            rightSegmentState:UIControlStateNormal
                   barMetrics:UIBarMetricsDefault];
    [sControl setDividerImage:[UIImage segmentedBarDividerImage]
          forLeftSegmentState:UIControlStateNormal
            rightSegmentState:UIControlStateSelected
                   barMetrics:UIBarMetricsDefault];
    [sControl setTitleTextAttributes:@{
            UITextAttributeTextColor: [UIColor selectedSegmentedTextColor],
      UITextAttributeTextShadowColor: [UIColor clearColor],
            UITextAttributeFont: [UIFont segmentedControlFont]
     } forState:UIControlStateSelected];
    [sControl setTitleTextAttributes:@{
            UITextAttributeTextColor: [UIColor unselectedSegmentedTextColor],
      UITextAttributeTextShadowColor: [UIColor clearColor],
            UITextAttributeFont: [UIFont segmentedControlFont]
     } forState:UIControlStateNormal];
}

+ (void)_setUpNavigationBarAppearance
{
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setBackgroundImage:[UIImage barButtonDefaultBackgroundImage] forBarMetrics:UIBarMetricsDefault];
    [UINavigationBar appearance].shadowImage = [UIImage new];
    [UINavigationBar appearance].tintColor = [UIColor defaultTintColor];
    [navBar setTitleTextAttributes:@{
               UITextAttributeFont: [UIFont navigationBarFont],
          UITextAttributeTextColor: [UIColor navigationBarTextColor],
    UITextAttributeTextShadowColor: [UIColor navigationBarTextShadowColor],
   UITextAttributeTextShadowOffset: [NSValue valueWithUIOffset:UIOffsetMake(1.0f, 1.0f)]
     }];
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil]
        setBackgroundImage:[UIImage barButtonDefaultBackgroundImage] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil]
        setBackgroundImage:[UIImage barButtonDefaultBackgroundImage] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil]
        setBackButtonBackgroundImage:[UIImage backButtonImage] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];

}

@end
