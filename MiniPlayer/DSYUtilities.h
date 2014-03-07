//
//  DSYUtilities.h
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/18/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#ifndef SubscriptionsDashboard_DSYUtilities_h
#define SubscriptionsDashboard_DSYUtilities_h

#define SuppressPerformSelectorLeakWarning(function) \
do { \
    _Pragma("clang diagnostic push") \
    _Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
    function; \
    _Pragma("clang diagnostic pop") \
} while (0)

#pragma mark - Math
#import "DSYMath.h"

#pragma mark - Notifications
#import "DSYGeneralNotifications.h"

#endif
