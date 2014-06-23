//
//  BNRItem.m
//  RandomItems
//
//  Created by Weera Kasetsin on 6/23/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber
{
    // Call the superclass's desginated initializer
    self = [super init];
    
    // Did the superclass's designated initializer succeed?
    if (self) {
        
        // Give the instance variables initial values
        _itemName = name;
        _serialNumber = sNumber;
        _valueInDollars = value;
        
        // Set _dateCreated to the current date and time
        _dateCreaed = [[NSDate alloc] init];
    }
    
    // Return the address of the newly initialized object
    return self;
}

- (instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (instancetype)init
{
    return [self initWithItemName:@"Item"];
}

- (void)setItemName:(NSString *)str
{
    _itemName = str;
}
- (NSString *)itemName
{
    return _itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    _serialNumber = str;
}
- (NSString *)serialNumber
{
    return _serialNumber;
}

- (void)setValueInDollars:(int)v
{
    _valueInDollars = v;
}
- (int)valueInDollars
{
    return _valueInDollars;
}

- (NSDate *)dateCreated
{
    return _dateCreaed;
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descriptionString;
}

@end
