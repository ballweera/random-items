//
//  main.m
//  RandomItems
//
//  Created by Weera Kasetsin on 6/22/14.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

//#import <Foundation/Foundation.h>
@import Foundation;
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        BNRItem *eleventItem = [[BNRItem alloc] initWithItemName:@"ABCDE" serialNumber:@"Q1W2E"];
        [items addObject:eleventItem];
        
        // For every item in the items array ...
        for (NSString *item in items) {
            // Log the description of item
            NSLog(@"%@", item);
        }
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

