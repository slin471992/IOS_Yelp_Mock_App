//
//  MapTableViewCell.h
//  YelpApp
//
//  Created by Shumei Lin on 6/8/17.
//  Copyright © 2017 Shumei Lin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "YelpDataModel.h"
#import "YelpAnnotation.h"

@interface MapTableViewCell : UITableViewCell

- (void)upBasedOnDataModel:(YelpDataModel *)dataModel;

@end