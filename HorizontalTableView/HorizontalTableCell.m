//
//  TestCell.m
//  HorizontalTableView
//
//  Created by Zyfrog on 13-5-9.
//  Copyright (c) 2013年 Zyfrog. All rights reserved.
//

#import "HorizontalTableCell.h"

@implementation HorizontalTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        // Initialization code
        
        self.transform = CGAffineTransformRotate(CGAffineTransformIdentity, (M_PI / 2.0));
    }
    return self;
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc
{
    [super dealloc];
}

@end
