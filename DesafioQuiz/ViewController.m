//
//  ViewController.m
//  DesafioQuiz
//
//  Created by Fernando Lucheti on 23/02/15.
//  Copyright (c) 2015 Fernando Lucheti. All rights reserved.
//

#import "ViewController.h"
#import "Pergunta.h"

@interface ViewController ()


@end

@implementation ViewController

Pergunta* perguntas;
int nPergunta;
UIImage* img;

- (void)viewDidLoad {
    [super viewDidLoad];
    perguntas = [[Pergunta alloc] init];
    nPergunta = 0;
    _labelPergunta.text = [perguntas proxPergunta];
    [self setImg];
    [_imageView setImage: img];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) setImg{
    switch (nPergunta) {
        case 0:
            img = [UIImage imageNamed: @"Matrix Wallpaper.jpg"];
            break;
            
        case 1:
            img = [UIImage imageNamed: @"trevor.jpeg"];
            break;
            
        case 2:
            img = [UIImage imageNamed: @"Infinite.jpg"];
            break;
            
            
        default:
            break;
    }
}

- (IBAction)botaoProxPergunta:(UIButton *)sender {
    _labelPergunta.text = [perguntas proxPergunta];
    
    
    if (nPergunta <2){
        nPergunta++;
    }else{
        nPergunta = 0;
    }
    [UIView animateWithDuration:0.4 animations:^{
        _botaoProxPergunta.backgroundColor= [UIColor greenColor];
        _botaoProxPergunta.backgroundColor= [UIColor whiteColor];
    }];
    _labelResposta.text = @" ";

    [self setImg];
    [_imageView setImage: img];

}

- (IBAction)botaoResposta:(UIButton *)sender {
    _labelResposta.text = [perguntas proxResposta:nPergunta];
    [UIView animateWithDuration:0.4 animations:^{
        _botaoResposta.backgroundColor= [UIColor redColor];
        _botaoResposta.backgroundColor= [UIColor whiteColor];
    }];
}
@end
