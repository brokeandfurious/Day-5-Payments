//
//  PaymentGateway.h
//  Day 5 - Payments
//
//  Created by Murat Ekrem Kolcalar on 11/5/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

@property (weak) id <PaymentDelegate> paymentDelegate;

- (void) processPaymentAmount: (NSInteger) amount;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject

- (void) processPaymentAmount: (NSInteger) amount;

@property (nonatomic) id <PaymentDelegate> delegate;

@end


