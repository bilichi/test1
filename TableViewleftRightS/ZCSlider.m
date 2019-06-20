//
//  ZCSlider.m
//  jie
//
//  Created by apple on 2019/3/8.
//  Copyright © 2019年 魏魏莹. All rights reserved.
//

#import "ZCSlider.h"

@implementation ZCSlider

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

// 重写 此方法 是为了 避免因添加图片  滑块在左边或者右边 时候漏出一点控件  滑块儿不靠边
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{
    rect.origin.x = rect.origin.x  -5;
    rect.size.width = rect.size.width +10;
    return CGRectInset ([super thumbRectForBounds:bounds trackRect:rect value:value], 5 , 5);
}

//!< 可以改变高度
-(CGRect)trackRectForBounds:(CGRect)bounds
{
    bounds.size.height=10;
    self.layer.cornerRadius = 5;
    
    self.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    // 阴影偏移，默认(0, -3)
    self.layer.shadowOffset = CGSizeMake(2,2);
    // 阴影透明度，默认0
    self.layer.shadowOpacity = 0.8;
    // 阴影半径，默认3
    self.layer.shadowRadius = 3;
    
    
//    self.backgroundColor = UIColor.whiteColor;
    return bounds;
}



@end
