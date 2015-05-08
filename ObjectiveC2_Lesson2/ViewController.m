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

// Условие домашнего задания: реализовать шахматную доску, расположить фигуры (черные/белые) и что бы их можно было передвигать.
// Все сделать в коде, интерфейс билдер должен остаться чистым.


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
    
    
    //подписи буквенные и цифровые: 
    NSString * stringA = @"a,b,c,d,e,f,g,h";
    NSString * stringB = @"8,7,6,5,4,3,2,1";
    
    NSArray * arrayA = [stringA componentsSeparatedByString:@","];
    NSArray * arrayB = [stringB componentsSeparatedByString:@","];
    
    int j = KONST_j;//размер стороны квадрата
    int k = KONST_k;//величина отступа от края для лейба
    int s = KONST_s;//размер для лейба
    int i = KONST_i; //величина отступа от края

    
    for (int a = 0; a < arrayA.count; a++) {
        
        //нижние буквенные подписи:
        UILabel * label_a = [[UILabel alloc] initWithFrame:CGRectMake(2*k+j/2+a*j, 2*k+8*j, s, s)];
        label_a.textColor = [UIColor blackColor];
        label_a.text = [arrayA objectAtIndex:a];
        [self.view addSubview:label_a];
        
        // верхние буквенные подписи:
        UILabel * label_b = [[UILabel alloc] initWithFrame:CGRectMake(2*k+j/2+a*j, 0, s, s)];
        label_b.textColor = [UIColor blackColor];
        label_b.text = [arrayA objectAtIndex:a];
        [self.view addSubview:label_b];

    }
    
    for (int a = 0; a < arrayB.count; a++) {
        //подписи слева (цифры)
        UILabel * label_a = [[UILabel alloc] initWithFrame:CGRectMake(k/2, k+j/2+a*j, s, s)];
        label_a.textColor = [UIColor blackColor];
        label_a.text = [arrayB objectAtIndex:a];
        [self.view addSubview:label_a];
        
        // подписи справа (цифры)
        UILabel * label_b = [[UILabel alloc] initWithFrame:CGRectMake(i+k/2+8*j, k+j/2+a*j, s, s)];
        label_b.textColor = [UIColor blackColor];
        label_b.text = [arrayB objectAtIndex:a];
        [self.view addSubview:label_b];
    }
    


   
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
