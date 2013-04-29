//
//  MEBackTrackManager.m
//  iRingTones
//
//  Created by Meng Xiangping on 4/29/13.
//
//

#import "MEBackTrackManager.h"

static MEBackTrackManager *_sharedManager;

@implementation MEBackTrackManager

+ (MEBackTrackManager *)sharedManager {
    
    if(_sharedManager == nil){
    
        _sharedManager = [[MEBackTrackManager alloc] init];
        
    }
    
    return _sharedManager;

}

- (void)registerNavigationController:(UINavigationController *)controller {
    
    self.navigationController = controller;
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewSwaped:)];
    [self.navigationController.view addGestureRecognizer:swipeGesture];
    
}

- (void) viewSwaped:(UISwipeGestureRecognizer *) gesture {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
