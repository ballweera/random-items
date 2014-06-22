//
//  main.m
//  RandomItems
//
//  Created by Weera Kasetsin on 6/22/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to
        // by the variable items, passing a string each tiem
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another messsage, insertObject:atIndex: , to the same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array ...
        for (NSString *item in items) {
            // Log the description of item
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
        [item setItemName:@"Red Sofa"];
        [item setSerialNumber:@"A1B2C"];
        [item setValueInDollars:100];
        
        NSLog(@"%@ %@ %@ %d", [item itemName], [item dateCreated], [item serialNumber], [item valueInDollars]);
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

