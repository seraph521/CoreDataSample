//
//  CoreDataStack.m
//  CoreDataSample
//
//  Created by LT-MacbookPro on 17/6/15.
//  Copyright © 2017年 XFX. All rights reserved.
//

#import "CoreDataStack.h"
#import <MagicalRecord/MagicalRecord.h>

static CoreDataStack * stack;

@implementation CoreDataStack

//单例模式

+(instancetype)allocWithZone:(struct _NSZone *)zone{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        stack = [super allocWithZone:zone];
        [MagicalRecord setLoggingLevel:MagicalRecordLoggingLevelError];

    });
    return stack;
}

+ (instancetype)sharedInstance{

    return [[self alloc] init];
}

- (id)copy
{
    return [[[self class] alloc] init];
}

/*
 * 初始化
 */
- (void)initCoreDataComponents{

    //沙盒路径
    NSString * path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject];
    
    NSURL * storeUrl = [[NSURL fileURLWithPath:path] URLByAppendingPathComponent:[NSString stringWithFormat:@"user_1/CoreData.sqlite"]];
   // NSLog(@"====storeUrl=%@",storeUrl);
    [MagicalRecord setupCoreDataStackWithStoreAtURL:storeUrl];
}

/*
 * 重置
 */
- (void)resetCoreDataComponents{

    //清理CoreData链接
    [MagicalRecord cleanUp];
}





@end
