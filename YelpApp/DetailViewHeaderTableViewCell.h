//
//  DetailViewHeaderTableViewCell.h
//  YelpApp
//
//  Created by Shumei Lin on 6/3/17.
//  Copyright © 2017 Shumei Lin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YelpDataModel.h"

@interface DetailViewHeaderTableViewCell : UITableViewCell

- (void)upBasedOnDataModel: (YelpDataModel *) dataModel;
@end
