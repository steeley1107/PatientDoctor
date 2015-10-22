//
//  Patient.h
//  PatientDoctor
//
//  Created by Steele on 2015-10-22.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *medicalID;
@property (nonatomic, strong) NSString *symptom;
@property (nonatomic, assign) BOOL validHealthCard;
@property (nonatomic, assign) BOOL hasAppointment;
@property (nonatomic, strong) NSMutableArray *prescripts;


- (instancetype)initPatientWithName: (NSString *)name validHealthCard:(BOOL)validHealthCard symptoms:(NSString *)symptoms;


@end
