//
//  UIWindow+LBProgressHUD.h
//  UIWindow+LBProgressHUDExample
//
//  Created by 刘彬 on 2023/2/21.
//

#import <UIKit/UIKit.h>

#import "MBProgressHUD.h"
#import "LBUIMacro.h"

typedef NS_ENUM(NSUInteger, LBProgressHUDType) {
    LBProgressHUDTextStatus = 1,
    LBProgressHUDProgressStatus,
    LBProgressHUDImageStatus,
};

NS_ASSUME_NONNULL_BEGIN
@protocol LBProgressHUDConfigProtocol <NSObject>
@optional
//直接调用show方法会设置默认的hud外观，你也可以通过此方法重新设置其外观
+ (void)lb_configHUD:(MBProgressHUD *)hud forType:(LBProgressHUDType)type;
@end

@interface UIWindow (LBProgressHUD)<LBProgressHUDConfigProtocol>
+ (MBProgressHUD *)showWithStatus:(NSString *_Nullable)status;

+ (MBProgressHUD *)showProgressWithStatus:(NSString *_Nullable)status;

+ (MBProgressHUD *)showWithImage:(UIImage *)image status:(NSString *_Nullable)status;
+ (MBProgressHUD *)showWithImage:(UIImage *)image status:(NSString *_Nullable)status completion:(MBProgressHUDCompletionBlock)completion;


+ (MBProgressHUD *)showSuccessWithStatus:(NSString *_Nullable)status;
+ (MBProgressHUD *)showSuccessWithStatus:(NSString *_Nullable)status completion:(MBProgressHUDCompletionBlock)completion;

+ (MBProgressHUD *)showInfoWithStatus:(NSString *_Nullable)status;
+ (MBProgressHUD *)showInfoWithStatus:(NSString *_Nullable)status completion:(MBProgressHUDCompletionBlock)completion;

+ (MBProgressHUD *)showErrorWithStatus:(NSString *_Nullable)status;
+ (MBProgressHUD *)showErrorWithStatus:(NSString *_Nullable)status completion:(MBProgressHUDCompletionBlock)completion;

+ (void)dismissHUD;
+ (void)dismissHUDWithAnimated:(BOOL)animated;
@end

NS_ASSUME_NONNULL_END

