//
//  MBProgressHUD+CustomConfig.m
//  UIWindow+LBProgressHUDExample
//
//  Created by 刘彬 on 2023/2/21.
//

#import "MBProgressHUD+CustomConfig.h"
#import "UIWindow+LBProgressHUD.h"

@implementation MBProgressHUD (CustomConfig)
+ (void)lb_configHUD:(MBProgressHUD *)hud forType:(LBProgressHUDType)type{
    if (type != LBProgressHUDProgressStatus) {
        hud.backgroundColor = [UIColor clearColor];
        hud.bezelView.backgroundColor = [UIColor darkGrayColor];
        hud.contentColor = [UIColor cyanColor];
        hud.minShowTime = 1;
        hud.label.numberOfLines = 0;
    }else{
        hud.contentColor = [UIColor blackColor];
    }
}
@end
