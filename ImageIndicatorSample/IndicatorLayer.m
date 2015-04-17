//
//  IndicatorLayer.m
//  ImageIndicatorSample
//
//  Created by SatoshiN21 on 2015/04/17.
//  Copyright (c) 2015年 SatoshiN. All rights reserved.
//

#import "IndicatorLayer.h"


@implementation IndicatorLayer

- (void)drawIndicator:(CGContextRef)ctx
{
    CGContextBeginPath(ctx);
    
    if (self.direction == IndicatorDirectionRight) {
        CGContextMoveToPoint(ctx, 0, 0);
        CGContextAddLineToPoint(ctx, 1, 0.5);
        CGContextAddLineToPoint(ctx, 0.0, 1.0);
        CGContextAddLineToPoint(ctx, 0.0, 0.0);
    } else {
        CGContextMoveToPoint(ctx, 1.0, 0);
        CGContextAddLineToPoint(ctx, 0, 0.5);
        CGContextAddLineToPoint(ctx, 1.0, 1.0);
        CGContextAddLineToPoint(ctx, 1.0, 0.0);
    }
    
    CGContextClosePath(ctx);
    
    CGContextSetFillColorWithColor(ctx, self.indicatorColor.CGColor);
    CGContextFillPath(ctx);
}

- (void)drawInContext:(CGContextRef)ctx
{
    // 座標変換
    CGContextTranslateCTM(ctx, 0, 0);
    CGContextScaleCTM(ctx, self.bounds.size.width, self.bounds.size.height);
    [self drawIndicator:ctx];
}

@end

@implementation UIView (Indicator)

-(void)addIndicatorWithDirection:(IndicatorDirection)direction color:(UIColor*)color{
    
    CGSize size = CGSizeMake(20, 50);
    
    IndicatorLayer *indicator = [[IndicatorLayer alloc] init];
    indicator.direction = direction;
    indicator.indicatorColor = color;
    if (direction == IndicatorDirectionRight) {
        indicator.frame = CGRectMake(self.frame.size.width,(self.frame.size.height / 2) - (size.height / 2), size.width  , size.height);
        NSLog(@"rect :%@",NSStringFromCGRect(indicator.frame));
    } else if(indicator == IndicatorDirectionLeft){
        indicator.frame = CGRectMake(-size.width,(self.frame.size.height / 2) - (size.height / 2), size.width  , size.height);
    }
    
    [indicator setNeedsDisplay];
    [self.layer addSublayer:indicator];
    [self layoutIfNeeded];
}

@end