//
//  RefuseView.m
//  jie
//
//  Created by 魏魏莹 on 2019/2/21.
//  Copyright © 2019年 魏魏莹. All rights reserved.
//

#import "RefuseView.h"

@implementation RefuseView
- (instancetype)initWithpopRefuseView
{
    
    if (self=[super init]) {
        
        self.frame=CGRectMake(0, 0, YScreenW, YScreenH);
        
        [self setUI];
        
    }
    return self;
}
- (void)show
{
    [UIView animateWithDuration:.3 animations:^{
        self.backgroundColor = RGBACOLOR(0, 0, 0, 0.4);
    } completion:^(BOOL finished) {
        [[UIApplication sharedApplication].keyWindow addSubview:self];
    }];
}
- (void)setUI
{
    UIImageView*imageV=[ZCControl createImageViewWithFrame:CGRectMake(40, YScreenH/4, YScreenW-80,275) ImageName:@"refuBgV"];
    [self addSubview:imageV];
    
    UIButton*closeBtn=[[UIButton alloc] initWithFrame:CGRectMake(imageV.width-40, 0, 40, 40)];
    closeBtn.backgroundColor=[UIColor clearColor];
    [closeBtn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [imageV addSubview:closeBtn];
    
    UIButton*shenBtn=[ZCControl createButtonWithFrame:CGRectMake(40, imageV.height-70, imageV.width-80, 40) ImageName:@"requires" Target:self Action:@selector(lijiClick)];
    [imageV addSubview:shenBtn];
}

- (void)lijiClick
{
    if ([_delegate respondsToSelector:@selector(refuseUserMoney)]) {
        [_delegate refuseUserMoney];
    }
}
- (void)cloeseClick
{
    [self dismiss];
}
- (void)dismiss{
   
    [UIView animateWithDuration:.1 animations:^{
        
        self.backgroundColor = RGBACOLOR(0, 0, 0, 0);
        
    } completion:^(BOOL finished) {
        [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
        [self removeFromSuperview];
    }];
}


@end
