//
//  YelpAnnotation.m
//  YelpApp
//
//  Created by Shumei Lin on 6/3/17.
//  Copyright © 2017 Shumei Lin. All rights reserved.
//


#import "YelpAnnotation.h"

@implementation YelpAnnotation

- (instancetype)initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title subtitle:(NSString *)subtitle dataModel:(YelpDataModel *)dataModel
{
    if (self = [super init]) {
        _coordinate = coordinate;
        _title = title;
        _subtitle = subtitle;
        _dataModel = dataModel;
    }
    return self;
}

+ (NSArray <YelpAnnotation *>*)buildAnnotationArrayFromDataArray:(NSArray<YelpDataModel *> *)dataArray
{
    NSMutableArray<YelpAnnotation *> *annotationArray = [NSMutableArray new];
    
    for (YelpDataModel *dataModel in dataArray) {
        CLLocationCoordinate2D loc = CLLocationCoordinate2DMake(dataModel.latitude, dataModel.longitude);
        NSString *subtitle = [NSString stringWithFormat:@"%@ - %@",dataModel.categories,dataModel.displayAddress];
        YelpAnnotation *annotation = [[YelpAnnotation alloc] initWithCoordinate:loc title:dataModel.name subtitle:subtitle dataModel:dataModel];
        [annotationArray addObject:annotation];
    }
    return [annotationArray copy];
}

@end

