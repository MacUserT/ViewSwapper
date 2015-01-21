//
//  FirstViewController.m
//  ViewSwapper
//
//  Created by Paul Hertroys on 17-01-15.
//  Copyright (c) 2015 Aurelius Technology Solutions. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

-(id)init
{
    self = [super initWithNibName:@"SecondViewController" bundle:nil];
    
    if(self)
    {
        [self setTitle:@"Second View"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

@end
