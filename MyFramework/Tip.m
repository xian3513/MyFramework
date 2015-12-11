//
//  Tip.cpp
//  MyFramework
//
//  Created by xian on 15/12/11.
//  Copyright © 2015年 xian. All rights reserved.
//

////////////////////////////////////////////////////////////////////////////////////////////////////////

//数据压缩传输 后解密

//NSString *str =@"@@Vn@ak°a±@¥@UUI@aUmlwUUxb@¥XU@mmI@a@Kn@@_W@@WI@mUVVXUl@XaV@K@I@aLX@aVI°K@KVLUUwyXkK@kKÆbXnlK@k@aJlU@w@U@»@aXKWn_JXkVKn@°LlKXW@¯U@aUK@kmJUwVIUJkmLK@kka@wUVm@@am@UkUbkK@nmVÒ¯VUWVVmIULk@ma@kkK@nUbUamU`UUVUkKVkkW@@bkmnmUXVKXVL@VbUmbVXJ@nmKÅI@KWKUXVJUL@VUKUX@KUKWL@LUJmaXXm@kVVV@L@VUL@VlK@L@V@LUK@VUb@UUU@°@nVxU`Lkn@`@XVJ@XVmk@UKmV¯LVVn±Wm@Ub@JlLUl@VLk@lmVVn@bnV@V°IVaVJXI°K°V@XXVlVVUnKVlUbWXnV@bV`U@@m@@@nxmn@bXVlL@¤nbUl¦VVUnJVUVl@@bÞL";
//
////  "encodeOffsets": [[118418, 34392]]
////decodePolygon(str,118418,34392);
//NSLog(@"decode:%@",decodePolygon(str,118418,34392));

//NSArray* decodePolygon(NSString *coordinate,int xx,int yy) {
//    NSMutableArray *marr = [[NSMutableArray alloc] initWithCapacity:0];
//    
//    
//    long int prevX = xx;
//    long int prevY = yy;
//    for (int i = 0; i < coordinate.length; i += 2) {
//        
//        int x = [coordinate characterAtIndex:i] - 64;
//        int y = [coordinate characterAtIndex:i+1] - 64;
//        
//        x = x>>1^-(x & 1);
//        y = y>>1^-(y & 1);
//        x += prevX;
//        y += prevY;
//        prevX = x;
//        prevY = y;
//        //  NSLog(@"x = %d  y = %d",x,y);
//        [marr addObject:@[[NSString stringWithFormat:@"x= %f",x/1024.0],[NSString stringWithFormat:@"y = %f",y/1024.0]]];
//        //result.push([x / 1024, y / 1024])
//    }
//    return marr;
//}


//////////////////////////////////////////////////////////////////////////////////////////////////////////