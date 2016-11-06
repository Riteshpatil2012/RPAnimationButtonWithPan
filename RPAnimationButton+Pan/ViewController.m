//
//  ViewController.m
//  RPAnimationButton+Pan
//
//  Created by Ritesh on 26/10/16.
//  Copyright © 2016 riteshpatil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    heightOfScrenn=[[UIScreen mainScreen]bounds].size.height;
    WidthOfScreen=[[UIScreen mainScreen]bounds].size.width;
    UIPanGestureRecognizer *panGesture=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(handlePan:)];
    self.ballView.userInteractionEnabled=YES;
    [self.ballView addGestureRecognizer:panGesture];
}
-(void)handlePan:(UIPanGestureRecognizer *)gesture{
    CGRect originalFrame;
    
    if ([gesture isKindOfClass:[UIGestureRecognizer class]]) {
        if (gesture.state == UIGestureRecognizerStateBegan) {
            originalFrame=gesture.view.frame;
        }
        else if (gesture.state == UIGestureRecognizerStateChanged){
            CGPoint delta = [gesture locationInView:self.view];
            gesture.view.center=delta;
        }
        else if (gesture.state == UIGestureRecognizerStateEnded){
            
        }
        else{
            NSLog(@"Geture does not detected");
        }
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionAllDirection:(id)sender {
    UIButton *button=sender;
    if (button.tag==100) {
        [self animationNW:0.5 Delay:0];
    }
    else if (button.tag==101) {
        [self animationNorth:0.5 Delay:0];
    }
    else if (button.tag==102) {
        [self animationNE:0.5 Delay:0];
    }
    else if (button.tag==103) {
        [self animationWest:0.5 Delay:0];
    }
    else if (button.tag==104) {
        [self animationEast:0.5 Delay:0];
    }
    else if (button.tag==105) {
        [self animationSW:0.5 Delay:0];
    }
    else if (button.tag==106) {
        [self animationSouth:0.5 Delay:0];
    }
    else if (button.tag==107) {
        [self animationSE:0.5 Delay:0];
    }
}
- (IBAction)zoomIn:(id)sender {
    [self animateZoom:+25];
}

- (IBAction)zoomOut:(id)sender {
    [self animateZoom:-25];
}
-(void)animationNorth:(NSTimeInterval)time Delay:(NSTimeInterval)delayTime{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ballView setFrame:CGRectMake(self.ballView.frame.origin.x, self.ballView.frame.origin.y-50, self.ballView.frame.size.width, self.ballView.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"UP Finished");
        }
    }];
    
}

-(void)animationNW:(NSTimeInterval)time Delay:(NSTimeInterval)delayTime{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ballView setFrame:CGRectMake(self.ballView.frame.origin.x - 50, self.ballView.frame.origin.y - 50, self.ballView.frame.size.width, self.ballView.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"NW Finished");
        }
    }];
    
}
-(void)animationNE:(NSTimeInterval)time Delay:(NSTimeInterval)delayTime{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ballView setFrame:CGRectMake(self.ballView.frame.origin.x+50, self.ballView.frame.origin.y-50, self.ballView.frame.size.width, self.ballView.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"NE Finished");
        }
    }];
    
}
-(void)animationEast:(NSTimeInterval)time Delay:(NSTimeInterval)delayTime{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ballView setFrame:CGRectMake(self.ballView.frame.origin.x+50, self.ballView.frame.origin.y, self.ballView.frame.size.width, self.ballView.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"East Finished");
        }
    }];
    
}
-(void)animationSE:(NSTimeInterval)time Delay:(NSTimeInterval)delayTime{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ballView setFrame:CGRectMake(self.ballView.frame.origin.x+50, self.ballView.frame.origin.y+50, self.ballView.frame.size.width, self.ballView.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"SE Finished");
        }
    }];
    
}
-(void)animationSouth:(NSTimeInterval)time Delay:(NSTimeInterval)delayTime{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ballView setFrame:CGRectMake(self.ballView.frame.origin.x, self.ballView.frame.origin.y+50, self.ballView.frame.size.width, self.ballView.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"South Finished");
        }
    }];
    
}
-(void)animationSW:(NSTimeInterval)time Delay:(NSTimeInterval)delayTime{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ballView setFrame:CGRectMake(self.ballView.frame.origin.x-50, self.ballView.frame.origin.y+50, self.ballView.frame.size.width, self.ballView.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"sw Finished");
        }
    }];
    
}
-(void)animationWest:(NSTimeInterval)time Delay:(NSTimeInterval)delayTime{
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.ballView setFrame:CGRectMake(self.ballView.frame.origin.x-50, self.ballView.frame.origin.y, self.ballView.frame.size.width, self.ballView.frame.size.height)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"West Finished");
        }
    }];
    
}
-(void)zoomWithScale:(CGFloat)scale{
    [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.ballView.transform=CGAffineTransformMakeScale(scale, scale);
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"sbvk");
        }
    }];
    }

-(void)animateZoom:(CGFloat)size{
    [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        [self.ballView setFrame:CGRectMake(self.ballView.frame.origin.x, self.ballView.frame.origin.y, self.ballView.frame.size.width+size, self.ballView.frame.size.height+size)];
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"zoom comp");
        }
    }];
}


@end
