//
//  SFMessage.m
//  Congress
//
//  Created by Jeremy Carbaugh on 5/30/13.
//  Copyright (c) 2013 Sunlight Foundation. All rights reserved.
//

#import "SFMessage.h"
#import <TSMessageView.h>
#import "SFAppDelegate.h"

NSString * const SFMessageDefaultTitle = @"Aw, shucks";
NSString * const SFMessageDefaultMessage = @"The app encountered an error.";

@implementation SFMessage

static UIViewController * _defaultViewController;

/**
 * TSMessage override to set a defaultViewController for a TSMessage. Goes looking got the visibleViewController of the main UINavController
 * @return UIViewController to display SFMessages in by default.
 **/
+ (UIViewController *)defaultViewController
{
    if (!_defaultViewController) {
        SFAppDelegate *appDelegate = (SFAppDelegate *)[[UIApplication sharedApplication] delegate];
        _defaultViewController = [appDelegate.mainController isKindOfClass:[UINavigationController class]] ? [((UINavigationController *)appDelegate.mainController) visibleViewController] : appDelegate.mainController;
    }
    return _defaultViewController;
}

/**
 * Override the TSMessage showInternetError because it does not obey subclassing
 **/
+ (void)showInternetError
{
    [[self class] showNotificationWithTitle:NSLocalizedString(@"Network error", nil)
                             withMessage:NSLocalizedString(@"Couldn't connect to the server. Check your network connection.", nil)
                                withType:TSMessageNotificationTypeError];
}


+ (void)showDefaultErrorMessageInViewController:(UIViewController *)viewController
{
    [[self class] showErrorMessageInViewController:viewController withMessage:SFMessageDefaultMessage];
}

+ (void)showErrorMessageInViewController:(UIViewController *)viewController withMessage:(NSString *)message
{
    [[self class] showErrorMessageInViewController:viewController withMessage:message callback:nil];
}

+ (void)showErrorMessageInViewController:(UIViewController *)viewController withMessage:(NSString *)message callback:(void (^)())callback
{
    __strong UIViewController * vc = viewController;
    [[self class] showNotificationInViewController:vc withTitle:SFMessageDefaultTitle withMessage:message withType:TSMessageNotificationTypeError withDuration:TSMessageNotificationDurationAutomatic withCallback:callback];
}

@end
