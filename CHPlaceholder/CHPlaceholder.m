//
//  CHPlaceholder.m
//  Placeholder
//
//  Created by Chayel Heinsen on 9/23/14.
//  Copyright (c) 2014 Chayel Heinsen. All rights reserved.
//

#import "CHPlaceholder.h"

@implementation CHPlaceholder

- (id)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame])  {
        self.arrowSize = 0;
    }
    return self;
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
        // Drawing code
    
    CGFloat width = rect.size.width;
    CGFloat height = rect.size.height;
    
    CGFloat fontSize = 4 + (MIN(width,height))/10;
    
    CGFloat arrowSize;
    
    if (self.arrowSize != 0)
        arrowSize = fabs(self.arrowSize);
    else
        arrowSize = (MIN(width,height))/10;
    
    CGFloat lineWidth = self.arrowWidth;
    
    UIFont *font = [UIFont systemFontOfSize:fontSize];
    
        //fill the back
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, self.backgroundColor.CGColor);
    CGContextFillRect(ctx, rect);
    
        //strike lines & arrows
    CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetStrokeColorWithColor(ctx, self.arrowColor.CGColor);
    
    CGContextMoveToPoint(ctx, width / 2, 0);
    CGContextAddLineToPoint(ctx, width / 2, height);
    CGContextMoveToPoint(ctx, width / 2, 0);
    CGContextAddLineToPoint(ctx, width / 2 - arrowSize, arrowSize);
    CGContextMoveToPoint(ctx, width / 2, 0);
    CGContextAddLineToPoint(ctx, width / 2 + arrowSize, arrowSize);
    CGContextMoveToPoint(ctx, width / 2, height);
    CGContextAddLineToPoint(ctx, width / 2 - arrowSize, height - arrowSize);
    CGContextMoveToPoint(ctx, width / 2, height);
    CGContextAddLineToPoint(ctx, width / 2 + arrowSize, height - arrowSize);
    
    CGContextMoveToPoint(ctx, 0, height / 2);
    CGContextAddLineToPoint(ctx, width, height / 2);
    CGContextMoveToPoint(ctx, 0, height / 2);
    CGContextAddLineToPoint(ctx, arrowSize, height / 2 - arrowSize);
    CGContextMoveToPoint(ctx, 0, height / 2);
    CGContextAddLineToPoint(ctx, arrowSize, height / 2 + arrowSize);
    CGContextMoveToPoint(ctx, width, height / 2);
    CGContextAddLineToPoint(ctx, width - arrowSize, height / 2 - arrowSize);
    CGContextMoveToPoint(ctx, width, height / 2);
    CGContextAddLineToPoint(ctx, width - arrowSize, height / 2 + arrowSize);
    
    CGContextStrokePath(ctx);
    
        //calculate the text area
    NSString *strLabel = [NSString stringWithFormat:@"%.0f X %.0f",width, height];
    
    
#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
    const CGSize labelSize = [strLabel sizeWithFont:font forWidth:CGFLOAT_MAX lineBreakMode:NSLineBreakByClipping];
    
    CGFloat rectWidth = roundf(labelSize.width) + 4;
    CGFloat rectHeight = roundf(labelSize.height) + 4;
    
        //clear the area behind the text
    CGRect strRect = CGRectMake(width / 2 - rectWidth / 2, height / 2 - rectHeight / 2, rectWidth, rectHeight);
    CGContextClearRect(ctx, strRect);
    CGContextSetFillColorWithColor(ctx, self.backgroundColor.CGColor);
    CGContextFillRect(ctx, strRect);
    
        //draw text
    CGContextSetFillColorWithColor(ctx, self.arrowColor.CGColor);
    [strLabel drawInRect:CGRectInset(strRect, 0, 2) withFont:font lineBreakMode:NSLineBreakByTruncatingMiddle alignment:NSTextAlignmentCenter];
#pragma GCC diagnostic warning "-Wdeprecated-declarations"
    
}


@end
