//
//  NSArray+Log.m
//  WZLY
//
//  Created by qiuqixiang on 2021/2/2.
//  Copyright © 2021 我主良缘. All rights reserved.
//

#import "NSArray+Log.h"

@implementation NSArray (Log)

- (NSString *)descriptionWithLocale:(id)locale {
     NSMutableString *string = [NSMutableString string];

     // 开头有个[
     [string appendString:@"[\n"];

    // 遍历所有的元素
     [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [string appendFormat:@"\t%@,\n", obj];
     }];

     // 结尾有个]
     [string appendString:@"]"];

     // 查找最后一个逗号
     NSRange range = [string rangeOfString:@"," options:NSBackwardsSearch];
    if (range.location != NSNotFound)
     [string deleteCharactersInRange:range];
    
    @try {
        string = [[NSMutableString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
        string = (NSMutableString *)[string stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"]; // 处理\/转义字符
        } @catch (NSException *exception) {
        } @finally {
        }

    return string;
}

- (void)debugLog{
    NSLog(@"%@",self);
}

@end
