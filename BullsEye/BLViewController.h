//
//  BLViewController.h
//  BullsEye
//
//  Created by Ben Leader on 9/2/14.
//  Copyright (c) 2014 Benjamin Leader. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BLViewController : UIViewController <UIAlertViewDelegate>

@property (nonatomic, weak) IBOutlet UISlider *slider;
@property (nonatomic, weak) IBOutlet UILabel *targetLabel;
@property (nonatomic, weak) IBOutlet UILabel *scoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *roundLabel;

- (IBAction)showAlert;

- (IBAction)sliderMoved:(UISlider *)slider;

- (IBAction)startOver;

@end
