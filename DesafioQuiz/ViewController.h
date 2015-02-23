//
//  ViewController.h
//  DesafioQuiz
//
//  Created by Fernando Lucheti on 23/02/15.
//  Copyright (c) 2015 Fernando Lucheti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *labelPergunta;
@property (weak, nonatomic) IBOutlet UILabel *labelResposta;
@property (weak, nonatomic) IBOutlet UIButton *botaoProxPergunta;
@property (weak, nonatomic) IBOutlet UIButton *botaoResposta;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


- (IBAction)botaoProxPergunta:(UIButton *)sender;
- (IBAction)botaoResposta:(UIButton *)sender;


@end

