//
//  LetraEViewController.m
//  Navigation
//
//  Created by Igor Henrique Pessoa Aguiar on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraEViewController.h"
#import "LetraFViewController.h"
@interface LetraEViewController ()

@end

@implementation LetraEViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title=@"E";
        UIBarButtonItem *next = [[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
        
        UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
        [botao setTitle:@"E de Entei (Está tudo ok)"
               forState:UIControlStateNormal];
        [botao sizeToFit];
        botao.center = self.view.center;
        [botao addTarget:self action:@selector(mostrar:) forControlEvents:UIControlEventAllTouchEvents];
        
        [self.view addSubview:botao];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)next:(id)sender {
    LetraFViewController *proximo = [[LetraFViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
    
}

-(void)mostrar:(id)sender{
    UIImage *imagemA = [UIImage imageNamed: @"entei.png"];
    UIImageView *imagem = [[UIImageView alloc]initWithFrame:CGRectMake(60, 150, 200, 200)];
    imagem.image=imagemA;
    
    [self.view addSubview:imagem];
    
    
}
@end
