//
//  HomeJieTwoV.m
//  jie
//
//  Created by 魏魏莹 on 2019/5/22.
//  Copyright © 2019年 魏魏莹. All rights reserved.
//

#import "HomeJieTwoV.h"

@interface HomeJieTwoV ()
@property (weak, nonatomic) IBOutlet UILabel *haveUseL;
@property (weak, nonatomic) IBOutlet UILabel *sqUseL;
@property (weak, nonatomic) IBOutlet UILabel *xinyongeL;



@property (copy, nonatomic) NSString*valuestr;
@end


@implementation HomeJieTwoV

-(void)awakeFromNib
{
    [super awakeFromNib];
    [self.mastJieB rounded:self.mastJieB.height/2];
    _slider.minimumValue = 0;
    self.valuestr=0;
//    _slider.maximumValue = 30000;
}
-(void)setValue:(float)value
{
    _value=value;
    _slider.value = self.value;
}
-(void)setSqValue:(NSString *)sqValue
{
    _sqValue=sqValue;
    self.sqUseL.text=sqValue;
    self.xinyongeL.text=sqValue;
}
-(void)setUseValue:(NSString *)useValue
{
    _useValue=useValue;
    self.haveUseL.text=useValue;
}
-(void)setMaxValue:(NSString *)maxValue
{
    _maxValue=maxValue;
    self.maxValueL.text=maxValue;
    _slider.maximumValue =[maxValue integerValue];
}
#pragma mark--信用额度互动
- (IBAction)valueSlide:(ZCSlider *)sender {
    NSString*values=[NSString stringWithFormat:@"%.f",sender.value];
    self.sqUseL.text=values;
    self.xinyongeL.text=values;
    self.valuestr=values;
}
#pragma mark--立即借款
- (IBAction)lijijiekuanClick:(id)sender {
    NSLog(@"--刻度值--%@",self.valuestr);
    if ([_delegate respondsToSelector:@selector(HomeJieTwoView:)]) {
        [_delegate HomeJieTwoView:self.valuestr];
    }
}

@end
