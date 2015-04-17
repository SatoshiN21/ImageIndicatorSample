//
//  IndicatorLayer.h
//  ImageIndicatorSample
//
//  Created by SatoshiN21 on 2015/04/17.
//  Copyright (c) 2015年 SatoshiN. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, IndicatorDirection) {
    IndicatorDirectionLeft,
    IndicatorDirectionRight
};

@interface IndicatorLayer : CALayer

// インジケータを表示する方向
@property (nonatomic)IndicatorDirection direction;

@property (nonatomic)UIColor *indicatorColor;

@end

@interface UIView (Indicator)

-(void)addIndicatorWithDirection:(IndicatorDirection)direction color:(UIColor*)color;

@end