//
//  Doctor.m
//  PatientDoctor
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "Doctor.h"

@interface Doctor()
@property (nonatomic, strong) NSMutableDictionary *prescriptsSymptoms;
@end

@implementation Doctor

- (instancetype)initDoctorWithName: (NSString *)name medicalID:(NSString *)medicalID {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.medicalID = medicalID;
        self.appointmentsArray = [[NSMutableArray alloc] init];
        self.patientsArray = [[NSMutableArray alloc] init];
        self.prescriptsSymptoms = [[NSMutableDictionary alloc] init];
        
    }
    return self;
}

-(BOOL)acceptAppt: (Patient *)patient {
    
    if (patient.validHealthCard == YES) {
        [self.appointmentsArray addObject: patient];
        [self.patientsArray addObject: patient];
        NSLog(@"%@ has booked an appointment for %@",self.name,patient.name);
        return YES;
    }
    else {
        NSLog(@"%@ does not have a valid health card",patient.name);
        return NO;
    }
}

- (BOOL)dispenseMedicationTo: (Patient *)patient {
    
    if ([self.patientsArray containsObject:patient] && [self.prescriptsSymptoms objectForKey:patient.symptom]) {
        
        NSString *meds = [self.prescriptsSymptoms objectForKey:patient.symptom];
        [patient.prescripts addObject:[self.prescriptsSymptoms objectForKey:patient.symptom]];
        
        NSLog(@"%@ meds have been dispensed for %@",meds,patient.name);
        return YES;
    }
    else {
        NSLog(@"Can not dispense meds to %@",patient.name);
        return NO;
    }
}

- (void)addPerscripts: (Doctor *)doctor symptom:(NSString *)key prescript:(NSString *)object {
   
    [doctor.prescriptsSymptoms setObject:object forKey:key];
    
}



@end
