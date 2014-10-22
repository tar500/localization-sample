//
//  LSViewController.m
//  LocalizationSample
//
//  Created by tar on 23.09.14.
//  Copyright (c) 2014 tar. All rights reserved.
//

#import "LSViewController.h"

@interface LSViewController ()

@property (strong, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation LSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self localizeInterface];
}

- (void)localizeInterface {
    
    // view controller title
    self.title = NSLocalizedString(@"Push the button", @"Push the button scene title");
    
    // outlets
    [self.actionButton setTitle:NSLocalizedString(@"Push me", @"'Push me' button title") forState:UIControlStateNormal];
    self.statusLabel.text = NSLocalizedString(@"You have not pushed the button yet", @"Status message that tells user that button have not been pushed yet");
    
}


#pragma mark - Actions

- (IBAction)pushMeButtonAction:(UIButton *)sender {
    
    NSString * popupTitle = NSLocalizedString(@"Congratulations!", @"Successful button pushing pop-up title");
    NSString * statusMessage = NSLocalizedString(@"You have successfully pushed the button", @"Successful button pushing pop-up message");
    
    UIAlertView * alert = [[UIAlertView alloc]
                           initWithTitle:popupTitle
                           message:statusMessage
                           delegate:nil
                           cancelButtonTitle:BUTTON_CLOSE
                           otherButtonTitles:nil];
    
    [alert show];
    
    self.statusLabel.text = statusMessage;
    self.statusLabel.textColor = [UIColor greenColor];
    self.actionButton.enabled = NO;
    
}


@end
