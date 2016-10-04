//
//  someclass.m
//  obfuscatortest
//
//  Created by Nathan on 1/13/16.
//  Copyright © 2016 zalem-solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "someclass.h"
#import "AncillaryClassForOB.h"

@implementation someclass : NSObject

+(void)load{
    
    Obfuscator *o = [Obfuscator newWithSalt:[AncillaryClassForOB class],[NSString class], nil];
    
    //Step 1: Get obfuscated code from console and then copy it to Globals.m.
    //Step 2: Comment out: [o hexByObfuscatingString:@"JEG3i8R9LAXIDW0kXGHGjauak0G2mAjPacv1QfkO"];
    
    //Step 3: When you want to reveal the original: [o reveal:<whatever you want revealed>
}

+(NSString*)reveal{
    
    Obfuscator *o = [Obfuscator newWithSalt:[AncillaryClassForOB class],[NSString class], nil];
    
    return [o reveal:sportDxKey];
}

@end


//follow the instructions of the intials setup and creation of pch file :  https://github.com/pjebs/Obfuscator-iOS#step-1---generate-objective-c-code

//add an objective c class to do the obfuscation (like this one) and another dummy / empty class (2 h files and 2 m files)
//dummy/empty class does not need to be in bridge header
