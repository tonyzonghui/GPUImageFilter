//
//  ViewController.h
//  TestImageFilters
//
//  Created by Zonghui Zhang on 12/10/12.
//  Copyright (c) 2012 Zhang Zonghui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLCImagePickerController.h"

@interface ViewController : UIViewController <DLCImagePickerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)btnSelectImageClicked:(id)sender;

@end
