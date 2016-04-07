//
//  main.c
//  Time
//
//  Created by Bianka on 3/30/16.
//  Copyright © 2016 alara_kalama. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    //get current time
    long secondsSince1970 = time(NULL);
    printf("%ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("The time is %d:%d:%d. Today it is %d-%d-%d\n", now.tm_hour, now.tm_min, now.tm_sec, now.tm_mday, now.tm_mon, now.tm_year + 1900);
    long secondAfter4MillionSeconds = secondsSince1970 + 4000000;
    struct tm after4MilSec;
    localtime_r(&secondAfter4MillionSeconds, &after4MilSec);
    printf("After 4 million seconds it will be %d-%d-%d\n", after4MilSec.tm_mday, after4MilSec.tm_mon, after4MilSec.tm_year + 1900);
    
   
    return 0;
}
