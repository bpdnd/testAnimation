//
//  OneViewController.m
//  testAnimation
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self changeBackBtn];
    self.view.backgroundColor = [UIColor whiteColor];
    //1 UIViewAnimationCurveEaseInOut
    self.redOneView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    self.redOneView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redOneView];
    [self oneAnimation:self.redOneView];
    
    //2 UIViewAnimationCurveEaseIn
    self.redTwoView = [[UIView alloc]initWithFrame:CGRectMake(0, 40, 30, 30)];
    self.redTwoView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.redTwoView];
    [self twoAnimation:self.redTwoView];
    
    //3 UIViewAnimationCurveEaseOut
    self.redThreeView = [[UIView alloc]initWithFrame:CGRectMake(0, 80, 30, 30)];
    self.redThreeView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.redThreeView];
    [self threeAnimation:self.redThreeView];
    
    //4 UIViewAnimationCurveLinear
    self.redFourView = [[UIView alloc]initWithFrame:CGRectMake(0, 120, 30, 30)];
    self.redFourView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.redFourView];
    [self fourAnimation:self.redFourView];
    
    
}
-(void)oneAnimation:(UIView *)baseView{
    /*
     .简单说明
     
     UIKit直接将动画集成到UIView类中，当内部的一些属性发生改变时，UIView将为这些改变提供动画支持
     
     执行动画所需要的工作由UIView类自动完成，但仍要在希望执行动画时通知视图，为此需要将改变属性的代码放在[UIView beginAnimations:nil context:nil]和[UIView commitAnimations]之间
     
     常见方法解析:
     + (void)setAnimationDelegate:(id)delegate     设置动画代理对象，当动画开始或者结束时会发消息给代理对象
     + (void)setAnimationWillStartSelector:(SEL)selector   当动画即将开始时，执行delegate对象的selector，并且把beginAnimations:context:中传入的参数传进selector
     + (void)setAnimationDidStopSelector:(SEL)selector  当动画结束时，执行delegate对象的selector，并且把beginAnimations:context:中传入的参数传进selector
     + (void)setAnimationDuration:(NSTimeInterval)duration   动画的持续时间，秒为单位
     + (void)setAnimationDelay:(NSTimeInterval)delay  动画延迟delay秒后再开始
     + (void)setAnimationStartDate:(NSDate *)startDate   动画的开始时间，默认为now
     + (void)setAnimationCurve:(UIViewAnimationCurve)curve  动画的节奏控制
     + (void)setAnimationRepeatCount:(float)repeatCount  动画的重复次数
     + (void)setAnimationRepeatAutoreverses:(BOOL)repeatAutoreverses  如果设置为YES,代表动画每次重复执行的效果会跟上一次相反
     + (void)setAnimationTransition:(UIViewAnimationTransition)transition forView:(UIView *)view cache:(BOOL)cache  设置视图view的过渡效果, transition指定过渡类型, cache设置YES代表使用视图缓存，性能较好
     */
    
    [UIView beginAnimations:nil context:nil];
    ///////动画要在这里写
    [UIView setAnimationDelay:1]; //延迟
    [UIView setAnimationDuration:2]; //动画持续时间
    [UIView setAnimationRepeatCount:10];
    [UIView setAnimationRepeatAutoreverses: YES];  // 翻转
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut]; //设置动画变化的曲线
    baseView.center = CGPointMake(baseView.center.x + 100, baseView.center.y);
    [UIView setAnimationDelegate:self];   // 设置代理 监测动画结束的
    [UIView setAnimationDidStopSelector:@selector(shopAction)];
    ////////
    
    [UIView commitAnimations];
//    其中   setAnimationCurve 参数为
//    UIViewAnimationCurveEaseInOut：这种曲线的动画开始缓慢，在其持续时间的中间加速，然后在完成之
//    前再次减慢。这是大多数动画的默认曲线。
//    UIViewAnimationCurveEaseIn：动画开始时缓慢，然后加速，直到动画结束。这里选用这种类型动画曲
//    线。
//    UIViewAnimationCurveEaseOut：动画开始时速度很快，在结束前开始减速。
//    UIViewAnimationCurveLinear：在动画持续时间内，动画匀速运行。
}
-(void)twoAnimation:(UIView *)baseView{
    [UIView beginAnimations:nil context:nil];
    ///////动画要在这里写
    [UIView setAnimationDelay:1]; //延迟
    [UIView setAnimationDuration:2];
    [UIView setAnimationRepeatCount:10];
    [UIView setAnimationRepeatAutoreverses: YES];  // 翻转
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn]; //设置动画变化的曲线
    baseView.center = CGPointMake(baseView.center.x + 100, baseView.center.y);
    [UIView setAnimationDelegate:self];   // 设置代理 监测动画结束的
    [UIView setAnimationDidStopSelector:@selector(shopAction)];
    ////////
    [UIView commitAnimations];
}

-(void)threeAnimation:(UIView *)baseView{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:1]; //延迟
    [UIView setAnimationDuration:2];//动画持续时间
    [UIView setAnimationRepeatCount:10]; //重复次数
    [UIView setAnimationRepeatAutoreverses: YES];  // 翻转
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    baseView.center = CGPointMake(baseView.center.x + 100, baseView.center.y);
    [UIView setAnimationDelegate:self];   // 设置代理 监测动画结束的
    [UIView setAnimationDidStopSelector:@selector(shopAction)];
    ////////
    [UIView commitAnimations];
}

-(void)fourAnimation:(UIView *)baseView{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:1]; //延迟
    [UIView setAnimationDuration:2];//动画持续时间
    [UIView setAnimationRepeatCount:10]; //重复次数
    [UIView setAnimationRepeatAutoreverses: YES];  // 翻转
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    baseView.center = CGPointMake(baseView.center.x + 100, baseView.center.y);
    [UIView setAnimationDelegate:self];   // 设置代理 监测动画结束的
    [UIView setAnimationDidStopSelector:@selector(shopAction)];
    ////////
    [UIView commitAnimations];
}







-(void)shopAction{
    NSLog(@"动画停止");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
