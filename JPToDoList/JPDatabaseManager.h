//
//  JPDatabaseManager.h
//  JPToDoList
//
//  Created by Student P_05 on 03/10/16.
//  Copyright © 2016 Patil Jagruti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface JPDatabaseManager : NSObject
{
    sqlite3 *myDB;
}
+(instancetype) sharedManager;
-(NSString *)getDatabasePath;

-(int)executeQuery:(NSString *)query;

-(NSMutableArray *)getAllTask;


@end
