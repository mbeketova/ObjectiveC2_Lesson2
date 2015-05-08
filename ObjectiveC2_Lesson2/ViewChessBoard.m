//
//  ViewChessBoard.m
//  ObjectiveC2_Lesson2
//
//  Created by Admin on 29.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "ViewChessBoard.h"
#import "AddConstants.h"

@implementation ViewChessBoard


//в данном классе описала шахмотное поле


+ (void) set_View:(UIView*)view {

    
    //цвет для белого квадратика:
    UIImage * image_White = [UIImage imageNamed:@"white.jpg"];

    
    //цвет для черного квадратика:
    UIImage * image_Black = [UIImage imageNamed:@"black.jpg"];

    
    int i = KONST_i; //величина отступа от края
    int j = KONST_j; //размер стороны квадрата
    int k = KONST_k; //величина отступа от края для лейба
    int s = KONST_s; //размер для лейба
    
    NSString * stringA = @"a, b, c, d, e, f, g, h"; //массив букв - для подписи каждого квадратика
    NSString * stringB = @"8, 7, 6, 5, 4, 3, 2, 1"; // массив цифр - для подписи каждого квадратика

    NSArray * arrayA = [stringA componentsSeparatedByString:@", "];
    NSArray * arrayB = [stringB componentsSeparatedByString:@", "];

    

    
    for (int r = 0; r < 8 ; r++) {
      
        if (r == 0 || r == 2 || r == 4 || r == 6) { //четные ряды
            
            
            
                    for (int l = 0; l < 8; l++) {
               
                        if (l == 0 || l == 2 || l == 4 || l == 6) {
                         
                         
                            UIView * chessView = [[UIView alloc] initWithFrame:CGRectMake((i+l*j), (i+r*j) , j, j)];
                            UIImageView * imageView = [[UIImageView alloc]initWithFrame:chessView.bounds];
                            
                            imageView.image = image_White;
                            [chessView addSubview:imageView];
                            [view addSubview:chessView];
                            
                            //подпись буква:
                            UILabel * label_a = [[UILabel alloc] initWithFrame:CGRectMake(k + (i+l*j) , k + (i+r*j), s, s)];
                            label_a.textColor = [UIColor blackColor];
                            label_a.text = [arrayA objectAtIndex:l];
                            [view addSubview:label_a];
                            
                            //подпиcь цифра:
                            UILabel * label_b = [[UILabel alloc] initWithFrame:CGRectMake(k + k + (i+l*j) , k + (i+r*j), s, s)];
                            label_b.textColor = [UIColor blackColor];
                            label_b.text = [arrayB objectAtIndex:r];
                            [view addSubview:label_b];
                            
                            
                        }
                        
                        else if (l == 1 || l == 3 || l == 5 || l == 7) {
                            
                            UIView * chessView = [[UIView alloc] initWithFrame:CGRectMake((i+l*j), (i+r*j) , j, j)];
                            UIImageView * imageView = [[UIImageView alloc]initWithFrame:chessView.bounds];
                            
                            imageView.image = image_Black;
                            [chessView addSubview:imageView];
                            [view addSubview:chessView];
                            
                            UILabel * label_a = [[UILabel alloc] initWithFrame:CGRectMake(k + (i+l*j) , k + (i+r*j), s, s)];
                            label_a.textColor = [UIColor whiteColor];
                            label_a.text = [arrayA objectAtIndex:l];
                            [view addSubview:label_a];
                            
                            UILabel * label_b = [[UILabel alloc] initWithFrame:CGRectMake(k + k + (i+l*j) , k + (i+r*j), s, s)];
                            label_b.textColor = [UIColor whiteColor];
                            label_b.text = [arrayB objectAtIndex:r];
                            [view addSubview:label_b];
                        }

                    }

        }
        
        else { //  нечетные ряды
            
            
                    for (int l = 0; l < 8; l++) {
                
                        if (l == 0 || l == 2 || l == 4 || l == 6) {
                    
                            UIView * chessView = [[UIView alloc] initWithFrame:CGRectMake((i+l*j), (i+r*j) , j, j)];
                            UIImageView * imageView = [[UIImageView alloc]initWithFrame:chessView.bounds];
                    
                            imageView.image = image_Black;
                            [chessView addSubview:imageView];
                            [view addSubview:chessView];
                            
                            UILabel * label_a = [[UILabel alloc] initWithFrame:CGRectMake(k + (i+l*j) , k + (i+r*j), s, s)];
                            label_a.textColor = [UIColor whiteColor];
                            label_a.text = [arrayA objectAtIndex:l];
                            [view addSubview:label_a];
                            
                            UILabel * label_b = [[UILabel alloc] initWithFrame:CGRectMake(k + k + (i+l*j) , k + (i+r*j), s, s)];
                            label_b.textColor = [UIColor whiteColor];
                            label_b.text = [arrayB objectAtIndex:r];
                            [view addSubview:label_b];

                    
                        }
                
                        else if (l == 1 || l == 3 || l == 5 || l == 7) {
                    
                            UIView * chessView = [[UIView alloc] initWithFrame:CGRectMake((i+l*j), (i+r*j) , j, j)];
                            UIImageView * imageView = [[UIImageView alloc]initWithFrame:chessView.bounds];
                    
                            imageView.image = image_White;
                            [chessView addSubview:imageView];
                            [view addSubview:chessView];
                            
                            UILabel * label_a = [[UILabel alloc] initWithFrame:CGRectMake(k + (i+l*j) , k + (i+r*j), s, s)];
                            label_a.textColor = [UIColor blackColor];
                            label_a.text = [arrayA objectAtIndex:l];
                            [view addSubview:label_a];
                            
                            UILabel * label_b = [[UILabel alloc] initWithFrame:CGRectMake(k + k + (i+l*j) , k + (i+r*j), s, s)];
                            label_b.textColor = [UIColor blackColor];
                            label_b.text = [arrayB objectAtIndex:r];
                            [view addSubview:label_b];
                        }
                
                
                    }
            
        }
    
    }
    
}

    

    
    




@end
