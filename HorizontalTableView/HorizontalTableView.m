//
//  HorizontalTableView.m
//  HorizontalTableView
//
//  Created by Zyfrog on 13-4-27.
//  Copyright (c) 2013年 Zyfrog. All rights reserved.
//

#import "HorizontalTableView.h"

@implementation HorizontalTableView
- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
//    [super setFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.height, frame.size.width)];
    self.transform = CGAffineTransformRotate(CGAffineTransformIdentity, (-M_PI / 2.0));
    self.center = CGPointMake(frame.size.width * 0.5 + frame.origin.x, frame.origin.y + frame.size.height * 0.5);
}
@end
