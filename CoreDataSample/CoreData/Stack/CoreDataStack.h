//
//  CoreDataStack.h
//  CoreDataSample
//
//  Created by LT-MacbookPro on 17/6/15.
//  Copyright © 2017年 XFX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataStack : NSObject

+ (instancetype)sharedInstance;
/**
 * 初始化
 */
- (void)initCoreDataComponents;

/**
 * 重置
 */
- (void)resetCoreDataComponents;
@end
