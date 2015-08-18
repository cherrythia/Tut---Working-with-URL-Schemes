//
//  ViewController.m
//  Sender
//
//  Created by Quix Creations Singapore iOS 1 on 18/8/15.
//  Copyright (c) 2015 Terry Chia. All rights reserved.
//

#import "ViewController.h"
#import "SenderViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void)viewDidAppear:(BOOL)animated{
    SenderViewController *senderView = [[SenderViewController alloc]initWithNibName:@"SenderViewController" bundle:nil];
    [self presentViewController:senderView animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
