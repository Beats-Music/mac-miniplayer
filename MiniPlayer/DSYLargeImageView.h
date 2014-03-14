//
//  DSYLargeImageView.h
//  largeImageClip
//
//  Created by dre on 3/6/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYImageView.h"

/**
 The DSYLargeImageView, a subclass of the DSYImageView, provides an image view optimized for larger displays and draws an image that is stretched to fit the width of the bounds while maintaining the same aspect ratio. The bottom part of the image is cut out so the top rests flush. An example of this class is in the DSYFullScreenViewController to display an artist cover image as a full background image. 
 */
@interface DSYLargeImageView : DSYImageView

@end
