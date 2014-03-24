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


@interface ProductList()<UITableViewDataSource, UITableViewDelegate>{

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
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView
   numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%d",dataarr.count);
    return dataarr.count;
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

    
    NSUInteger row = [indexPath row];
    NSDictionary *rowData = [dataarr objectAtIndex:row];
    
    cell.ImageName = [rowData objectForKey:@"image"];
    cell.Introduction = [rowData objectForKey:@"introduction"];
    cell.Titletxt = [rowData objectForKey:@"Title"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 125;
}




@end
