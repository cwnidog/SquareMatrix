//
//  main.m
//  SquareMatrix
//
//  Created by John Leonard on 8/1/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SquareMatrix.h"

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    NSUInteger dimension = 3; // just use a 3x3 matrix, but nothing magic about that choice, it just happens to fit the console pane in Xcode easily
    
    // create a SquareMatrix instance
    SquareMatrix *squareMatrix = [[SquareMatrix alloc] initWithRows:dimension];
    
    // give the new instance some non-null values
    for (int row = 0; row < dimension; row++)
    {
      for (int col = 0; col < dimension; col++)
      {
        NSNumber *value = [[NSNumber alloc] initWithInteger:row * 10];
        [squareMatrix setObject:value inRow:row inColumn:col];
      } // for each column
    } // for each row
    
    // verify the contents of the new instance
    NSLog(@"The original matrix: \n");
    for (NSUInteger row = 0; row < dimension; row++)
    {
      for (NSUInteger col = 0; col < dimension; col++)
      {
        NSLog(@"squareMatrix row: %lu col:%lu value = %@\n", (unsigned long)row, (unsigned long)col, (NSNumber *)[squareMatrix objectInRow:row column:col]);
      } // for each column in the row
    } // for each row in the squareMatrix
    
    // rotate the original matrix 90°
    SquareMatrix *spunMatrix = [squareMatrix rotateSquareMatrix];
  
    // verify the contents of the rotated matrix
    NSLog(@"\n\nThe original matrix rotated 90°: \n");
    for (NSUInteger row = 0; row < dimension; row++)
    {
      for (NSUInteger col = 0; col < dimension; col++)
      {
        NSLog(@"squareMatrix row: %lu col:%lu value = %@\n", (unsigned long)row, (unsigned long)col, (NSNumber *)[spunMatrix objectInRow:row column:col]);
      } // for each column in the row
    } // for each row in the spunMatrix
    
  } // @autoreleasepool
  
    return 0;
} // main()
