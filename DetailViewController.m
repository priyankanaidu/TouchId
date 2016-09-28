//
//  DetailViewController.m
//  3DTouch
//
//  Created by Tensab San on 8/30/16.
//  Copyright © 2016 Tensab San. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITextView *textView;

@end

@implementation DetailViewController

-(NSArray<id> *) previewActionItems {
    
    UIPreviewAction *shareAction = [UIPreviewAction actionWithTitle:@"Share" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        UIActivityViewController *avc = [[UIActivityViewController alloc] initWithActivityItems:@[self.image] applicationActivities:nil];
        [self.mytableController presentViewController:avc animated:YES completion:nil];
    }];
    
    UIPreviewAction *likeAction = [UIPreviewAction actionWithTitle:@"Like" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"Liked");
    }];
    return @[shareAction, likeAction];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Yahoo";
    self.imageView.image = self.image;
    self.textView.text = self.detailText;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
