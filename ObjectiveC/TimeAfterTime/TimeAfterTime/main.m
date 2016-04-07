//
//  main.m
//  TimeAfterTime
//
//  Created by Bianka on 4/8/16.
//  Copyright © 2016 alara_kalama. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSDate *now = [[NSDate alloc]init];
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        //[formatter setDateFormat:@"hh:mm MM-DD-YYYY"];
        formatter.dateStyle = NSDateIntervalFormatterMediumStyle;
        formatter.timeStyle = NSDateIntervalFormatterMediumStyle;
        NSString *dt = [formatter stringFromDate:now];
        NSLog(@"the time is %@", dt);
    
        NSDate *later = [now dateByAddingTimeInterval:1000000];
        NSString *ld = [formatter stringFromDate:later];
        NSLog(@"In 1 000 000 seconds it will be %@", ld);
        //ld was his college romance
        //https://www.ted.com/talks/rives_a_museum_of_4_o_clock_in_the_morning
        
        //how much seconds I have been alive
        NSDateComponents *birthdayComps = [[NSDateComponents alloc]init];
        [birthdayComps setYear:1990];
        [birthdayComps setMonth:10];
        [birthdayComps setDay:28];
        [birthdayComps setHour:12];
        [birthdayComps setMinute:00];
        [birthdayComps setSecond:00];
        
        //work with calendar
        NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *birthday = [calendar dateFromComponents:birthdayComps];
        double secondsAlive = [now timeIntervalSinceDate:birthday];
        NSLog(@"I have been alive for %f seconds", secondsAlive);
        
        //find day, hour of month, year...
        NSUInteger day = [calendar ordinalityOfUnit:NSCalendarUnitDay
                                                inUnit:NSCalendarUnitMonth
                                                forDate:now];
        NSUInteger hour = [calendar ordinalityOfUnit:NSCalendarUnitHour
                                                inUnit:NSCalendarUnitMinute
                                                forDate:now];
        NSUInteger second = [calendar ordinalityOfUnit:NSCalendarUnitSecond
                                                inUnit:NSCalendarUnitDay
                                                forDate:now];
        
        NSLog(@"This is day %lu of the month", day);
        NSLog(@"The hour of the month is %lu", hour);
        NSLog(@"The second of this day is %lu", second);
        
        //currently daylight savings time
        NSTimeZone *myTimeZone = [NSTimeZone systemTimeZone];
        if([myTimeZone isDaylightSavingTime]) {
            NSLog(@"It is currently daylight savings time.");
        }
    }
    return 0;
}
