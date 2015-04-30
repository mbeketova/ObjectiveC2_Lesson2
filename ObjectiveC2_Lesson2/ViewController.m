//
//  ViewController.m
//  ObjectiveC2_Lesson2
//
//  Created by Admin on 29.04.15.
//  Copyright (c) 2015 Mariya Beketova. All rights reserved.
//

#import "ViewController.h"
#import "ViewChessBoard.h"
#import "ViewFigures.h"
#import "AddConstants.h"


@interface ViewController ()

@property (nonatomic, weak) UIView * someView;
@property (nonatomic, weak) UIView * chessBoardView;
@property (nonatomic, assign) CGPoint differencePoint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //фон общей вьюшки:
    UIImage * image_BgFon = [UIImage imageNamed:@"bgfon2.jpg"];
    UIColor * color_Bg = [UIColor colorWithPatternImage:image_BgFon];
    self.view.backgroundColor = color_Bg;

    int j = KONST_j;
   
    UIView* chessBoardView = [[UIView alloc] initWithFrame:(CGRectMake(0, 0, j, j))];
    [ViewChessBoard set_View:chessBoardView]; //вызов метода класса с шахматным полем (делаю через доп. вью, чтобы нельзя было двигать элементы доски)
    [self.view addSubview:chessBoardView]; //добавляем на основную вью - шахмотное поле
    
    [ViewFigures addFigures:self.view]; // вызов метода класса с фигурами
  


}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
  //передаем координаты касаний:
    UITouch * touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    
//-------------------------------------------
    //будет срабатывать, если попадем в конкретную вьюшку:
    UIView * someAnotherView = [self.view hitTest:point withEvent:event];
    if (![someAnotherView isEqual:self.view]) {
        self.someView = someAnotherView;
        
 // делает вьюшку, по которой кликаем видимой сверху над остальными вьюэлементами:
        [self.view bringSubviewToFront:self.someView];
        
        UITouch * touch = [touches anyObject];
        CGPoint point = [touch locationInView:self.someView];
    
//-------------------------------------------
        
    //высчитываем разницу м/у центром вью-элемента и точкой касания:
        self.differencePoint = CGPointMake(CGRectGetMidX(self.someView.bounds) - point.x, CGRectGetMidY(self.someView.bounds) - point.y);
//--------------------------------------------
    //добавляем анимацию при кликаньи на вью-элемент:
        [UIView animateWithDuration:0.3 animations:^{
            self.someView.transform = CGAffineTransformMakeScale(1.2f, 1.2f); //увеличивается вьюэлемент
            self.someView.alpha = 0.5; //делаем фигуру немного прозрачнее
        }];

    }
    
    else {
        self.someView = nil;
    }
    

    
    
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{

    //двигаем вьюэлемент, по которому произошло касание:
    if (self.someView) {
        UITouch * touch = [touches anyObject];
        CGPoint point = [touch locationInView:self.view];
        
        //прибавляем к текущим координатам касания - разницу м/у координатами касания и центра
        CGPoint mainPoint = CGPointMake(point.x + self.differencePoint.x, point.y + self.differencePoint.y);
       
        self.someView.center = mainPoint;
    }
    

}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    //добавляем анимацию при убирании тачкасания с вью-элемента:
    [UIView animateWithDuration:0.3 animations:^{
        self.someView.transform = CGAffineTransformIdentity; //возвращаем первончальный размер
        self.someView.alpha = 1; //возвращаем непрозрачность фигуры
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
