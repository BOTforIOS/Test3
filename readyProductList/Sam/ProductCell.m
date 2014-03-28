//
//  ProductCell.m
//  readyProductList
//
//  Created by bizopstech on 14-3-24.
//  Copyright (c) 2014年 com.bizopstech. All rights reserved.
//

#import "ProductCell.h"


@interface ProductCell()

@property (strong, nonatomic) IBOutlet UIImageView *leftImg;
@property (strong, nonatomic) IBOutlet UITextView *productIntroduction;
@property (strong, nonatomic) IBOutlet UILabel *Title;


@property (strong, nonatomic) IBOutlet UIButton *ProductSel;


@end



@implementation ProductCell

@synthesize ImageName;
@synthesize Introduction;
@synthesize Titletxt;




- (void)setImageName:(NSString *)n {
    //if (![n isEqualToString:ImageName]) {
       // ImageName = [n copy];
        UIImage * img = [UIImage imageNamed:n];
        self.leftImg.image = img;
        self.productIntroduction.scrollEnabled = NO;
    
    
    NSMutableAttributedString* text =
    [[NSMutableAttributedString alloc] initWithAttributedString: self.productIntroduction.attributedText];
    
    NSMutableParagraphStyle* paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.alignment = NSTextAlignmentJustified;
    paragraph.paragraphSpacingBefore = 14.0;
    NSDictionary* attrs = @{ NSParagraphStyleAttributeName:paragraph};
    
    long slen = [text length];
    [text setAttributes:attrs range:NSMakeRange(0, slen)];
    self.productIntroduction .attributedText = text;
    
    
    UIImage * NormalImg = [UIImage imageNamed:@"ProductUnSel.png"];
    UIImage * HighlightedImg = [UIImage imageNamed:@"Productsel.png"];
    [self.ProductSel setImage:NormalImg forState:UIControlStateNormal];
    [self.ProductSel setImage:HighlightedImg forState:UIControlStateSelected];
    

}

- (void)setIntroduction:(NSString *)c {
   // if (![c isEqualToString:Introduction]) {
        //Introduction = [c copy];
        self.productIntroduction.text = c;
        self.productIntroduction.editable = NO;
        
   // }
}

- (void)setTitletxt:(NSString *)txt {
    self.Title.text = txt;
}


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (IBAction)BtnProductSel:(id)sender {

    self.ProductSel.selected = !self.ProductSel.selected;
    [self.delegate ProductClick];
}




@end
