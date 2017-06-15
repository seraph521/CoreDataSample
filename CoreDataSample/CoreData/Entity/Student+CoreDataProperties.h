//
//  Student+CoreDataProperties.h
//  CoreDataSample
//
//  Created by LT-MacbookPro on 17/6/15.
//  Copyright © 2017年 XFX. All rights reserved.
//

#import "Student.h"


NS_ASSUME_NONNULL_BEGIN

@interface Student (CoreDataProperties)

+ (NSFetchRequest<Student *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *age;
@property (nullable, nonatomic, retain) School *school;
@property (nullable, nonatomic, retain) Course *course;

@end

NS_ASSUME_NONNULL_END
