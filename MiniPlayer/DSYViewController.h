//
//  DSYViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 The DSYViewController, a subclass of NSViewController, provides the base view controller class that all view controllers will inherit from.
 */
@interface DSYViewController : NSViewController

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 A BOOL indicating whether or not the view has loaded data.
 */
@property (nonatomic,assign) BOOL hasData;

#pragma mark - Class Initializer
///-----------------------------------------------------------
/// @name Class Initializer
///-----------------------------------------------------------

/**
 Provides an instance of the view controller, initialized with the corresponding xib file of the same name.
 @return An instance of the DSYViewController (or subclass) that has been initialized with the xib file of the same name for the user interface layout.
 */
+(id)viewControllerWithXib;

#pragma mark - Initializing The View Controller
///-----------------------------------------------------------
/// @name Initializing The View Controller
///-----------------------------------------------------------

/**
 Main method that is called to initialize the view controller no matter how it is generated (interface builder, programmtically, etc.).
 @warning This function gets triggered after awakeFromNib so treat this as the viewDidLoad method.
 */
-(void)initializeViewController;

@end
