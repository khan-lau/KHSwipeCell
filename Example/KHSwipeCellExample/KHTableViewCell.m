//
//  KHTableViewCell.m
//  KHSwipeCell
//
//  Created by Khan on 15-1-28.
//  Copyright (c) 2015年 Khan.lau. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.


#import "KHTableViewCell.h"

@interface KHTableViewCell ()
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic) BOOL constraintsSetup;
@end


@implementation KHTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.topContentView addSubview:self.titleLabel];
    }
    return self;
}

- (UILabel *)titleLabel
{
    if (!_titleLabel) {
//        _titleLabel = [UILabel newAutoLayoutView];
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.frame = CGRectMake(8.f, 8.f, 200.f, 30.f);
        _titleLabel.numberOfLines = 0;
        _titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _titleLabel.textColor = [UIColor blackColor];
    }
    return _titleLabel;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _titleLabel.frame = self.topContentView.bounds;
}

//- (void)updateConstraints
//{
//    [super updateConstraints];
//    
//    if (!self.constraintsSetup) {
//        [self.titleLabel autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:10];
//        [self.titleLabel autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:10];
//        [self.titleLabel autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.topContentView withMultiplier:0.9];
//        
//        self.constraintsSetup = YES;
//    }
//}

- (void)configureCellWithTitle:(NSString *)title
{
    self.titleLabel.text = title;
}

@end
