//
//  Pergunta.m
//  DesafioQuiz
//
//  Created by Fernando Lucheti on 23/02/15.
//  Copyright (c) 2015 Fernando Lucheti. All rights reserved.
//

#import "Pergunta.h"

@implementation Pergunta


    -(id)init {
        self = [super init];
        
        perguntas = [[NSMutableArray alloc]init];
        respostas = [[NSMutableArray alloc]init];
        
        [perguntas addObject:@"A qual filme se refere?"];
        [perguntas addObject:@"Quem é?"];
        [perguntas addObject:@"A qual game se refere?"];
        
        [respostas addObject:@"Matrix"];
        [respostas addObject:@"Trevor (GTA 5)"];
        [respostas addObject:@"Bioshock Infinite"];
        
        return self;
    }


-(NSString*) proxPergunta{
    
    NSString *p = [perguntas objectAtIndex:0];
    [perguntas removeObjectAtIndex:0];
    [perguntas addObject:p];
    return p;
}

-(NSString*) proxResposta: (int) n{
    return [respostas objectAtIndex: n];
}



@synthesize perguntas, respostas;



@end
