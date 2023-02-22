//
//  ViewController.m
//  UIWindow+LBProgressHUDExample
//
//  Created by 刘彬 on 2023/2/21.
//

#import "ViewController.h"
#import "UIWindow+LBProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, (CGRectGetHeight(self.view.frame)-50)/2, CGRectGetWidth(self.view.frame), 50)];
    label.font = [UIFont systemFontOfSize:17];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"MBProgressHUD二次封装，使其使用起来更方便";
    [self.view addSubview:label];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [UIWindow showProgressWithStatus:@"请稍候"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIWindow showSuccessWithStatus:@"显示完成"];
    });
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self viewDidAppear:YES];
}

@end
