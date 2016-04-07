//
//  main.c
//  heap
//
//  Created by Bianka on 4/8/16.
//  Copyright © 2016 alara_kalama. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float height;
    float weight;
} Person;

float BMI(Person *p) {
    return p->weight/(p->height * p->height);
}

int main(int argc, const char * argv[]) {
    //allocate memory for one person
    Person *Mickey = (Person *)malloc(sizeof(Person));
    
    Mickey->weight = 96.0;
    Mickey->height = 1.7;
    
    float mickeyBMI = BMI(Mickey);
    printf("Mickey's BMI is %f\n", mickeyBMI);
    
    //recycle memory
    free(Mickey);
    //forget where he was
    Mickey = NULL;
   
    return 0;
}
