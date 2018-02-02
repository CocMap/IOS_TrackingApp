//
//  ProgressCircle.h
//  TrackingApp
//
//  Created by CocMap on 1/27/18.
//  Copyright © 2018 CocMap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressCircle : UIView {
    NSDictionary *attributes;
    
    @public
    NSString *active;
    NSString *working;
    NSString *relax;
    
    int progressActive;
    int progressWorking;
    int progressRelax;
}

@end
