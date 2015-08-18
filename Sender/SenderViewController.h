//
//  SenderViewController.h
//  Sender
//
//  Created by Quix Creations Singapore iOS 1 on 18/8/15.
//  Copyright (c) 2015 Terry Chia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SenderViewController : UIViewController{
    IBOutlet UITextField *textBox;
}

-(IBAction)openMaps: (id)sender;
-(IBAction)openYouTube :(id)sender;
-(IBAction)openReceiverApp :(id)sender;

@property(nonatomic,retain) IBOutlet UITextField *textBox;

@end
