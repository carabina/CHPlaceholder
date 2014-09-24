//
//  CHPlaceholder.h
//  Placeholder
//
//  Created by Chayel Heinsen on 9/23/14.
//  Copyright (c) 2014 Chayel Heinsen. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE @interface CHPlaceholder : UIView
/**
 *  The size of the arrows. Default is 0. If you set this to anything other than 0, the autoresizing of arrows will cancel.
 *  Does not use negative numbers. CHPlaceholder will automatically convert negative numbers to positive for use.
 */
@property (nonatomic) IBInspectable CGFloat arrowSize;

/**
 *  The width of the arrows and lines.
 */
@property (nonatomic) IBInspectable CGFloat arrowWidth;

/**
 *  The color of the arrows and lines.
 */
@property (strong, nonatomic) IBInspectable UIColor *arrowColor;

@end
