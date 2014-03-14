//
//  DSYGroupCellView.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 The DSYGroupCellView, a subclass of the NSTableCellView, provides a custom tableview cell with a titleLabel as a DSYTextField for custom font loading.
 */
@interface DSYGroupCellView : NSTableCellView

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYTextField used to display the title label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *titleLabel;

@end
