//
//  AVTBaseService.m
//  Common
//
//  Created by Alex Gutierrez on 11/12/13.
//  Copyright (c) 2013 Avantica Technologies. All rights reserved.
//

#import "AVTBaseAppService.h"


@interface AVTBaseAppService ()

@end

@implementation AVTBaseAppService

#pragma mark -
#pragma mark Initialization
#pragma mark -

+ (instancetype)sharedService
{
    static id _sharedService = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedService = [[self class] new];
    });
    return _sharedService;
}

@end
