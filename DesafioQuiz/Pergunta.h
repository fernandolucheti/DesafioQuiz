//
//  Pergunta.h
//  DesafioQuiz
//
//  Created by Fernando Lucheti on 23/02/15.
//  Copyright (c) 2015 Fernando Lucheti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pergunta : NSObject

@property NSMutableArray* perguntas;

@property NSMutableArray* respostas;

-(id) init;

-(NSString*) proxPergunta;
-(NSString*) proxResposta: (int) n;
@end
