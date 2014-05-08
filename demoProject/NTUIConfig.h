//
//  NTUIConfig.h
//  demoProject
//
//  Created by Nicholas Tau on 5/8/14.
//  Copyright (c) 2014 Nicholas Tau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NTUIConfig : NSObject
+(instancetype)sharedInstance;
-(UIColor*)styleColor;
@end
