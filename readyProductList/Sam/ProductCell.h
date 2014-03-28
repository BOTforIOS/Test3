//
//  ProductCell.h
//  readyProductList
//
//  Created by bizopstech on 14-3-24.
//  Copyright (c) 2014年 com.bizopstech. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ProductClickDelegate <NSObject>
- (void)ProductClick;
@end



@interface ProductCell : UITableViewCell
@property (weak, nonatomic) NSString *ImageName;
@property (weak, nonatomic) NSString *Introduction;
@property (weak,nonatomic) NSString* Titletxt;

@property (strong, nonatomic) IBOutlet UILabel *PlanText;

@property (strong, nonatomic) IBOutlet UILabel *PriceText;



@property (assign,nonatomic) id<ProductClickDelegate> delegate;
@end
