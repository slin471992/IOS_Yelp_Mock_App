//
//  DetailViewHeaderTableViewCell.m
//  YelpApp
//
//  Created by Shumei Lin on 6/3/17.
//  Copyright © 2017 Shumei Lin. All rights reserved.
//

#import "DetailViewHeaderTableViewCell.h"
#import <UIImageView+AFNetworking.h>


@interface DetailViewHeaderTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *restaurantName;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *starImage;
@property (weak, nonatomic) IBOutlet UILabel *reviewLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UIImageView *restaurantImage;

@end
@implementation DetailViewHeaderTableViewCell

- (void)upBasedOnDataModel:(YelpDataModel *)dataModel
{
    self.restaurantName.text = dataModel.name;
    [self.restaurantImage setImageWithURL:[NSURL URLWithString:dataModel.imageUrl]];
    self.starImage.image = dataModel.ratingImage;
    self.reviewLabel.text = [NSString stringWithFormat:@"%ld reviews", dataModel.reviewCount];
    self.priceLabel.text = dataModel.price;
    self.categoryLabel.text = dataModel.categories;
    self.distanceLabel.text = [NSString stringWithFormat:@"%.1f mi", dataModel.distance];
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
