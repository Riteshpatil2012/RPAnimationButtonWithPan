//
//  ViewController.h
//  RPAnimationButton+Pan
//
//  Created by Ritesh on 26/10/16.
//  Copyright © 2016 riteshpatil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CGFloat heightOfScrenn;
    CGFloat WidthOfScreen;
}
- (IBAction)actionAllDirection:(id)sender;

@property (strong, nonatomic) IBOutlet UIImageView *ballView;
- (IBAction)zoomIn:(id)sender;
- (IBAction)zoomOut:(id)sender;

@end

