//
//  DetailViewController.h
//  3DTouch
//
//  Created by Tensab San on 8/30/16.
//  Copyright © 2016 Tensab San. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableViewController.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) NSString *detailText;
@property (nonatomic, strong) UIImage *image;
@property (weak, nonatomic) MyTableViewController *mytableController;

@end
