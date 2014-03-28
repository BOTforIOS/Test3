//
//  OrderData.m
//  readyProductList
//
//  Created by bizopstech on 14-3-26.
//  Copyright (c) 2014年 com.bizopstech. All rights reserved.
//

#import "OrderData.h"

@implementation OrderData




-(NSMutableAttributedString *) MakePlanInfo{
    
    NSString * str = @"Not configured!";
    NSMutableAttributedString* text =
    [[NSMutableAttributedString alloc] initWithString:str];
    if(self.ProtectionYears > 0 && self.ProtectionLimit>0 && self.paymentCycle > 0){
    str = [NSString stringWithFormat:@"%d years of protection, %ld RMB \n%@ payment,%d years",
                      self.ProtectionYears,
                      self.ProtectionLimit,
                      self.Paymentmode,
                      self.paymentCycle /12
                      ];
    
        text = [[NSMutableAttributedString alloc] initWithString:str];
        NSMutableParagraphStyle* paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.alignment = NSTextAlignmentJustified;
        paragraph.paragraphSpacingBefore = 14.0;
        NSDictionary* attrs = @{ NSParagraphStyleAttributeName:paragraph};
        long slen = [text length];
        [text setAttributes:attrs range:NSMakeRange(0, slen)];
    }
    return text;
}


-(NSMutableAttributedString *) MakePriceInfo{
    
    __weak NSString * tempstr = @"Not configured!";
    
    NSMutableAttributedString* text =
    [[NSMutableAttributedString alloc] initWithString:tempstr];
    
    if(self.paymentCostForCycle >0 && self.terms >0 && self.paymentCycle >0){
        tempstr = [NSString stringWithFormat:@"%d RMB/MONTH \n%d terms /%d years",
                      self.paymentCostForCycle,
                      self.terms,
                      self.paymentCycle /12
                      ];
        
        text = [[NSMutableAttributedString alloc] initWithString:tempstr];
        NSDictionary* fontattrs = @{
                                    //NSForegroundColorAttributeName: [UIColorblueColor]
                                    NSFontAttributeName:[UIFont systemFontOfSize:20.0]
                                    //,NSBackgroundColorAttributeName: [UIColororangeColor]
                                    //,NSKernAttributeName: @-3.0
                                    };
        
        
        [text addAttributes:fontattrs range:NSMakeRange(0, [NSString stringWithFormat:@"%d",self.paymentCostForCycle].length)];
        
        
        NSMutableParagraphStyle* paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.alignment = NSTextAlignmentJustified;
        paragraph.paragraphSpacingBefore = 14.0;
        NSDictionary* attrs = @{ NSParagraphStyleAttributeName:paragraph};
        long slen = [text length];
        [text addAttributes:attrs range:NSMakeRange(0, slen)];
    
    }
    return text;

}


@end
