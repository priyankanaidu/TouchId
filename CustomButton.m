//
//  CustomButton.m
//  3DTouch
//
//  Created by Priyanka Naidu  on 8/30/16.
//  Copyright © 2016 Priyanka Naidu. All rights reserved.
//

#import "CustomButton.h"

IB_DESIGNABLE

@implementation CustomButton {
   IBInspectable UIColor *stroke;
   IBInspectable UIColor *color;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    [stroke setStroke];
    [color setFill];
    [path setLineWidth:3.0];
    [path stroke];
    [path fill];
    
}


@end
