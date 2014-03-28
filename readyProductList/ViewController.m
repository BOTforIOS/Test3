//
//  ViewController.m
//  readyProductList
//
//  Created by bizopstech on 14-3-24.
//  Copyright (c) 2014年 com.bizopstech. All rights reserved.
//

#import "ViewController.h"
#import "ProductList.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *productList;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    
    ProductList * productlist = [[ProductList alloc] initWithFrame:CGRectMake(0, 50, 725, 800)];
    [self.productList addSubview:productlist];

    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
