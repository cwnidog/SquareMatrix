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
    NSUInteger dimension = 3; // just use a 3x3 matrix
    SquareMatrix *squareMatrix = [[SquareMatrix alloc] initWithRows:dimension];
    
    // give it some values
    for (int row = 0; row < dimension; row++)
    {
      for (int col = 0; col < dimension; col++)
      {
        NSNumber *value = [[NSNumber alloc] initWithInteger:row * 10];
        [squareMatrix setObject:value inRow:row inColumn:col];
      } // for each column
    } // for each row
    
    for (int row = 0; row < dimension; row++)
    {
      for (int col = 0; col < dimension; col++)
      {
        NSLog(@"squareMatrix row: %d col:%d value = %@\n", row, col, (NSNumber *)[squareMatrix objectInRow:row column:col]);
      }
    }
  } // @autoreleasepool
  
    return 0;
} // main()
