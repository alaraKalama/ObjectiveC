//
//  main.c
//  BMICalculator
//
//  Created by Bianka on 3/30/16.
//  Copyright © 2016 alara_kalama. All rights reserved.
//

#include <stdio.h>

typedef struct {
    float heightInMeters;
    float weightInKg;
} Person;

float BodyMassIndex(Person p) {
    return p.weightInKg / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    Person Mickey;
    Mickey.heightInMeters = 1.7;
    Mickey.weightInKg = 89.7;
    
    Person Aaron;
    Aaron.heightInMeters = 1.50;
    Aaron.weightInKg = 79.0;
    
    printf("Mickey BMI --> %.2f\n", BodyMassIndex(Mickey));
    printf("Aaron BMI --> %.2f\n", BodyMassIndex(Aaron));
    
    return 0;
}
