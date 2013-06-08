//
//  ViewController.m
//  HorizontalTableViewDemo
//
//  Created by Zyfrog on 13-6-8.
//  Copyright (c) 2013年 Xinling Zhang. All rights reserved.
//

#import "ViewController.h"
#import "HorizontalTableView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

    
    HorizontalTableView* tableView = [[HorizontalTableView alloc] initWithFrame:CGRectZero
                                                                          style:UITableViewStylePlain];
    CGRect newframe = self.view.bounds;
    newframe.size.height = 80;
    newframe.origin.y = self.view.bounds.size.height - newframe.size.height;
    tableView.frame = newframe;
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    [tableView release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark tableview delegate / tableview datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HorizontalTableCell* cell = [tableView dequeueReusableCellWithIdentifier:@"HorizontalTableCell"];
    if ( !cell )
    {
        cell = [[[HorizontalTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"HorizontalTableCell"] autorelease];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%d",indexPath.row];
    return cell;
}

@end
