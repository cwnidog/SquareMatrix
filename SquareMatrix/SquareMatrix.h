//
//  SquareMatrix.h
//  SquareMatrix
//
//  Created by John Leonard on 8/1/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SquareMatrix : NSObject

@property NSMutableArray *rows;

- initWithRows:(NSUInteger) dimension;
+ squareArrayWithRows:(NSUInteger)dimension;
- objectInRow:(NSUInteger)row column:(NSUInteger)col;
- (void)setObject:(id)obj inRow:(NSUInteger)row inColumn:(NSUInteger)col;

@end
