//
//  AboutViewController.m
//  BullsEye
//
//  Created by Ben Leader on 9/8/14.
//  Copyright (c) 2014 Benjamin Leader. All rights reserved.
//

#import "AboutViewController.h"

@implementation AboutViewController

- (IBAction)close {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *htmlFile = [[NSBundle mainBundle]
                          pathForResource:@"BullsEye" ofType:@"html"]; NSData *htmlData = [NSData dataWithContentsOfFile:htmlFile];
    NSURL *baseURL = [NSURL fileURLWithPath:[
                                             [NSBundle mainBundle] bundlePath]];
    [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:baseURL];
}

- (BOOL)prefersStatusBarHidden {
    return YES; }

@end
