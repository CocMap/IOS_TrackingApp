//
//  ProgressCircle.m
//  TrackingApp
//
//  Created by CocMap on 1/27/18.
//  Copyright © 2018 CocMap. All rights reserved.
//

#import "ProgressCircle.h"

@implementation ProgressCircle

- (void) didMoveToSuperview {
    self.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    self->attributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Helvetica" size:20], NSFontAttributeName, [UIColor redColor], NSForegroundColorAttributeName, nil];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    CGAffineTransform tran = CGAffineTransformMakeTranslation(rect.size.width/2, rect.size.height/2);
    tran = CGAffineTransformRotate(tran, (270)*M_PI/180);
    CGContextConcatCTM(context, tran);
    
    
    //large circle
    //int progress;
    progressActive = 30;     //counter 0-100
    int limitInRadius = 60;
    
    UIBezierPath *path=[UIBezierPath bezierPath];
    [path setLineWidth:2];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addArcWithCenter:CGPointMake(0, 0) radius:50 startAngle:0 endAngle:(progressActive*3.6)*M_PI/180 clockwise:true];
    [path closePath];
    [[UIColor greenColor] setFill];
    [path fill];
    
    //small circle
    path = [UIBezierPath bezierPath];
    [path setLineWidth:2];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addArcWithCenter:CGPointMake(0, 0) radius:45 startAngle:0 endAngle:(360)*M_PI/180 clockwise:true];
    [path closePath];
    [[UIColor whiteColor] setFill];
    [path fill];
    
    //out of limit circle (large)
    path = [UIBezierPath bezierPath];
    [path setLineWidth:3];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addArcWithCenter:CGPointMake(0, 0) radius:45 startAngle:0 endAngle:(limitInRadius)*M_PI/180 clockwise:true];
    [path closePath];
    [[UIColor redColor	] setFill];
    [path fill];
    
    //out of limit circle (small)
    path = [UIBezierPath bezierPath];
    [path setLineWidth:3];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addArcWithCenter:CGPointMake(0, 0) radius:40 startAngle:0 endAngle:(360)*M_PI/180 clockwise:true];
    [path closePath];
    [[UIColor whiteColor] setFill];
    [path fill];
    
    tran = CGAffineTransformMakeRotation((75)*M_PI/180);
    CGContextConcatCTM(context, tran);
    
    //circle name + text format
    active = @"active";
    
    NSAttributedString *cur_text = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat: @"%@\n%d%%", active, progressActive] attributes:attributes];
    
    CGSize text_size = [cur_text size];
    CGRect r = CGRectMake(0+(0-text_size.width)/2, 0+(0-text_size.height)/2, text_size.width, text_size.height);
    [cur_text drawInRect:r];
    CGContextRestoreGState(context);
}

@end

