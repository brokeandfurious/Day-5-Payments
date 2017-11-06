//
//  PaymentGateway.m
//  Day 5 - Payments
//
//  Created by Murat Ekrem Kolcalar on 11/5/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway : NSObject

- (void) processPaymentAmount: (NSInteger) amount {
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount:amount];
    } else {
        NSLog(@"Sorry, try again later.");
    }
}

@end
