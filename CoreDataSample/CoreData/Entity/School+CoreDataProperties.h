//
//  School+CoreDataProperties.h
//  CoreDataSample
//
//  Created by LT-MacbookPro on 17/6/15.
//  Copyright © 2017年 XFX. All rights reserved.
//

#import "School.h"


NS_ASSUME_NONNULL_BEGIN

@interface School (CoreDataProperties)

+ (NSFetchRequest<School *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Student *> *student;

@end

@interface School (CoreDataGeneratedAccessors)

- (void)addStudentObject:(Student *)value;
- (void)removeStudentObject:(Student *)value;
- (void)addStudent:(NSSet<Student *> *)values;
- (void)removeStudent:(NSSet<Student *> *)values;

@end

NS_ASSUME_NONNULL_END
