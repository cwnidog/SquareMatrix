//
//  SquareMatrix.m
//  SquareMatrix
//
//  Created by John Leonard on 8/1/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import "SquareMatrix.h"

@implementation SquareMatrix

- (id)initWithRows:(NSUInteger) dimension
{
  if ((self = [self init])) // make sure we could actually create a matrix
  {
    self.rows = [[NSMutableArray alloc] initWithCapacity:dimension];
    
    // create rows and populate them with columns
    for (int rowNum = 0; rowNum < dimension; rowNum++)
    {
      NSMutableArray *column = [[NSMutableArray alloc] initWithCapacity:dimension];
      
      for (int colNum = 0 ; colNum < dimension; colNum++)
      {
        [column setObject:[NSNull null] atIndexedSubscript:colNum];
      } // for coumns
      [self.rows addObject:column]; // add the column to the row
    } // for rows
  } // if could create matrix
  
  return self; // pass back the SquareMatrix instance, or null
} // initWithRows()

+ (id)squareArrayWithRows:(NSUInteger)dimension
{
  return [[self alloc] initWithRows:dimension];
} // squareArrayWithRows

- (id)objectInRow:(NSUInteger)row column:(NSUInteger)col
{
  return [[self.rows objectAtIndex:row] objectAtIndex:col];
} // objectInRow()

- (void)setObject:(id)obj inRow:(NSUInteger)row inColumn:(NSUInteger)col
{
  [[self.rows objectAtIndex:row] replaceObjectAtIndex:col withObject:obj];
} // setObject()

@end
