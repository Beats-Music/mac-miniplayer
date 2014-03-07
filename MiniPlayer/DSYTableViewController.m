//
//  DSYTableViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableViewController.h"

@implementation DSYTableViewController

#pragma mark - Awake
-(void)awakeFromNib
{
    self.titleLabel.textColor       = [NSColor whiteColor];
    self.subtitleLabel.textColor    = [NSColor darkGrayColor];
    self.secondaryLabel.textColor   = [NSColor darkGrayColor];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.intercellSpacing = NSZeroSize;
    self.tableView.backgroundColor = [NSColor colorWithCalibratedRed: 0.892 green: 0.897 blue: 0.907 alpha: 1];
}

#pragma mark - NSTableViewDelegate
-(NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row
{
    DSYTableRowView *rowView = [[DSYTableRowView alloc] initWithFrame:NSMakeRect(0, 0, tableView.frame.size.width, 50)];
    return rowView;
}

@end
