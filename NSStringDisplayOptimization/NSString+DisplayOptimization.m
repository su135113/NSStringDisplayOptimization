//
//  NSString+DisplayOptimization.m
//  wanxiang
//
//  Created by sunchao on 2018/7/30.
//  Copyright © 2018年 莫名. All rights reserved.
//

#import "NSString+DisplayOptimization.h"

@implementation NSString (DisplayOptimization)
-(id)displayOptimization{
    if (self == nil || self == NULL)  return @"";
    if ([self isKindOfClass:[NSNull class]])  return @"";
    if ([[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0)  return @"";
    if ([self isEqualToString:@"null"] || [self isEqualToString:@"(null)"])  return @"";
    return self;
}
@end
