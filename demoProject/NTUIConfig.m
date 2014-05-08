//
//  NTUIConfig.m
//  demoProject
//
//  Created by Nicholas Tau on 5/8/14.
//  Copyright (c) 2014 Nicholas Tau. All rights reserved.
//

#import "NTUIConfig.h"
#import "UIColor+HexColors.h"

@interface NTUIConfig()
@property (nonatomic,strong) UIColor * styleColor;
@end

@implementation NTUIConfig

static NTUIConfig * _instance;
+(instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [NTUIConfig new];
    });
    return _instance;
}

-(UIColor*)styleColor
{
    if (!_styleColor) {
        NSURL * URL = [[NSBundle mainBundle] URLForResource:@"Configuration"
                                              withExtension:@"plist"];
        NSDictionary * config = [NSDictionary dictionaryWithContentsOfURL:URL];
        NSString * color = config[@"Style"][@"Color"];
        _styleColor = [UIColor colorWithHexString:color];
    }
    return _styleColor;
}
@end
