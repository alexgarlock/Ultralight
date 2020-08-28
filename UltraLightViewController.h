//
//  UltraLightViewController.h
//  UltraLight
//
//  Created by Alex Garlock on 6/19/12.
//  Copyright (c) 2012 CPAG Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface UltraLightViewController : UIViewController
{
    IBOutlet UIImageView * onButton;
    IBOutlet UIImageView * offButton;
    IBOutlet UIImageView * onView;
    IBOutlet UIImageView * offView;
}

@property(nonatomic, strong) IBOutlet UIButton * onButton;
@property(nonatomic, strong) IBOutlet UIButton * offButton;
@property(nonatomic, strong) IBOutlet UIImageView * onView;
@property(nonatomic, strong) IBOutlet UIImageView * offView;

-(IBAction)torchOn:(id)lighton;
-(IBAction)torchOff:(id)lightoff;

@end
