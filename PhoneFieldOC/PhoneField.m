//
//  PhoneField.m
//  PhoneFieldOC
//
//  Created by 云中科技 on 2018/4/25.
//  Copyright © 2018年 云中科技. All rights reserved.
//

#import "PhoneField.h"

@interface PhoneField()
{
    NSInteger i;
}
@end

@implementation PhoneField
-(id)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        [self setTextFieldInit];
    }
    return self;
}
-(id)init
{
    if (self=[super init]) {
        [self setTextFieldInit];
    }
    return self;
}
-(void)setTextFieldInit
{
    self.borderStyle = UITextBorderStyleNone;
    self.keyboardType = UIKeyboardTypeNumberPad;
    self.background = [UIImage imageNamed:@"home_line_right"];
    [self addTarget:self action:@selector(textFieldDidEditing:) forControlEvents:UIControlEventEditingChanged];
}
-(void)textFieldDidEditing:(UITextField *)textField
{  
    if (textField == self) 
    {  
        if (textField.text.length > i)
        {  
            if (textField.text.length == 4 || textField.text.length == 9 )
            {//输入  
                NSMutableString * str = [[NSMutableString alloc ] initWithString:textField.text];  
                [str insertString:@" " atIndex:(textField.text.length-1)];  
                textField.text = str;  
            }
            if (textField.text.length >= 13 ) 
            {//输入完成  
                textField.text = [textField.text substringToIndex:13];  
                [textField resignFirstResponder];  
            }  
            i = textField.text.length;  
            
        }
        else if (textField.text.length < i)
        {//删除  
            if (textField.text.length == 4 || textField.text.length == 9) {  
                textField.text = [NSString stringWithFormat:@"%@",textField.text];  
                textField.text = [textField.text substringToIndex:(textField.text.length-1)];  
            }  
            i = textField.text.length;  
        }  
    }  
}  
@end
