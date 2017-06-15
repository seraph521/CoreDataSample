//
//  School+CoreDataProperties.m
//  CoreDataSample
//
//  Created by LT-MacbookPro on 17/6/15.
//  Copyright © 2017年 XFX. All rights reserved.
//

#import "School+CoreDataProperties.h"

@implementation School (CoreDataProperties)

+ (NSFetchRequest<School *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"School"];
}

@dynamic name;
@dynamic student;

@end
