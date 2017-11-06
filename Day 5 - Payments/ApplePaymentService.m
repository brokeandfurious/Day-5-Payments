//
//  ApplePaymentService.m
//  Day 5 - Payments
//
//  Created by Murat Ekrem Kolcalar on 11/6/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Apple amount is: $%ld", amount);
}

- (BOOL) canProcessPayment {
    int canProcess = arc4random_uniform(2);
    if (canProcess == 1) {
        return YES;
    } else {
        return NO;
    }
}

@end
