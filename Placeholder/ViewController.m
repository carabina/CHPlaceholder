//
//  ViewController.m
//  Placeholder
//
//  Created by Chayel Heinsen on 9/23/14.
//  Copyright (c) 2014 Chayel Heinsen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        // Makes a 200 x 200 box in the top left corner.
    CHPlaceholder *placeholder = [[CHPlaceholder alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    placeholder.backgroundColor = [UIColor clearColor];
    placeholder.arrowColor = [UIColor blackColor];
    placeholder.arrowWidth = 5;
    
        // Setting arrowSize will turn off autoresizing of the arrows.
        //placeholder.arrowSize = 45;
    
    [self.view addSubview:placeholder];
    
        // The other 320 x 320 box is made all in the IB.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
