//
//  ViewController.m
//  UIKit-UIAccessibility
//
//  Created by 王钱钧 on 14-9-1.
//  Copyright (c) 2014年 王钱钧. All rights reserved.
//
// https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/iPhoneAccessibility/Introduction/Introduction.html

//http://wenku.baidu.com/view/d1c77a781711cc7931b716d7###
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *accessibleElements;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setIsAccessibilityElement:YES];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSMutableArray *)accessibleElements
{
    if (_accessibleElements != nil) {
        return _accessibleElements;
    }
    
    _accessibleElements = [[NSMutableArray alloc]init];
    UIAccessibilityElement *element1 = [[UIAccessibilityElement alloc]initWithAccessibilityContainer:self];
    [_accessibleElements addObject: element1];
    UIAccessibilityElement *element2 = [[UIAccessibilityElement alloc]initWithAccessibilityContainer:self];
    [_accessibleElements addObject:element2];
    
    return _accessibleElements;
    
}

- (BOOL)isAccessibilityElement
{
    return YES;
}

/* The following methods are implementations of UIAccessibilityContainer protocol methods. */
- (NSInteger)accessibilityElementCount
{
    return [[self accessibleElements] count];
}

- (id)accessibilityElementAtIndex:(NSInteger)index
{
    return [[self accessibleElements] objectAtIndex:index];
}

- (NSInteger)indexOfAccessibilityElement:(id)element
{
    return [[self accessibleElements] indexOfObject:element];
}
@end
