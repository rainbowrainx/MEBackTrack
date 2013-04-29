//
//  MEBackTrackManager.h
//  iRingTones
//
//  Created by Meng Xiangping on 4/29/13.
//
//

#import <Foundation/Foundation.h>

@interface MEBackTrackManager : NSObject

@property (nonatomic, weak) UINavigationController *navigationController;

+ (MEBackTrackManager *) sharedManager;

- (void) registerNavigationController:(UINavigationController *) controller;

@end
