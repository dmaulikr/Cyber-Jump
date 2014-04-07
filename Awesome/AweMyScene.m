//
//  AweMyScene.m
//  Awesome
//
//  Created by block7 on 4/7/14.
//  Copyright (c) 2014 Too Much Daylight. All rights reserved.
//

#import "AweMyScene.h"

@interface AweMyScene ()
{
    SKNode *_backgroundNode;
    SKNode *_midgroundNode;
    SKNode *_foregroundNode;
    SKNode *_hudNode;
    SKNode *_player;
}
@end

@implementation AweMyScene

- (id) initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size]) {
        self.backgroundColor = [SKColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
        _backgroundNode = [self createBackgroundNode];
        [self addChild:_backgroundNode];
        _foregroundNode = [SKNode node];
        [self addChild:_foregroundNode];
        _player = [self createPlayer];
        [_foregroundNode addChild:_player];
    }
    return self;
}

- (SKNode *) createBackgroundNode
{
    SKNode *backgroundNode = [SKNode node];
    
    for (int nodeCount = 0; nodeCount < 20; nodeCount++) {
        NSString *backgroundImageName = [NSString stringWithFormat:@"Background%02d", nodeCount+1];
        SKSpriteNode *node = [SKSpriteNode spriteNodeWithImageNamed:backgroundImageName];
        node.anchorPoint = CGPointMake(0.5f, 0.0f);
        node.position = CGPointMake(160.0f, nodeCount*64.0f);
        [backgroundNode addChild:node];
    }
    return backgroundNode;
    
}

- (SKNode *) createPlayer
{
    SKNode *playerNode = [SKNode node];
    [playerNode setPosition:CGPointMake(160.0f, 80.0f)];
    SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Player"];
    [playerNode addChild:sprite];
    return playerNode;
}

@end