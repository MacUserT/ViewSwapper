//
//  AppDelegate.m
//  ViewSwapper
//
//  Created by Paul Hertroys on 17-01-15.
//  Copyright (c) 2015 Aurelius Technology Solutions. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

@synthesize viewControllers;
@synthesize currentView;

-(id)init
{
    self = [super init];
    if(self)
    {
        viewControllers = [[NSMutableArray alloc]init];
        
        NSViewController *vc;
        
        vc = [[SecondViewController alloc]init];
        [viewControllers addObject:vc];

        vc = [[FirstViewController alloc]init];
        [viewControllers addObject:vc];
    }
    
    NSLog(@"The number of views in the view controller array is: %ld.\n", [viewControllers count]);
    return self;
}

-(void)displayViewController:(NSViewController *)vc
{
    NSWindow *w = [_viewBox window];
    BOOL ended = [w makeFirstResponder:w];
    if(!ended)
    {
        NSBeep();
        return;
    }
    
    NSView *v = [vc view];
    [_viewBox setContentView:v];
}


-(IBAction)swapViewOnButtonclick:(id)sender
{
    if(!currentView)
    {
        currentView++;
    }else
    {
        currentView = 0;
    }
    NSLog(@"Current view is: %ld.\n", currentView);
    NSViewController *vc = [viewControllers objectAtIndex:currentView];
    [self displayViewController:vc];
}

-(void)awakeFromNib
{
    currentView = 0;
    [self displayViewController:[viewControllers objectAtIndex:currentView]];
}

@end
