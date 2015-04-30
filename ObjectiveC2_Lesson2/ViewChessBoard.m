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
    UIColor * color_view_Wihte = [UIColor colorWithPatternImage:image_White];
    
    //цвет для черного квадратика:
    UIImage * image_Black = [UIImage imageNamed:@"black.jpg"];
    UIColor * color_view_Black = [UIColor colorWithPatternImage:image_Black];
    
    int i = KONST_i; //величина отступа от края
    int j = KONST_j; //размер стороны квадрата
    int k = KONST_k; //величина отступа от края для лейба
    int s = KONST_s; //размер для лейба

//все что написано ниже: можно сделать через массив, но мне для понимания местонахождения каждой фигуры нужно было задать координаты клеток, поэтому проделала много ненужной работы
    
    //четные ряды:
    //---------------------------------------------------------------------------
    
    UIView * view_a8 = [[UIView alloc] initWithFrame:CGRectMake(i, i, j, j)];
    view_a8.backgroundColor = color_view_Wihte;
    [view addSubview:view_a8];
    UILabel * label_a8 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_a8.textColor = [UIColor blackColor];
    label_a8.text = @"a8";
    [view_a8 addSubview:label_a8];
    
    
    UIView * view_c8 = [[UIView alloc] initWithFrame:CGRectMake((i+2*j), i, j, j)];
    view_c8.backgroundColor = color_view_Wihte;
    [view addSubview:view_c8];
    UILabel * label_c8 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_c8.textColor = [UIColor blackColor];
    label_c8.text = @"c8";
    [view_c8 addSubview:label_c8];
    
    
    UIView * view_e8 = [[UIView alloc] initWithFrame:CGRectMake((i+4*j), i, j, j)];
    view_e8.backgroundColor = color_view_Wihte;
    [view addSubview:view_e8];
    UILabel * label_e8 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_e8.textColor = [UIColor blackColor];
    label_e8.text = @"e8";
    [view_e8 addSubview:label_e8];
    
    UIView * view_g8 = [[UIView alloc] initWithFrame:CGRectMake((i+6*j), i, j, j)];
    view_g8.backgroundColor = color_view_Wihte;
    [view addSubview:view_g8];
    UILabel * label_g8 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_g8.textColor = [UIColor blackColor];
    label_g8.text = @"g8";
    [view_g8 addSubview:label_g8];
    
    UIView * view_b8 = [[UIView alloc] initWithFrame:CGRectMake(i+j, i, j, j)];
    view_b8.backgroundColor = color_view_Black;
    [view addSubview:view_b8];
    UILabel * label_b8 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_b8.textColor = [UIColor whiteColor];
    label_b8.text = @"b8";
    [view_b8 addSubview:label_b8];
    
    UIView * view_d8 = [[UIView alloc] initWithFrame:CGRectMake((i+3*j), i, j, j)];
    view_d8.backgroundColor = color_view_Black;
    [view addSubview:view_d8];
    UILabel * label_d8 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_d8.textColor = [UIColor whiteColor];
    label_d8.text = @"d8";
    [view_d8 addSubview:label_d8];
    
    UIView * view_f8 = [[UIView alloc] initWithFrame:CGRectMake((i+5*j), i, j, j)];
    view_f8.backgroundColor = color_view_Black;
    [view addSubview:view_f8];
    UILabel * label_f8 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_f8.textColor = [UIColor whiteColor];
    label_f8.text = @"f8";
    [view_f8 addSubview:label_f8];
    
    UIView * view_h8 = [[UIView alloc] initWithFrame:CGRectMake((i+7*j), i, j, j)];
    view_h8.backgroundColor = color_view_Black;
    [view addSubview:view_h8];
    UILabel * label_h8 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_h8.textColor = [UIColor whiteColor];
    label_h8.text = @"h8";
    [view_h8 addSubview:label_h8];
    
    
    //---------------------------------------------------------------------------
    
    UIView * view_a6 = [[UIView alloc] initWithFrame:CGRectMake(i, (i+2*j), j, j)];
    view_a6.backgroundColor = color_view_Wihte;
    [view addSubview:view_a6];
    UILabel * label_a6 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_a6.textColor = [UIColor blackColor];
    label_a6.text = @"a6";
    [view_a6 addSubview:label_a6];
    
    UIView * view_c6 = [[UIView alloc] initWithFrame:CGRectMake((i+2*j), (i+2*j), j, j)];
    view_c6.backgroundColor = color_view_Wihte;
    [view addSubview:view_c6];
    UILabel * label_c6 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_c6.textColor = [UIColor blackColor];
    label_c6.text = @"c6";
    [view_c6 addSubview:label_c6];
    
    UIView * view_e6 = [[UIView alloc] initWithFrame:CGRectMake((i+4*j), (i+2*j), j, j)];
    view_e6.backgroundColor = color_view_Wihte;
    [view addSubview:view_e6];
    UILabel * label_e6 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_e6.textColor = [UIColor blackColor];
    label_e6.text = @"e6";
    [view_e6 addSubview:label_e6];
    
    UIView * view_g6 = [[UIView alloc] initWithFrame:CGRectMake((i+6*j), (i+2*j), j, j)];
    view_g6.backgroundColor = color_view_Wihte;
    [view addSubview:view_g6];
    UILabel * label_g6 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_g6.textColor = [UIColor blackColor];
    label_g6.text = @"g6";
    [view_g6 addSubview:label_g6];
    
    UIView * view_b6 = [[UIView alloc] initWithFrame:CGRectMake((i+j), (i+2*j), j, j)];
    view_b6.backgroundColor = color_view_Black;
    [view addSubview:view_b6];
    UILabel * label_b6 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_b6.textColor = [UIColor whiteColor];
    label_b6.text = @"b6";
    [view_b6 addSubview:label_b6];
    
    UIView * view_d6 = [[UIView alloc] initWithFrame:CGRectMake((i+3*j), (i+2*j), j, j)];
    view_d6.backgroundColor = color_view_Black;
    [view addSubview:view_d6];
    UILabel * label_d6 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_d6.textColor = [UIColor whiteColor];
    label_d6.text = @"d6";
    [view_d6 addSubview:label_d6];
    
    UIView * view_f6 = [[UIView alloc] initWithFrame:CGRectMake((i+5*j), (i+2*j), j, j)];
    view_f6.backgroundColor = color_view_Black;
    [view addSubview:view_f6];
    UILabel * label_f6 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_f6.textColor = [UIColor whiteColor];
    label_f6.text = @"f6";
    [view_f6 addSubview:label_f6];
    
    UIView * view_h6 = [[UIView alloc] initWithFrame:CGRectMake((i+7*j), (i+2*j), j, j)];
    view_h6.backgroundColor = color_view_Black;
    [view addSubview:view_h6];
    UILabel * label_h6 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_h6.textColor = [UIColor whiteColor];
    label_h6.text = @"h6";
    [view_h6 addSubview:label_h6];
    
    //---------------------------------------------------------------------------
    
    UIView * view_a4 = [[UIView alloc] initWithFrame:CGRectMake(i, (i+4*j), j, j)];
    view_a4.backgroundColor = color_view_Wihte;
    [view addSubview:view_a4];
    UILabel * label_a4 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_a4.textColor = [UIColor blackColor];
    label_a4.text = @"a4";
    [view_a4 addSubview:label_a4];
    
    UIView * view_c4 = [[UIView alloc] initWithFrame:CGRectMake((i+2*j), (i+4*j), j, j)];
    view_c4.backgroundColor = color_view_Wihte;
    [view addSubview:view_c4];
    UILabel * label_c4 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_c4.textColor = [UIColor blackColor];
    label_c4.text = @"c4";
    [view_c4 addSubview:label_c4];
    
    UIView * view_e4 = [[UIView alloc] initWithFrame:CGRectMake((i+4*j), (i+4*j), j, j)];
    view_e4.backgroundColor = color_view_Wihte;
    [view addSubview:view_e4];
    UILabel * label_e4 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_e4.textColor = [UIColor blackColor];
    label_e4.text = @"e4";
    [view_e4 addSubview:label_e4];
    
    UIView * view_g4 = [[UIView alloc] initWithFrame:CGRectMake((i+6*j), (i+4*j), j, j)];
    view_g4.backgroundColor = color_view_Wihte;
    [view addSubview:view_g4];
    UILabel * label_g4 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_g4.textColor = [UIColor blackColor];
    label_g4.text = @"g4";
    [view_g4 addSubview:label_g4];
    
    UIView * view_b4 = [[UIView alloc] initWithFrame:CGRectMake((i+j), (i+4*j), j, j)];
    view_b4.backgroundColor = color_view_Black;
    [view addSubview:view_b4];
    UILabel * label_b4 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_b4.textColor = [UIColor whiteColor];
    label_b4.text = @"b4";
    [view_b4 addSubview:label_b4];
    
    UIView * view_d4 = [[UIView alloc] initWithFrame:CGRectMake((i+3*j), (i+4*j), j, j)];
    view_d4.backgroundColor = color_view_Black;
    [view addSubview:view_d4];
    UILabel * label_d4 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_d4.textColor = [UIColor whiteColor];
    label_d4.text = @"d4";
    [view_d4 addSubview:label_d4];
    
    UIView * view_f4 = [[UIView alloc] initWithFrame:CGRectMake((i+5*j), (i+4*j), j, j)];
    view_f4.backgroundColor = color_view_Black;
    [view addSubview:view_f4];
    UILabel * label_f4 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_f4.textColor = [UIColor whiteColor];
    label_f4.text = @"f4";
    [view_f4 addSubview:label_f4];
    
    UIView * view_h4 = [[UIView alloc] initWithFrame:CGRectMake((i+7*j), (i+4*j), j, j)];
    view_h4.backgroundColor = color_view_Black;
    [view addSubview:view_h4];
    UILabel * label_h4 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_h4.textColor = [UIColor whiteColor];
    label_h4.text = @"h4";
    [view_h4 addSubview:label_h4];
    
    //---------------------------------------------------------------------------
    
    UIView * view_a2 = [[UIView alloc] initWithFrame:CGRectMake(i, (i+6*j), j, j)];
    view_a2.backgroundColor = color_view_Wihte;
    [view addSubview:view_a2];
    UILabel * label_a2 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_a2.textColor = [UIColor blackColor];
    label_a2.text = @"a2";
    [view_a2 addSubview:label_a2];
    
    UIView * view_c2 = [[UIView alloc] initWithFrame:CGRectMake((i+2*j), (i+6*j), j, j)];
    view_c2.backgroundColor = color_view_Wihte;
    [view addSubview:view_c2];
    UILabel * label_c2 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_c2.textColor = [UIColor blackColor];
    label_c2.text = @"c2";
    [view_c2 addSubview:label_c2];
    
    UIView * view_e2 = [[UIView alloc] initWithFrame:CGRectMake((i+4*j), (i+6*j), j, j)];
    view_e2.backgroundColor = color_view_Wihte;
    [view addSubview:view_e2];
    UILabel * label_e2 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_e2.textColor = [UIColor blackColor];
    label_e2.text = @"e2";
    [view_e2 addSubview:label_e2];
    
    UIView * view_g2 = [[UIView alloc] initWithFrame:CGRectMake((i+6*j), (i+6*j), j, j)];
    view_g2.backgroundColor = color_view_Wihte;
    [view addSubview:view_g2];
    UILabel * label_g2 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_g2.textColor = [UIColor blackColor];
    label_g2.text = @"g2";
    [view_g2 addSubview:label_g2];
    
    UIView * view_b2 = [[UIView alloc] initWithFrame:CGRectMake((i+j), (i+6*j), j, j)];
    view_b2.backgroundColor = color_view_Black;
    [view addSubview:view_b2];
    UILabel * label_b2 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_b2.textColor = [UIColor whiteColor];
    label_b2.text = @"b2";
    [view_b2 addSubview:label_b2];
    
    UIView * view_d2 = [[UIView alloc] initWithFrame:CGRectMake((i+3*j), (i+6*j), j, j)];
    view_d2.backgroundColor = color_view_Black;
    [view addSubview:view_d2];
    UILabel * label_d2 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_d2.textColor = [UIColor whiteColor];
    label_d2.text = @"d2";
    [view_d2 addSubview:label_d2];
    
    UIView * view_f2 = [[UIView alloc] initWithFrame:CGRectMake((i+5*j), (i+6*j), j, j)];
    view_f2.backgroundColor = color_view_Black;
    [view addSubview:view_f2];
    UILabel * label_f2 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_f2.textColor = [UIColor whiteColor];
    label_f2.text = @"f2";
    [view_f2 addSubview:label_f2];
    
    UIView * view_h2 = [[UIView alloc] initWithFrame:CGRectMake((i+7*j), (i+6*j), j, j)];
    view_h2.backgroundColor = color_view_Black;
    [view addSubview:view_h2];
    UILabel * label_h2 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_h2.textColor = [UIColor whiteColor];
    label_h2.text = @"h2";
    [view_h2 addSubview:label_h2];
    
    
    //нечетные ряды:
    //---------------------------------------------------------------------------
    
    UIView * view_a7 = [[UIView alloc] initWithFrame:CGRectMake(i, (i+j), j, j)];
    view_a7.backgroundColor = color_view_Black;
    [view addSubview:view_a7];
    UILabel * label_a7 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_a7.textColor = [UIColor whiteColor];
    label_a7.text = @"a7";
    [view_a7 addSubview:label_a7];
    
    UIView * view_c7 = [[UIView alloc] initWithFrame:CGRectMake((i+2*j), (i+j), j, j)];
    view_c7.backgroundColor = color_view_Black;
    [view addSubview:view_c7];
    UILabel * label_c7 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_c7.textColor = [UIColor whiteColor];
    label_c7.text = @"c7";
    [view_c7 addSubview:label_c7];
    
    UIView * view_e7 = [[UIView alloc] initWithFrame:CGRectMake((i+4*j), (i+j), j, j)];
    view_e7.backgroundColor = color_view_Black;
    [view addSubview:view_e7];
    UILabel * label_e7 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_e7.textColor = [UIColor whiteColor];
    label_e7.text = @"e7";
    [view_e7 addSubview:label_e7];
    
    UIView * view_g7 = [[UIView alloc] initWithFrame:CGRectMake((i+6*j), (i+j), j, j)];
    view_g7.backgroundColor = color_view_Black;
    [view addSubview:view_g7];
    UILabel * label_g7 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_g7.textColor = [UIColor whiteColor];
    label_g7.text = @"g7";
    [view_g7 addSubview:label_g7];
    
    UIView * view_b7 = [[UIView alloc] initWithFrame:CGRectMake(i+j, (i+j), j, j)];
    view_b7.backgroundColor = color_view_Wihte;
    [view addSubview:view_b7];
    UILabel * label_b7 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_b7.textColor = [UIColor blackColor];
    label_b7.text = @"b7";
    [view_b7 addSubview:label_b7];
    
    UIView * view_d7 = [[UIView alloc] initWithFrame:CGRectMake((i+3*j), (i+j), j, j)];
    view_d7.backgroundColor = color_view_Wihte;
    [view addSubview:view_d7];
    UILabel * label_d7 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_d7.textColor = [UIColor blackColor];
    label_d7.text = @"d7";
    [view_d7 addSubview:label_d7];
    
    UIView * view_f7 = [[UIView alloc] initWithFrame:CGRectMake((i+5*j), (i+j), j, j)];
    view_f7.backgroundColor = color_view_Wihte;
    [view addSubview:view_f7];
    UILabel * label_f7 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_f7.textColor = [UIColor blackColor];
    label_f7.text = @"f7";
    [view_f7 addSubview:label_f7];
    
    UIView * view_h7 = [[UIView alloc] initWithFrame:CGRectMake((i+7*j), (i+j), j, j)];
    view_h7.backgroundColor = color_view_Wihte;
    [view addSubview:view_h7];
    UILabel * label_h7 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_h7.textColor = [UIColor blackColor];
    label_h7.text = @"h7";
    [view_h7 addSubview:label_h7];
    
    //---------------------------------------------------------------------------
    
    UIView * view_a5 = [[UIView alloc] initWithFrame:CGRectMake(i, (i+3*j), j, j)];
    view_a5.backgroundColor = color_view_Black;
    [view addSubview:view_a5];
    UILabel * label_a5 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_a5.textColor = [UIColor whiteColor];
    label_a5.text = @"a5";
    [view_a5 addSubview:label_a5];
    
    UIView * view_c5 = [[UIView alloc] initWithFrame:CGRectMake((i+2*j), (i+3*j), j, j)];
    view_c5.backgroundColor = color_view_Black;
    [view addSubview:view_c5];
    UILabel * label_c5 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_c5.textColor = [UIColor whiteColor];
    label_c5.text = @"c5";
    [view_c5 addSubview:label_c5];
    
    UIView * view_e5 = [[UIView alloc] initWithFrame:CGRectMake((i+4*j), (i+3*j), j, j)];
    view_e5.backgroundColor = color_view_Black;
    [view addSubview:view_e5];
    UILabel * label_e5 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_e5.textColor = [UIColor whiteColor];
    label_e5.text = @"e5";
    [view_e5 addSubview:label_e5];
    
    UIView * view_g5 = [[UIView alloc] initWithFrame:CGRectMake((i+6*j), (i+3*j), j, j)];
    view_g5.backgroundColor = color_view_Black;
    [view addSubview:view_g5];
    UILabel * label_g5 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_g5.textColor = [UIColor whiteColor];
    label_g5.text = @"g5";
    [view_g5 addSubview:label_g5];
    
    UIView * view_b5 = [[UIView alloc] initWithFrame:CGRectMake(i+j, (i+3*j), j, j)];
    view_b5.backgroundColor = color_view_Wihte;
    [view addSubview:view_b5];
    UILabel * label_b5 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_b5.textColor = [UIColor blackColor];
    label_b5.text = @"b5";
    [view_b5 addSubview:label_b5];
    
    UIView * view_d5 = [[UIView alloc] initWithFrame:CGRectMake((i+3*j), (i+3*j), j, j)];
    view_d5.backgroundColor = color_view_Wihte;
    [view addSubview:view_d5];
    UILabel * label_d5 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_d5.textColor = [UIColor blackColor];
    label_d5.text = @"d5";
    [view_d5 addSubview:label_d5];
    
    UIView * view_f5 = [[UIView alloc] initWithFrame:CGRectMake((i+5*j), (i+3*j), j, j)];
    view_f5.backgroundColor = color_view_Wihte;
    [view addSubview:view_f5];
    UILabel * label_f5 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_f5.textColor = [UIColor blackColor];
    label_f5.text = @"f5";
    [view_f5 addSubview:label_f5];
    
    UIView * view_h5 = [[UIView alloc] initWithFrame:CGRectMake((i+7*j), (i+3*j), j, j)];
    view_h5.backgroundColor = color_view_Wihte;
    [view addSubview:view_h5];
    UILabel * label_h5 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_h5.textColor = [UIColor blackColor];
    label_h5.text = @"h5";
    [view_h5 addSubview:label_h5];
    //---------------------------------------------------------------------------
    
    UIView * view_a3 = [[UIView alloc] initWithFrame:CGRectMake(i, (i+5*j), j, j)];
    view_a3.backgroundColor = color_view_Black;
    [view addSubview:view_a3];
    UILabel * label_a3 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_a3.textColor = [UIColor whiteColor];
    label_a3.text = @"a3";
    [view_a3 addSubview:label_a3];
    
    UIView * view_c3 = [[UIView alloc] initWithFrame:CGRectMake((i+2*j), (i+5*j), j, j)];
    view_c3.backgroundColor = color_view_Black;
    [view addSubview:view_c3];
    UILabel * label_c3 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_c3.textColor = [UIColor whiteColor];
    label_c3.text = @"c3";
    [view_c3 addSubview:label_c3];
    
    UIView * view_e3 = [[UIView alloc] initWithFrame:CGRectMake((i+4*j), (i+5*j), j, j)];
    view_e3.backgroundColor = color_view_Black;
    [view addSubview:view_e3];
    UILabel * label_e3 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_e3.textColor = [UIColor whiteColor];
    label_e3.text = @"e3";
    [view_e3 addSubview:label_e3];
    
    UIView * view_g3 = [[UIView alloc] initWithFrame:CGRectMake((i+6*j), (i+5*j), j, j)];
    view_g3.backgroundColor = color_view_Black;
    [view addSubview:view_g3];
    UILabel * label_g3 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_g3.textColor = [UIColor whiteColor];
    label_g3.text = @"g3";
    [view_g3 addSubview:label_g3];
    
    UIView * view_b3 = [[UIView alloc] initWithFrame:CGRectMake(i+j, (i+5*j), j, j)];
    view_b3.backgroundColor = color_view_Wihte;
    [view addSubview:view_b3];
    UILabel * label_b3 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_b3.textColor = [UIColor blackColor];
    label_b3.text = @"b3";
    [view_b3 addSubview:label_b3];
    
    UIView * view_d3 = [[UIView alloc] initWithFrame:CGRectMake((i+3*j), (i+5*j), j, j)];
    view_d3.backgroundColor = color_view_Wihte;
    [view addSubview:view_d3];
    UILabel * label_d3 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_d3.textColor = [UIColor blackColor];
    label_d3.text = @"d3";
    [view_d3 addSubview:label_d3];
    
    UIView * view_f3 = [[UIView alloc] initWithFrame:CGRectMake((i+5*j), (i+5*j), j, j)];
    view_f3.backgroundColor = color_view_Wihte;
    [view addSubview:view_f3];
    UILabel * label_f3 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_f3.textColor = [UIColor blackColor];
    label_f3.text = @"f3";
    [view_f3 addSubview:label_f3];
    
    UIView * view_h3 = [[UIView alloc] initWithFrame:CGRectMake((i+7*j), (i+5*j), j, j)];
    view_h3.backgroundColor = color_view_Wihte;
    [view addSubview:view_h3];
    UILabel * label_h3 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_h3.textColor = [UIColor blackColor];
    label_h3.text = @"h3";
    [view_h3 addSubview:label_h3];
    //---------------------------------------------------------------------------
    
    UIView * view_a1 = [[UIView alloc] initWithFrame:CGRectMake(i, (i+7*j), j, j)];
    view_a1.backgroundColor = color_view_Black;
    [view addSubview:view_a1];
    UILabel * label_a1 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_a1.textColor = [UIColor whiteColor];
    label_a1.text = @"a1";
    [view_a1 addSubview:label_a1];
    
    UIView * view_c1 = [[UIView alloc] initWithFrame:CGRectMake((i+2*j), (i+7*j), j, j)];
    view_c1.backgroundColor = color_view_Black;
    [view addSubview:view_c1];
    UILabel * label_c1 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_c1.textColor = [UIColor whiteColor];
    label_c1.text = @"c1";
    [view_c1 addSubview:label_c1];
    
    UIView * view_e1 = [[UIView alloc] initWithFrame:CGRectMake((i+4*j), (i+7*j), j, j)];
    view_e1.backgroundColor = color_view_Black;
    [view addSubview:view_e1];
    UILabel * label_e1 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_e1.textColor = [UIColor whiteColor];
    label_e1.text = @"e1";
    [view_e1 addSubview:label_e1];
    
    UIView * view_g1 = [[UIView alloc] initWithFrame:CGRectMake((i+6*j), (i+7*j), j, j)];
    view_g1.backgroundColor = color_view_Black;
    [view addSubview:view_g1];
    UILabel * label_g1 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_g1.textColor = [UIColor whiteColor];
    label_g1.text = @"g1";
    [view_g1 addSubview:label_g1];
    
    UIView * view_b1 = [[UIView alloc] initWithFrame:CGRectMake(i+j, (i+7*j), j, j)];
    view_b1.backgroundColor = color_view_Wihte;
    [view addSubview:view_b1];
    UILabel * label_b1 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_b1.textColor = [UIColor blackColor];
    label_b1.text = @"b1";
    [view_b1 addSubview:label_b1];
    
    UIView * view_d1 = [[UIView alloc] initWithFrame:CGRectMake((i+3*j), (i+7*j), j, j)];
    view_d1.backgroundColor = color_view_Wihte;
    [view addSubview:view_d1];
    UILabel * label_d1 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_d1.textColor = [UIColor blackColor];
    label_d1.text = @"d1";
    [view_d1 addSubview:label_d1];
    
    UIView * view_f1 = [[UIView alloc] initWithFrame:CGRectMake((i+5*j), (i+7*j), j, j)];
    view_f1.backgroundColor = color_view_Wihte;
    [view addSubview:view_f1];
    UILabel * label_f1 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_f1.textColor = [UIColor blackColor];
    label_f1.text = @"f1";
    [view_f1 addSubview:label_f1];
    
    UIView * view_h1 = [[UIView alloc] initWithFrame:CGRectMake((i+7*j), (i+7*j), j, j)];
    view_h1.backgroundColor = color_view_Wihte;
    [view addSubview:view_h1];
    UILabel * label_h1 = [[UILabel alloc] initWithFrame:CGRectMake(k, k, s, s)];
    label_h1.textColor = [UIColor blackColor];
    label_h1.text = @"h1";
    [view_h1 addSubview:label_h1];
   
    
    
}



@end
