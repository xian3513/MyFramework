//
//  BasicViewController.m
//  ChildFine
//
//  Created by xian on 15/11/2.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "BasicViewController.h"
#import "CommonMacros.h"
#import "MainTabBarViewController.h"

@interface BasicViewController ()<UIScrollViewDelegate>

@end

@implementation BasicViewController {
    
    CGFloat lastpace;
    UIScrollView *_scrollView;
}

#pragma mark - lift cycle method
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if(self = [super initWithCoder:aDecoder]){
    
    }
    return self;
}

- (instancetype)init {
    if(self = [super init]){
      
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RGBA(235, 235, 235, 1);
    // Do any additional setup after loading the view.
}

#pragma mark - tabbarAnimation method
- (void)followScrollView:(UIScrollView *)scrollableView {
    _scrollView = scrollableView;
    _scrollView.delegate = self;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    CGFloat delta = scrollView.contentOffset.y;
    // NSLog(@"lastpace:%f  delta:%f  = %f",lastpace,delta,lastpace-delta);
    if(delta <= 0){
        return;
    }
    if((lastpace - delta) > 0){
        [self.myTabBarController showAnimation];
        
    } else {
        [self.myTabBarController hideAnimation];
    }
    lastpace = delta;
}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
//{
//    return YES;
//}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if(!decelerate) {
        [self.myTabBarController showAnimation];
    }
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    [self.myTabBarController showAnimation];
    NSLog(@"%@",NSStringFromSelector(_cmd));
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
