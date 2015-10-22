//
//  Patient.m
//  PatientDoctor
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initPatientWithName: (NSString *)name validHealthCard:(BOOL)validHealthCard symptoms:(NSString *)symptoms {
    self = [super init];
    if (self) {
        self.name = name;
        self.validHealthCard = validHealthCard;
        self.symptom = symptoms;
        self.prescripts = [[NSMutableArray alloc] init];
        
    }
    return self;
}


@end
