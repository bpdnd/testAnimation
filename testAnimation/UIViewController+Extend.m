//
//  UIViewController+Extend.m
//  testDraw
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "UIViewController+Extend.h"

@implementation UIViewController (Extend)
-(void)changeBackBtn{
    if( ([[[UIDevice currentDevice] systemVersion] doubleValue]>=7.0)) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.extendedLayoutIncludesOpaqueBars = NO;
        self.modalPresentationCapturesStatusBarAppearance = NO;
    }else{
        //self.navigationController.navigationBar.translucent = NO;
    }
}
@end
