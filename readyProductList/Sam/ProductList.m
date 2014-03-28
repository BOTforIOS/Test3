//
//  ProductList.m
//  readyProductList
//
//  Created by bizopstech on 14-3-24.
//  Copyright (c) 2014年 com.bizopstech. All rights reserved.
//
#import "AppDelegate.h"
#import "ProductList.h"
#import "ProductCell.h"
#import "OrderData.h"


@interface ProductList()<UITableViewDataSource, UITableViewDelegate,ProductClickDelegate>{

    NSMutableArray * orderArr;
    NSArray * dataarr;
    
}
    @property (strong, nonatomic) IBOutlet UITableView *ProductTable;
@end




@implementation ProductList

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"ProductList" owner:self options:nil] lastObject];
        self.ProductTable.dataSource = self;
        self.ProductTable.delegate = self;
        
        
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        dataarr = appDelegate.productNotes;
        orderArr = appDelegate.OrderArr;
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView
   numberOfRowsInSection:(NSInteger)section {

    return orderArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellTableIdentifier = @"CellTableIdentifier";
    
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    if(cell == nil){
        UINib *nib = [UINib nibWithNibName:@"ProductCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    }
    cell.delegate = self;
    
    NSUInteger row = [indexPath row];
    
    cell.PlanText.numberOfLines = 0;
    cell.PriceText.numberOfLines = 0;
    
    OrderData* orderdata = [orderArr objectAtIndex:row];
    cell.PlanText.attributedText = [orderdata MakePlanInfo];
    cell.PriceText.attributedText = [orderdata MakePriceInfo];
    
    NSDictionary *rowData = [dataarr objectAtIndex:orderdata.OrderProductIndex];
    
    cell.ImageName = [rowData objectForKey:@"image"];
    cell.Introduction = [rowData objectForKey:@"introduction"];
    cell.Titletxt = [rowData objectForKey:@"Title"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 125;
}

- (void)ProductClick{
    NSLog(@"product Click");

}


@end
