//
//  SenderViewController.m
//  Sender
//
//  Created by Quix Creations Singapore iOS 1 on 18/8/15.
//  Copyright (c) 2015 Terry Chia. All rights reserved.
//

#import "SenderViewController.h"

@interface SenderViewController ()

@end

@implementation SenderViewController

@synthesize textBox;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - openMaps, openYouTube , OpenReciever
-(IBAction)openMaps:(id)sender {
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"https://www.youtube.com/watch?v=TFFkK2SmPg4";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}

-(IBAction)openYouTube:(id)sender{
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *ourPath = @"http://www.youtube.com/watch?v=TFFkK2SmPg4";
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    [ourApplication openURL:ourURL];
}

-(IBAction)openReceiverApp:(id)sender {
    //Opens Receiver App if is installed, otherwise display an error message
    UIApplication *ourApplication = [UIApplication sharedApplication];
    NSString *URLEncodedText = [self.textBox.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSString *ourPath = [@"readtext://" stringByAppendingString:URLEncodedText];
    NSURL *ourURL = [NSURL URLWithString:ourPath];
    
    if([ourApplication canOpenURL:ourURL]){
        [ourApplication openURL:ourURL];
    }
    else {
        //Display Error
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"ERROR" message:@"Receiver App is not isntalled" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil ];
        [alertView show];
    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
