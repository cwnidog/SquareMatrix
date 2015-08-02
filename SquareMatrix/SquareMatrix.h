//
//  SquareMatrix.h
//  SquareMatrix
//
//  Created by John Leonard on 8/1/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SquareMatrix : NSObject

@property (nonatomic) NSMutableArray *rows;
@property (nonatomic) NSUInteger dimension;

- initWithRows:(NSUInteger) dimension;
- objectInRow:(NSUInteger)row column:(NSUInteger)col;
- (void)setObject:(id)obj inRow:(NSUInteger)row inColumn:(NSUInteger)col;
- (SquareMatrix *)rotateSquareMatrix;

@end
