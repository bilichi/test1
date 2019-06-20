//
//  HomeJieTwoV.h
//  jie
//
//  Created by 魏魏莹 on 2019/5/22.
//  Copyright © 2019年 魏魏莹. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol HomeJieTwoVDelegete <NSObject>

-(void)HomeJieTwoView:(NSString*)valeStr;

@end

@interface HomeJieTwoV : UIView
@property (weak, nonatomic) IBOutlet ZCSlider *slider;
@property (nonatomic,assign)float value;//--可以设置的初始化值
@property (nonatomic,copy)NSString* useValue;//---可用额度
@property (nonatomic,copy)NSString* sqValue;//---申请中额度
@property (nonatomic,copy)NSString* maxValue;//---slide最大值
@property (nonatomic,weak) id<HomeJieTwoVDelegete> delegate;
@property (weak, nonatomic) IBOutlet UIButton *mastJieB;
@property (weak, nonatomic) IBOutlet UILabel *maxValueL;
@property (weak, nonatomic) IBOutlet UILabel *minValueL;

@end

NS_ASSUME_NONNULL_END
