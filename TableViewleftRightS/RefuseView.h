//
//  RefuseView.h
//  jie
//
//  Created by 魏魏莹 on 2019/2/21.
//  Copyright © 2019年 魏魏莹. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol RefuseVDelegete <NSObject>

-(void)refuseUserMoney;

@end
@interface RefuseView : UIView
- (instancetype)initWithpopRefuseView;
- (void)show;
@property (nonatomic,weak) id<RefuseVDelegete> delegate;
@end

NS_ASSUME_NONNULL_END
