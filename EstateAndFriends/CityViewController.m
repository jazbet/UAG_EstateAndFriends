//
//  CityViewController.m
//  EstateAndFriends
//
//  Created by Jazmin B Vazquez Guerrero on 10/11/14.
//  Copyright (c) 2014 Jazmin B Vazquez Guerrero. All rights reserved.
//

#import "CityViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _TitleLabel.text = _DetailModal[0];
    _DescriptionLabel.text = _DetailModal[1];
    _ImageView.image = [UIImage imageNamed:_DetailModal[2]];
    
    self.navigationItem.title = _DetailModal[0];
    
    if([_TitleLabel.text isEqualToString:@"Jalisco"])
    {
        lblCiudad1.text = @"Tequila";
        lblCiudad2.text = @"Guadalajara";
        lblCiudad3.text = @"Vallarta";
    }
    if([_TitleLabel.text isEqualToString:@"Colima"])
    {
        lblCiudad1.text = @"Colima";
        lblCiudad2.text = @"Comala";
        lblCiudad3.text = @"Manzanillo";
    }
    if([_TitleLabel.text isEqualToString:@"Michoacan"])
    {
        lblCiudad1.text = @"Morelia";
        lblCiudad2.text = @"Coahuayana";
        lblCiudad3.text = @"playa Azul";
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnActionCd1:(id)sender {
    if([_TitleLabel.text isEqualToString:@"Jalisco"])
    {
        _ImageView.image = [UIImage imageNamed:@"jalisco.jpg"];
    }
    if([_TitleLabel.text isEqualToString:@"Colima"])
    {
        _ImageView.image = [UIImage imageNamed:@"colima.JPG"];
    }
    if([_TitleLabel.text isEqualToString:@"Michoacan"])
    {
        _ImageView.image = [UIImage imageNamed:@"michoacan.jpg"];
    }
}

- (IBAction)btnActionCd2:(id)sender {
    if([_TitleLabel.text isEqualToString:@"Jalisco"])
    {
        _ImageView.image = [UIImage imageNamed:@"guadalajara.jpg"];
    }
    if([_TitleLabel.text isEqualToString:@"Colima"])
    {
        _ImageView.image = [UIImage imageNamed:@"comala.jpg"];
    }
    if([_TitleLabel.text isEqualToString:@"Michoacan"])
    {
        _ImageView.image = [UIImage imageNamed:@"coahuayana.jpg"];
    }
    
}

- (IBAction)btnActionCd3:(id)sender {
    if([_TitleLabel.text isEqualToString:@"Jalisco"])
    {
        _ImageView.image = [UIImage imageNamed:@"vallarta.jpg"];
    }
    if([_TitleLabel.text isEqualToString:@"Colima"])
    {
        _ImageView.image = [UIImage imageNamed:@"mzo.jpg"];
    }
    if([_TitleLabel.text isEqualToString:@"Michoacan"])
    {
        _ImageView.image = [UIImage imageNamed:@"playaAzul.jpg"];
    }
    
}
@end
