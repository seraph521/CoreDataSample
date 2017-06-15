//
//  MainViewController.m
//  CoreDataSample
//
//  Created by LT-MacbookPro on 17/6/15.
//  Copyright © 2017年 XFX. All rights reserved.
//

#import "MainViewController.h"
#import "CoreDataStack.h"
#import <MagicalRecord/MagicalRecord.h>
#import "Student.h"
#import "Course.h"
#import "School.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CoreDataStack * stack = [CoreDataStack sharedInstance];
    [stack initCoreDataComponents];
    
    Student * student = [Student MR_createEntityInContext:[NSManagedObjectContext MR_defaultContext]];
    student.name = @"小明";
    student.age = @"20";
    
    School * school = [School MR_createEntityInContext:[NSManagedObjectContext MR_defaultContext]];
    
    school.name = @"安徽建筑大学";
    
    Course * course = [Course MR_createEntityInContext:[NSManagedObjectContext MR_defaultContext]];
    
    course.name = @"高等数学";
    
    student.school = school;
    student.course = course;
    
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
}




@end
