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
  if ((self = [self init])) // make sure we could actually create a matrix, else get null back
  {
    self.dimension = dimension; // save the size
    
    // create matrix rows and populate them with columns
    self.rows = [[NSMutableArray alloc] initWithCapacity:dimension];
    
    for (int rowNum = 0; rowNum < dimension; rowNum++)
    {
      NSMutableArray *column = [[NSMutableArray alloc] initWithCapacity:dimension];
      
      // fill the matrix elements with null instances
      for (int colNum = 0 ; colNum < dimension; colNum++)
      {
        [column setObject:[NSNull null] atIndexedSubscript:colNum];
      } // for columns
      [self.rows addObject:column]; // add the column to the row
    } // for rows
  } // if could create matrix
  
  return self; // pass back the SquareMatrix instance, or null
} // initWithRows()

- (id)objectInRow:(NSUInteger)row column:(NSUInteger)col
{
  return [[self.rows objectAtIndex:row] objectAtIndex:col];
} // objectInRow()

- (void)setObject:(id)obj inRow:(NSUInteger)row inColumn:(NSUInteger)col
{
  [[self.rows objectAtIndex:row] replaceObjectAtIndex:col withObject:obj];
} // setObject()

// Funtion to rotate matrix 90°, i.e. swap rows and columns
- (SquareMatrix *)rotateSquareMatrix
{
  // get a new SquareMatrix instance
  SquareMatrix *turnedMatrix = [[SquareMatrix alloc] initWithRows:self.dimension];
  
  // copy rows from the original matrix to the columns of the new matrix
  for (int row = 0; row < self.dimension; row++)
  {
    for (int col = 0; col < self.dimension; col++)
    {
      // copy the element at original matrix [row, col] to rotated matrix [col, row]
      [turnedMatrix setObject:[self objectInRow:row column:col] inRow:col inColumn:row];
    } // for each column in the row
  } // for each row
  
  return turnedMatrix;
} // rotateSquareMatrix()


@end
