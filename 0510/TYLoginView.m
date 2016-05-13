//
//  TYLoginView.m
//  0510
//
//  Created by mac on 16/5/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "TYLoginView.h"





@implementation TYLoginView

#define TYUserDefaults [NSUserDefaults standardUserDefaults]

static NSString *accountKey = @"account";
static NSString *pwdKey = @"pwd";
static NSString *rmbKey = @"rmb";
static NSString *loginKey = @"login";
- (void)awakeFromNib
{
    self.frame = [[UIScreen mainScreen] bounds];
    self.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.3];
    self.LoginView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width,200 );
    
    
    NSString *account = [TYUserDefaults objectForKey:accountKey];
    NSString *pwd = [TYUserDefaults objectForKey:pwdKey];
    BOOL rmb = [TYUserDefaults boolForKey:rmbKey];
    BOOL login = [TYUserDefaults boolForKey:loginKey];
    _accountField.text = account;
    
    if (rmb == YES) {
        _pwdField.text = pwd;
        
    }
    if (login ==YES) {
        [self login:nil];
    }
    
    _rmbPwdSwitch.on = rmb;
    _autoLoginSwitch.on = login;
    
    [_accountField addTarget:self action:@selector(textChange) forControlEvents:UIControlEventEditingChanged];
    
    [_pwdField addTarget:self action:@selector(textChange) forControlEvents:UIControlEventEditingChanged];
    
    [self textChange];
    

    
}
- (void)textChange
{
    _loginBtn.enabled = _accountField.text.length && _pwdField.text.length;
   NSLog(@"%@--%@",_accountField.text,_pwdField.text);
}

+(instancetype)creatXib
{
    return [[[NSBundle mainBundle] loadNibNamed:@"TYLoginView" owner:nil options:nil] lastObject];
}
- (IBAction)rmbPwdChange:(id)sender {
    if (_rmbPwdSwitch.on == NO) {
        [_autoLoginSwitch setOn:NO animated:YES];
    }
}
- (IBAction)autoLoginChange:(id)sender {
    if (_autoLoginSwitch.on == YES) {
        [_rmbPwdSwitch setOn:YES animated:YES];
    }
}

- (void)show
{
    [[UIApplication sharedApplication].keyWindow.rootViewController.view addSubview:self];
    [UIView animateWithDuration:0.3f animations:^{
        self.LoginView.frame = CGRectMake(0, self.frame.size.height - 200, self.frame.size.width, 200);
    }completion:^(BOOL finished) {
        
    }];
}


- (IBAction)login:(id)sender {
//    [MBProgressHUD showMessage:@"正在登陆ing"];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [MBProgressHUD hideHUD];
        
        if ([_accountField.text isEqualToString:@"ty"]&&[_pwdField.text isEqualToString:@"123"]) {
            [TYUserDefaults setObject:_accountField.text forKey:accountKey];
            [TYUserDefaults setObject:_pwdField.text forKey:pwdKey];
            [TYUserDefaults setBool:_rmbPwdSwitch.on forKey:rmbKey];
            [TYUserDefaults setBool:_autoLoginSwitch.on forKey:loginKey];
            
            [self performSelector:@selector(denglu)];
        }else{
        }
    });
}

- (void)denglu{

}

- (void)close
{
    [UIView animateWithDuration:0.3f animations:^{
        self.LoginView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, 200);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if (![_accountField isExclusiveTouch]) {
        [_accountField resignFirstResponder];

    }else if(![_rmbPwdSwitch isExclusiveTouch])
    {
        [_rmbPwdSwitch resignFirstResponder];

    }

}


- (IBAction)TYCancel:(UIButton *)sender {
    [self close];
}
@end



