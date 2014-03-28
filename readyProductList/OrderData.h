//
//  OrderData.h
//  readyProductList
//
//  Created by bizopstech on 14-3-26.
//  Copyright (c) 2014年 com.bizopstech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderData : NSObject

//所对应的产品编号
@property (assign,nonatomic) int OrderProductIndex;

//订单类型，寿险？产险？ 车险？
@property (assign,nonatomic) int ProductType;

@property (assign ,nonatomic) int ProtectionYears;

//保障额度，以元为单位
@property (assign,nonatomic)  long ProtectionLimit;

//支付方式（monthly,yearly）
@property (strong,nonatomic) NSString * Paymentmode;

//支付期数，以月为单位
@property (assign,nonatomic) int paymentCycle;

//支付每期所需花费 ，以元为单位
@property (assign,nonatomic) int paymentCostForCycle;

@property (assign,nonatomic) int terms;


-(NSMutableAttributedString *) MakePlanInfo;

-(NSMutableAttributedString *) MakePriceInfo;

@end
