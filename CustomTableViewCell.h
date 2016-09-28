//
//  CustomTableViewCell.h
//  3DTouch
//
//  Created by Tensab San on 8/30/16.
//  Copyright © 2016 Tensab San. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellImage;
@property (weak, nonatomic) IBOutlet UITextView *cellTextView;

@end
