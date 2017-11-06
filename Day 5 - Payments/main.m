//
//  main.m
//  Day 5 - Payments
//
//  Created by Murat Ekrem Kolcalar on 11/5/17.
//  Copyright © 2017 mumu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //INST
        PaymentGateway* paymentGateway = [[PaymentGateway alloc]init];
        
        //RANDOMIZE PRICE
        NSInteger price = arc4random_uniform(1001);
        
        //SHOW PRICE
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", price);
        
        //GET USER INPUT
        char userInput [100];
        fgets(userInput, 100, stdin);
        NSString* inputString = [NSString stringWithUTF8String:userInput];
        inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        int convertedChoice = [inputString intValue];
        
        //SWITCH
        switch (convertedChoice) {
            case 1: {
                PaypalPaymentService* paypalPaymentService = [[PaypalPaymentService alloc]init];
                paymentGateway.delegate = paypalPaymentService;
            }
                break;
            case 2: {
                StripePaymentService* stripePaymentService = [[StripePaymentService alloc]init];
                paymentGateway.delegate = stripePaymentService;
            }
                break;
            case 3: {
                AmazonPaymentService* amazonPaymentService = [[AmazonPaymentService alloc]init];
                paymentGateway.delegate = amazonPaymentService;
            }
            case 4: {
                ApplePaymentService* applePaymentService = [[ApplePaymentService alloc]init];
                paymentGateway.delegate = applePaymentService;
            }
                break;
            default:
                break;
        }
        
        [paymentGateway processPaymentAmount: price];

    }
    return 0;
}
