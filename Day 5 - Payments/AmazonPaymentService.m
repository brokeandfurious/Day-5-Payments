//
//  AmazonPaymentService.m
//  Day 5 - Payments
//
//  Created by Murat Ekrem Kolcalar on 11/5/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Amazon amount is: $%ld", amount);
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
