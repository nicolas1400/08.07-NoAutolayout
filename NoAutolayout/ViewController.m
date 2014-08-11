//
//  ViewController.m
//  NoAutolayout
//
//  Created by Nicolas Semenas on 07/08/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *viewOne;

@property CGRect viewOneFrame;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.viewOneFrame = self.viewOne.frame;
}

-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
    
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    
    if (fromInterfaceOrientation == UIInterfaceOrientationLandscapeLeft ||
        fromInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        self.viewOne.frame = self.viewOneFrame;
    } else {
        self.viewOne.frame = CGRectMake(self.viewOne.frame.origin.x,
                                        self.viewOne.frame.origin.y,
                                        self.viewOneFrame.size.width,
                                        self.viewOneFrame.size.height);
    }
}


@end
