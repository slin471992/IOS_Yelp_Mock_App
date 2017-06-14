//
//  YelpTableViewCell.h
//  YelpApp
//
//  Created by Shumei Lin on 5/28/17.
//  Copyright © 2017 Shumei Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YelpDataModel.h"


@interface YelpTableViewCell : UITableViewCell

- (void)upBasedOnDataModel:(YelpDataModel *)dataModel;

@end
