//
//  ViewFigures.m
//  ObjectiveC2_Lesson2
//
//  Created by Admin on 30.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "ViewFigures.h"
#import "AddConstants.h"

@implementation ViewFigures

//в данном классе описала шахматные фигуры


+ (void) addFigures:(UIView*)view {
    
//------------------------------------------------------------------
 //создаем массив белых пешек:
    
    NSMutableArray * imagesArrayWhitePawn = [[NSMutableArray alloc] init];
    UIImage * imageWhitePawn = [UIImage imageNamed: [NSString stringWithFormat:@"pawn-white.png"]];
    
    for (int i = 0; i <8 ; i++) {
        [imagesArrayWhitePawn addObject:imageWhitePawn];
    }
    
    
    for (int i = 0, m = 0; i < imagesArrayWhitePawn.count; i++) {
        
            int j = KONST_j;
            int k = KONST_i;
      
            UIView * figureView = [[UIView alloc] initWithFrame:CGRectMake(k+m, k+6*j , j, j)];
            UIImageView * imageView = [[UIImageView alloc]initWithFrame:figureView.bounds];
            m = m+j;
        
            imageView.image = [imagesArrayWhitePawn objectAtIndex:i];
            [figureView addSubview:imageView];
            [view addSubview:figureView];
            }
//------------------------------------------------------------------

    //создаем массив черных пешек:
    
    NSMutableArray * imagesArrayBlackPawn = [[NSMutableArray alloc] init];
    UIImage * imageBlackPawn = [UIImage imageNamed: [NSString stringWithFormat:@"pawn-black.png"]];
    
    for (int i = 0; i <8 ; i++) {
        [imagesArrayBlackPawn addObject:imageBlackPawn];
    }
    
    
    for (int i = 0, m = 0; i < imagesArrayBlackPawn.count; i++) {
        
        int j = KONST_j;
        int k = KONST_i;
        
        UIView * figureView = [[UIView alloc] initWithFrame:CGRectMake(k+m, k+j , j, j)];
        UIImageView * imageView = [[UIImageView alloc]initWithFrame:figureView.bounds];
        m = m+j;
        
        imageView.image = [imagesArrayBlackPawn objectAtIndex:i];
        [figureView addSubview:imageView];
        [view addSubview:figureView];
    }
//------------------------------------------------------------------
    
    
    //создаем массив прочих белых фигур:
    
    NSMutableArray * imagesArrayWhite = [[NSMutableArray alloc] init];
    UIImage * imageWhiteRook = [UIImage imageNamed: [NSString stringWithFormat:@"rook-white.png"]];
    UIImage * imageWhiteKnight = [UIImage imageNamed:[NSString stringWithFormat:@"knight-white.png"]];
    UIImage * imageWhiteBishop = [UIImage imageNamed:[NSString stringWithFormat:@"bishop-white.png"]];
    UIImage * imageWhiteQueen = [UIImage imageNamed:[NSString stringWithFormat:@"queen-white.png"]];
    UIImage * imageWhiteKing = [UIImage imageNamed:[NSString stringWithFormat:@"king-white.png"]];
    
    [imagesArrayWhite addObject:imageWhiteRook];
    [imagesArrayWhite addObject:imageWhiteKnight];
    [imagesArrayWhite addObject:imageWhiteBishop];
    [imagesArrayWhite addObject:imageWhiteQueen];
    [imagesArrayWhite addObject:imageWhiteKing];
    [imagesArrayWhite addObject:imageWhiteBishop];
    [imagesArrayWhite addObject:imageWhiteKnight];
    [imagesArrayWhite addObject:imageWhiteRook];
    
    for (int i = 0, m = 0; i < imagesArrayWhite.count; i++) {
        
        int j = KONST_j;
        int k = KONST_i;
        
        UIView * figureView = [[UIView alloc] initWithFrame:CGRectMake(k+m, k+7*j , j, j)];
        UIImageView * imageView = [[UIImageView alloc]initWithFrame:figureView.bounds];
        m = m+j;
        
        imageView.image = [imagesArrayWhite objectAtIndex:i];
        [figureView addSubview:imageView];
        [view addSubview:figureView];
    }
    
    //------------------------------------------------------------------
    
    
    //создаем массив прочих черных фигур:
    
    NSMutableArray * imagesArrayBlack = [[NSMutableArray alloc] init];
    UIImage * imageBlackRook = [UIImage imageNamed: [NSString stringWithFormat:@"rook-black.png"]];
    UIImage * imageBlackKnight = [UIImage imageNamed:[NSString stringWithFormat:@"knight-black.png"]];
    UIImage * imageBlackBishop = [UIImage imageNamed:[NSString stringWithFormat:@"bishop-black.png"]];
    UIImage * imageBlackQueen = [UIImage imageNamed:[NSString stringWithFormat:@"queen-black.png"]];
    UIImage * imageBlackKing = [UIImage imageNamed:[NSString stringWithFormat:@"king-black.png"]];
    
    [imagesArrayBlack addObject:imageBlackRook];
    [imagesArrayBlack addObject:imageBlackKnight];
    [imagesArrayBlack addObject:imageBlackBishop];
    [imagesArrayBlack addObject:imageBlackQueen];
    [imagesArrayBlack addObject:imageBlackKing];
    [imagesArrayBlack addObject:imageBlackBishop];
    [imagesArrayBlack addObject:imageBlackKnight];
    [imagesArrayBlack addObject:imageBlackRook];
    
    for (int i = 0, m = 0; i < imagesArrayBlack.count; i++) {
        
        int j = KONST_j;
        int k = KONST_i;
        
        UIView * figureView = [[UIView alloc] initWithFrame:CGRectMake(k+m, k, j, j)];
        UIImageView * imageView = [[UIImageView alloc]initWithFrame:figureView.bounds];
        m = m+j;
        
        imageView.image = [imagesArrayBlack objectAtIndex:i];
        [figureView addSubview:imageView];
        [view addSubview:figureView];
    }
//------------------------------------------------------------------

    
}



@end
