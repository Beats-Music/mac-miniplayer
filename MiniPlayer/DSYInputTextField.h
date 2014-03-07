//
//  DSYInputTextField.h
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/23/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "ZKTextField.h"
@class DSYInputTextField;

/**
 The DSYInputTextFieldDelegate, which conforms to the NSObject protocol, provides notifications for when an DSYInputTextField changes its string value.
 */
@protocol DSYInputTextFieldDelegate <NSObject>

@optional

/**
 Notifies the DSYInputTextFieldDelegate of a change in the string value of the containing DSYInputTextField.
 @param inputField The DSYInputTextField whose string value changed
 @param string     An NSString representing the new string value
 */
-(void)inputField:(DSYInputTextField *)inputField textChanged:(NSString *)string;

@end

/**
 The DSYInputTextField provides a basic text for normal and secure text input that is optimized for the Beats Music brand look.
 */
@interface DSYInputTextField : ZKTextField <NSTextViewDelegate,NSTextDelegate>

/**
 The DSYInputTextFieldDelegate to receive the 'textChanged' notification
 */
@property (nonatomic,assign) id<DSYInputTextFieldDelegate> inputTextFieldDelegate;

@end
