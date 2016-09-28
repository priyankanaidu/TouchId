//
//  DetailViewController.h
//  3DTouch
//
//  Created by Priyanka Naidu  on 8/30/16.
//  Copyright © 2016 Priyanka Naidu . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableViewController.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) NSString *detailText;
@property (nonatomic, strong) UIImage *image;
@property (weak, nonatomic) MyTableViewController *mytableController;

@end
