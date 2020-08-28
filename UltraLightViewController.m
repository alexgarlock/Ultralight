//
//  UltraLightViewController.m
//  UltraLight
//
//  Created by Alex Garlock on 6/19/12.
//  Copyright (c) 2012 CPAG Studios. All rights reserved.
//

#import "UltraLightViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface UltraLightViewController ()

@end

@implementation UltraLightViewController

@synthesize onView, offView;
@dynamic onButton, offButton;


-(IBAction)torchOn:(id)lighton
{
    onButton.hidden = YES, offButton.hidden = NO, onView.hidden = NO, offView.hidden = YES;
    AVCaptureDevice *UltraLight = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
        if([UltraLight isTorchAvailable])
        {
            Boolean Complete = [UltraLight lockForConfiguration:NULL];
                if(Complete)
                {
                    [UltraLight setTorchMode:AVCaptureTorchModeOn];
                }
        }
}

-(IBAction)torchOff:(id)lightoff
{
    onButton.hidden = NO, offButton.hidden = YES, onView.hidden = YES, offView.hidden = NO;
    AVCaptureDevice *UltraLight = [AVCaptureDevice defaultDeviceWithMediaType: AVMediaTypeVideo];
        if([UltraLight isTorchAvailable])
        {
            Boolean Complete = [UltraLight lockForConfiguration:NULL];
                if(Complete)
                {
                    [UltraLight setTorchMode:AVCaptureTorchModeOff];
                }
        }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
