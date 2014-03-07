//
//  DSYViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYViewController.h"

@interface DSYViewController ()

@end

@implementation DSYViewController

#pragma mark - Class Initializers
+(id)viewControllerWithXib
{
    return [[self alloc] initWithNibName:NSStringFromClass([self class])
                                  bundle:nil];
}

#pragma mark - Initialization
-(id)init
{
    self = [super init];
    if(self){
        // Private
        [self _initialize];
        
        // Public
        [self initializeViewController];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self){
        // Private
        [self _initialize];
        
        // Public
        [self initializeViewController];
    }
    return self;
}

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        // Private
        [self _initialize];
        
        // Public
        [self initializeViewController];
    }
    return self;
}

-(void)_initialize
{
    // Private
}

-(void)initializeViewController
{
    // Public
}

@end
