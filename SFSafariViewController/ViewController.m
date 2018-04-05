//
//  ViewController.m
//  SFSafariViewController
//
//  Created by Jose on 5/4/18.
//  Copyright © 2018 Copanonga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <SFSafariViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    
    NSLog(@"\nViewController");
    [super viewDidLoad];

}

- (void)viewDidAppear:(BOOL)animated {
    
    [self verWeb];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - SafariViewController

- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    
    [self dismissViewControllerAnimated:true completion:nil];
    
}

#pragma mark - Datos

-(void)verWeb {
    
    NSString *urlString = @"https://github.com/";
    NSURL *url = [NSURL URLWithString:urlString];
    
    SFSafariViewController *svc = [[SFSafariViewController alloc] initWithURL:url];
    svc.delegate = self;
    [self presentViewController:svc animated:NO completion:nil];
    
}

@end
