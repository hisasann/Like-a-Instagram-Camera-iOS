//
//  ImageViewController.m
//  Like-a-Instagram-Camera
//
//  Created by hisamatsu on 2013/07/02.
//  Copyright (c) 2013年 teamLab. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "ImageViewController.h"

@interface ImageViewController () {
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)closeAction:(id)sender;
@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.backgroundColor = [UIColor purpleColor];
    self.imageView.userInteractionEnabled = YES;

    NSLog(@"self.image.width - %f", self.image.size.width);
    NSLog(@"self.image.height - %f", self.image.size.height);

    self.imageView.image = self.image;

    // shadowを入れる
    CALayer *layer = self.imageView.layer;
    layer.shadowOffset = CGSizeMake(2.5, 2.5);
    layer.shadowColor = [[UIColor grayColor] CGColor];
    layer.shadowOpacity = 0.5;
}

- (IBAction)closeAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}

@end
