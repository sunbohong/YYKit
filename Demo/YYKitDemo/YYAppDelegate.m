//
//  AppDelegate.m
//  YYKitExample
//
//  Created by ibireme on 14-9-18.
//  Copyright (c) 2014 ibireme. All rights reserved.
//

#import "YYAppDelegate.h"
#import "YYRootViewController.h"

#import "ReadonlyModel.h"

#import "NSObject+YYModel.h"

/// Fix the navigation bar height when hide status bar.
@interface YYExampleNavBar : UINavigationBar
@end

@implementation YYExampleNavBar {
    CGSize _previousSize;
}

- (CGSize)sizeThatFits:(CGSize)size {
    size = [super sizeThatFits:size];
    if ([UIApplication sharedApplication].statusBarHidden) {
        size.height = 64;
    }
    return size;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (!CGSizeEqualToSize(self.bounds.size, _previousSize)) {
        _previousSize = self.bounds.size;
        [self.layer removeAllAnimations];
        [self.layer.sublayers makeObjectsPerformSelector:@selector(removeAllAnimations)];
    }
}

@end

@interface YYExampleNavController : UINavigationController
@end
@implementation YYExampleNavController
- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
}

@end



@implementation YYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    YYRootViewController *root = [YYRootViewController new];
    
    ReadonlyModel *aReadonlyModel = [ReadonlyModel new];
    
    BOOL set = [aReadonlyModel modelSetWithDictionary:@{@"变量0":@"变量0的新值"}];
    NSLog(@"设置变量0%@", set ? @"成功" : @"失败");
    set = [aReadonlyModel modelSetWithDictionary:@{@"变量1":@"变量1的新值"}];
    NSLog(@"设置变量1%@", set ? @"成功" : @"失败");
    NSLog(@"%@", aReadonlyModel);
    
    
    YYExampleNavController *nav = [[YYExampleNavController alloc] initWithNavigationBarClass:[YYExampleNavBar class] toolbarClass:[UIToolbar class]];
    if ([nav respondsToSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)]) {
        nav.automaticallyAdjustsScrollViewInsets = NO;
    }
    [nav pushViewController:root animated:NO];
    
    self.rootViewController = nav;
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = self.rootViewController;
    self.window.backgroundColor    = [UIColor grayColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
