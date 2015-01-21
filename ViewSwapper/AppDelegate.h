//
//  AppDelegate.h
//  ViewSwapper
//
//  Created by Paul Hertroys on 17-01-15.
//  Copyright (c) 2015 Aurelius Technology Solutions. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>


@property (weak) IBOutlet NSButton *swapViewButton;
@property (weak) IBOutlet NSBox *viewBox;
@property NSMutableArray *viewControllers;
@property NSUInteger currentView;

-(IBAction)swapViewOnButtonclick:(id)sender;
-(void)displayViewController:(NSViewController *)vc;

@end

