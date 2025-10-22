
#import <Foundation/Foundation.h>

@interface ColData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ColData

+ (instancetype)sharedInstance {
    static ColData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ColDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ColDataToCache:(Byte *)data {
    int mixed = data[0];
    Byte trafficMaybe = data[1];
    int privacy = data[2];
    for (int i = privacy; i < privacy + mixed; i++) {
        int value = data[i] - trafficMaybe;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[privacy + mixed] = 0;
    return data + privacy;
}

- (NSString *)StringFromColData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ColDataToCache:data]];
}

//: Buffer Too Small
- (NSString *)show_tierGoingTitle {
    /* static */ NSString *show_tierGoingTitle = nil;
    if (!show_tierGoingTitle) {
		NSArray<NSNumber *> *origin = @[@16, @27, @6, @120, @87, @22, @93, @144, @129, @129, @128, @141, @59, @111, @138, @138, @59, @110, @136, @124, @135, @135, @212];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_tierGoingTitle = [self StringFromColData:value];
    }
    return show_tierGoingTitle;
}

//: Alignment Error
- (NSString *)constClickTitle {
    /* static */ NSString *constClickTitle = nil;
    if (!constClickTitle) {
		NSArray<NSNumber *> *origin = @[@15, @93, @13, @190, @214, @134, @193, @155, @245, @150, @185, @148, @88, @158, @201, @198, @196, @203, @202, @194, @203, @209, @125, @162, @207, @207, @204, @207, @196];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        constClickTitle = [self StringFromColData:value];
    }
    return constClickTitle;
}

//: Input data did not decode or decrypt correctly
- (NSString *)dataEachPath {
    /* static */ NSString *dataEachPath = nil;
    if (!dataEachPath) {
		NSArray<NSNumber *> *origin = @[@46, @36, @4, @180, @109, @146, @148, @153, @152, @68, @136, @133, @152, @133, @68, @136, @141, @136, @68, @146, @147, @152, @68, @136, @137, @135, @147, @136, @137, @68, @147, @150, @68, @136, @137, @135, @150, @157, @148, @152, @68, @135, @147, @150, @150, @137, @135, @152, @144, @157, @242];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dataEachPath = [self StringFromColData:value];
    }
    return dataEachPath;
}

//: Illegal parameter supplied to encryption/decryption algorithm
- (NSString *)noti_privacyName {
    /* static */ NSString *noti_privacyName = nil;
    if (!noti_privacyName) {
		NSArray<NSNumber *> *origin = @[@61, @17, @8, @84, @79, @109, @87, @39, @90, @125, @125, @118, @120, @114, @125, @49, @129, @114, @131, @114, @126, @118, @133, @118, @131, @49, @132, @134, @129, @129, @125, @122, @118, @117, @49, @133, @128, @49, @118, @127, @116, @131, @138, @129, @133, @122, @128, @127, @64, @117, @118, @116, @131, @138, @129, @133, @122, @128, @127, @49, @114, @125, @120, @128, @131, @122, @133, @121, @126, @143];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_privacyName = [self StringFromColData:value];
    }
    return noti_privacyName;
}

//: Unimplemented Function
- (NSString *)kSnakePath {
    /* static */ NSString *kSnakePath = nil;
    if (!kSnakePath) {
		NSArray<NSNumber *> *origin = @[@22, @18, @3, @103, @128, @123, @127, @130, @126, @119, @127, @119, @128, @134, @119, @118, @50, @88, @135, @128, @117, @134, @123, @129, @128, @122];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kSnakePath = [self StringFromColData:value];
    }
    return kSnakePath;
}

//: Input size to encryption algorithm was not aligned correctly
- (NSString *)noti_premiumMsg {
    /* static */ NSString *noti_premiumMsg = nil;
    if (!noti_premiumMsg) {
		NSArray<NSNumber *> *origin = @[@60, @27, @10, @2, @163, @234, @136, @175, @145, @137, @100, @137, @139, @144, @143, @59, @142, @132, @149, @128, @59, @143, @138, @59, @128, @137, @126, @141, @148, @139, @143, @132, @138, @137, @59, @124, @135, @130, @138, @141, @132, @143, @131, @136, @59, @146, @124, @142, @59, @137, @138, @143, @59, @124, @135, @132, @130, @137, @128, @127, @59, @126, @138, @141, @141, @128, @126, @143, @135, @148, @192];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_premiumMsg = [self StringFromColData:value];
    }
    return noti_premiumMsg;
}

//: Unknown Error
- (NSString *)showEntityEnterTitle {
    /* static */ NSString *showEntityEnterTitle = nil;
    if (!showEntityEnterTitle) {
		NSArray<NSNumber *> *origin = @[@13, @57, @8, @95, @2, @153, @136, @244, @142, @167, @164, @167, @168, @176, @167, @89, @126, @171, @171, @168, @171, @53];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showEntityEnterTitle = [self StringFromColData:value];
    }
    return showEntityEnterTitle;
}

//: Function not implemented for the current algorithm
- (NSString *)constConstraintMsg {
    /* static */ NSString *constConstraintMsg = nil;
    if (!constConstraintMsg) {
		NSArray<NSNumber *> *origin = @[@50, @96, @3, @166, @213, @206, @195, @212, @201, @207, @206, @128, @206, @207, @212, @128, @201, @205, @208, @204, @197, @205, @197, @206, @212, @197, @196, @128, @198, @207, @210, @128, @212, @200, @197, @128, @195, @213, @210, @210, @197, @206, @212, @128, @193, @204, @199, @207, @210, @201, @212, @200, @205, @228];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        constConstraintMsg = [self StringFromColData:value];
    }
    return constConstraintMsg;
}

//: Success
- (NSString *)notiRandomDynamicsId {
    /* static */ NSString *notiRandomDynamicsId = nil;
    if (!notiRandomDynamicsId) {
		NSArray<NSNumber *> *origin = @[@7, @17, @6, @17, @47, @70, @100, @134, @116, @116, @118, @132, @132, @3];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiRandomDynamicsId = [self StringFromColData:value];
    }
    return notiRandomDynamicsId;
}

//: Parameter Error
- (NSString *)user_unableMessage {
    /* static */ NSString *user_unableMessage = nil;
    if (!user_unableMessage) {
		NSArray<NSNumber *> *origin = @[@15, @91, @10, @192, @172, @244, @213, @199, @216, @119, @171, @188, @205, @188, @200, @192, @207, @192, @205, @123, @160, @205, @205, @202, @205, @129];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_unableMessage = [self StringFromColData:value];
    }
    return user_unableMessage;
}

//: 00000000000000000000000000000000
- (NSString *)user_retData {
    /* static */ NSString *user_retData = nil;
    if (!user_retData) {
		NSArray<NSNumber *> *origin = @[@32, @94, @3, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @142, @42];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_retData = [self StringFromColData:value];
    }
    return user_retData;
}

//: Memory Failure
- (NSString *)constBlindFormat {
    /* static */ NSString *constBlindFormat = nil;
    if (!constBlindFormat) {
		NSArray<NSNumber *> *origin = @[@14, @90, @5, @47, @55, @167, @191, @199, @201, @204, @211, @122, @160, @187, @195, @198, @207, @204, @191, @205];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        constBlindFormat = [self StringFromColData:value];
    }
    return constBlindFormat;
}

//: Decode Error
- (NSString *)dataPutTitle {
    /* static */ NSString *dataPutTitle = nil;
    if (!dataPutTitle) {
		NSArray<NSNumber *> *origin = @[@12, @98, @12, @121, @90, @138, @11, @151, @103, @132, @21, @26, @166, @199, @197, @209, @198, @199, @130, @167, @212, @212, @209, @212, @166];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dataPutTitle = [self StringFromColData:value];
    }
    return dataPutTitle;
}

//: Insufficient buffer provided for specified operation
- (NSString *)k_specifyValue {
    /* static */ NSString *k_specifyValue = nil;
    if (!k_specifyValue) {
		NSArray<NSNumber *> *origin = @[@52, @65, @9, @188, @10, @137, @58, @138, @174, @138, @175, @180, @182, @167, @167, @170, @164, @170, @166, @175, @181, @97, @163, @182, @167, @167, @166, @179, @97, @177, @179, @176, @183, @170, @165, @166, @165, @97, @167, @176, @179, @97, @180, @177, @166, @164, @170, @167, @170, @166, @165, @97, @176, @177, @166, @179, @162, @181, @170, @176, @175, @173];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_specifyValue = [self StringFromColData:value];
    }
    return k_specifyValue;
}

//: Failed to allocate memory
- (NSString *)dataRandomKey {
    /* static */ NSString *dataRandomKey = nil;
    if (!dataRandomKey) {
		NSArray<NSNumber *> *origin = @[@25, @28, @3, @98, @125, @133, @136, @129, @128, @60, @144, @139, @60, @125, @136, @136, @139, @127, @125, @144, @129, @60, @137, @129, @137, @139, @142, @149, @225];
		NSData *data = [ColData ColDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dataRandomKey = [self StringFromColData:value];
    }
    return dataRandomKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSString+Visual.m
//  GJStat-SDK
//
//  Created by bellchen on 2017/2/12.
//  Copyright © 2017年 guojiang.tv. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSString+AES128.h"
#import "NSString+Visual.h"
//: #import <CommonCrypto/CommonCryptor.h>
#import <CommonCrypto/CommonCryptor.h>
//: #import <CommonCrypto/CommonHMAC.h>
#import <CommonCrypto/CommonHMAC.h>

//: NSString * const kCommonCryptoErrorDomain = @"CommonCryptoErrorDomain";
NSString * const app_prettyResultLastStr = @"CommonCryptoErrorDomain";
//: static void FixKeyLengths( CCAlgorithm algorithm, NSMutableData * keyData, NSMutableData * ivData )
static void tapLengths( CCAlgorithm algorithm, NSMutableData * keyData, NSMutableData * ivData )
{
    //: NSUInteger keyLength = [keyData length];
    NSUInteger keyLength = [keyData length];
    //: switch ( algorithm )
    switch ( algorithm )
    {
        //: case kCCAlgorithmAES128:
        case kCCAlgorithmAES128:
        {
            //: if ( keyLength < 16 )
            if ( keyLength < 16 )
            {
                //: [keyData setLength: 16];
                [keyData setLength: 16];
            }
            //: else if ( keyLength < 24 )
            else if ( keyLength < 24 )
            {
                //: [keyData setLength: 24];
                [keyData setLength: 24];
            }
            //: else
            else
            {
                //: [keyData setLength: 32];
                [keyData setLength: 32];
            }

            //: break;
            break;
        }

        //: case kCCAlgorithmDES:
        case kCCAlgorithmDES:
        {
            //: [keyData setLength: 8];
            [keyData setLength: 8];
            //: break;
            break;
        }

        //: case kCCAlgorithm3DES:
        case kCCAlgorithm3DES:
        {
            //: [keyData setLength: 24];
            [keyData setLength: 24];
            //: break;
            break;
        }

        //: case kCCAlgorithmCAST:
        case kCCAlgorithmCAST:
        {
            //: if ( keyLength < 5 )
            if ( keyLength < 5 )
            {
                //: [keyData setLength: 5];
                [keyData setLength: 5];
            }
            //: else if ( keyLength > 16 )
            else if ( keyLength > 16 )
            {
                //: [keyData setLength: 16];
                [keyData setLength: 16];
            }

            //: break;
            break;
        }

        //: case kCCAlgorithmRC4:
        case kCCAlgorithmRC4:
        {
            //: if ( keyLength > 512 )
            if ( keyLength > 512 )
                //: [keyData setLength: 512];
                [keyData setLength: 512];
            //: break;
            break;
        }

        //: default:
        default:
            //: break;
            break;
    }

    //: [ivData setLength: [keyData length]];
    [ivData setLength: [keyData length]];
}

//: @implementation NSError (GJStatNSStringAES128)
@implementation NSError (Deep)
//: + (NSError *) errorWithCCCryptorStatus: (CCCryptorStatus) status{
+ (NSError *) plusStatus: (CCCryptorStatus) status{
    //: NSString * description = nil, * reason = nil;
    NSString * description = nil, * reason = nil;

    //: switch ( status ){
    switch ( status ){
        //: case kCCSuccess:
        case kCCSuccess:
            //: description = NSLocalizedString(@"Success", @"Error description");
            description = NSLocalizedString([[ColData sharedInstance] notiRandomDynamicsId], @"Error description");
            //: break;
            break;

        //: case kCCParamError:
        case kCCParamError:
            //: description = NSLocalizedString(@"Parameter Error", @"Error description");
            description = NSLocalizedString([[ColData sharedInstance] user_unableMessage], @"Error description");
            //: reason = NSLocalizedString(@"Illegal parameter supplied to encryption/decryption algorithm", @"Error reason");
            reason = NSLocalizedString([[ColData sharedInstance] noti_privacyName], @"Error reason");
            //: break;
            break;

        //: case kCCBufferTooSmall:
        case kCCBufferTooSmall:
            //: description = NSLocalizedString(@"Buffer Too Small", @"Error description");
            description = NSLocalizedString([[ColData sharedInstance] show_tierGoingTitle], @"Error description");
            //: reason = NSLocalizedString(@"Insufficient buffer provided for specified operation", @"Error reason");
            reason = NSLocalizedString([[ColData sharedInstance] k_specifyValue], @"Error reason");
            //: break;
            break;

        //: case kCCMemoryFailure:
        case kCCMemoryFailure:
            //: description = NSLocalizedString(@"Memory Failure", @"Error description");
            description = NSLocalizedString([[ColData sharedInstance] constBlindFormat], @"Error description");
            //: reason = NSLocalizedString(@"Failed to allocate memory", @"Error reason");
            reason = NSLocalizedString([[ColData sharedInstance] dataRandomKey], @"Error reason");
            //: break;
            break;

        //: case kCCAlignmentError:
        case kCCAlignmentError:
            //: description = NSLocalizedString(@"Alignment Error", @"Error description");
            description = NSLocalizedString([[ColData sharedInstance] constClickTitle], @"Error description");
            //: reason = NSLocalizedString(@"Input size to encryption algorithm was not aligned correctly", @"Error reason");
            reason = NSLocalizedString([[ColData sharedInstance] noti_premiumMsg], @"Error reason");
            //: break;
            break;

        //: case kCCDecodeError:
        case kCCDecodeError:
            //: description = NSLocalizedString(@"Decode Error", @"Error description");
            description = NSLocalizedString([[ColData sharedInstance] dataPutTitle], @"Error description");
            //: reason = NSLocalizedString(@"Input data did not decode or decrypt correctly", @"Error reason");
            reason = NSLocalizedString([[ColData sharedInstance] dataEachPath], @"Error reason");
            //: break;
            break;

        //: case kCCUnimplemented:
        case kCCUnimplemented:
            //: description = NSLocalizedString(@"Unimplemented Function", @"Error description");
            description = NSLocalizedString([[ColData sharedInstance] kSnakePath], @"Error description");
            //: reason = NSLocalizedString(@"Function not implemented for the current algorithm", @"Error reason");
            reason = NSLocalizedString([[ColData sharedInstance] constConstraintMsg], @"Error reason");
            //: break;
            break;

        //: default:
        default:
            //: description = NSLocalizedString(@"Unknown Error", @"Error description");
            description = NSLocalizedString([[ColData sharedInstance] showEntityEnterTitle], @"Error description");
            //: break;
            break;
    }

    //: NSMutableDictionary * userInfo = [[NSMutableDictionary alloc] init];
    NSMutableDictionary * userInfo = [[NSMutableDictionary alloc] init];
    //: [userInfo setObject: description forKey: NSLocalizedDescriptionKey];
    [userInfo setObject: description forKey: NSLocalizedDescriptionKey];

    //: if ( reason != nil )
    if ( reason != nil )
        //: [userInfo setObject: reason forKey: NSLocalizedFailureReasonErrorKey];
        [userInfo setObject: reason forKey: NSLocalizedFailureReasonErrorKey];

    //: NSError * result = [NSError errorWithDomain: kCommonCryptoErrorDomain code: status userInfo: userInfo];
    NSError * result = [NSError errorWithDomain: app_prettyResultLastStr code: status userInfo: userInfo];




    //: return ( result );
    return ( result );
}

//: @end
@end

//: #pragma mark -
#pragma mark -

//: @implementation NSData (GJStatNSStringAES128)
@implementation NSData (Deep)
//- (NSData *) SHA256Hash{
//    unsigned char hash[CC_SHA256_DIGEST_LENGTH];
//    (void) CC_SHA256( [self bytes], (CC_LONG)[self length], hash );
//    return ( [NSData dataWithBytes: hash length: CC_SHA256_DIGEST_LENGTH] );
//}

//: - (NSData *) AES256EncryptedDataUsingKey: (id) key error: (NSError **) error{
- (NSData *) history: (id) key render: (NSError **) error{
    //: CCCryptorStatus status = kCCSuccess;
    CCCryptorStatus status = kCCSuccess;
    //: NSData * result = [self dataEncryptedUsingAlgorithm: kCCAlgorithmAES128
    NSData * result = [self mediaError: kCCAlgorithmAES128
                                                    //: key: key
                                                    index: key
                                                //: options: kCCOptionPKCS7Padding
                                                display: kCCOptionPKCS7Padding
                                                  //: error: &status];
                                                  oysterPlant: &status];

    //: if ( result != nil )
    if ( result != nil )
        //: return ( result );
        return ( result );

    //: if ( error != NULL )
    if ( error != NULL )
        //: *error = [NSError errorWithCCCryptorStatus: status];
        *error = [NSError plusStatus: status];

    //: return ( nil );
    return ( nil );
}

//- (NSData *) decryptedAES256DataUsingKey: (id) key error: (NSError **) error ecbMode:(BOOL)ecbMode{
//    CCCryptorStatus status = kCCSuccess;
//    NSData * result = [self decryptedDataUsingAlgorithm: kCCAlgorithmAES128
//                                                    key: key
//                                                options: ecbMode ? kCCOptionECBMode : kCCOptionPKCS7Padding
//                                                  error: &status];
//
//    if ( result != nil )
//        return ( result );
//
//    if ( error != NULL )
//        *error = [NSError errorWithCCCryptorStatus: status];
//
//    return ( nil );
//}

//: - (NSData *) _runCryptor: (CCCryptorRef) cryptor result: (CCCryptorStatus *) status{
- (NSData *) post: (CCCryptorRef) cryptor draw: (CCCryptorStatus *) status{
    //: size_t bufsize = CCCryptorGetOutputLength( cryptor, (size_t)[self length], true );
    size_t bufsize = CCCryptorGetOutputLength( cryptor, (size_t)[self length], true );
    //: void * buf = malloc( bufsize );
    void * buf = malloc( bufsize );
    //: size_t bufused = 0;
    size_t bufused = 0;
    //: size_t bytesTotal = 0;
    size_t bytesTotal = 0;
    //: *status = CCCryptorUpdate( cryptor, [self bytes], (size_t)[self length],
    *status = CCCryptorUpdate( cryptor, [self bytes], (size_t)[self length],
                              //: buf, bufsize, &bufused );
                              buf, bufsize, &bufused );
    //: if ( *status != kCCSuccess )
    if ( *status != kCCSuccess )
    {
        //: free( buf );
        free( buf );
        //: return ( nil );
        return ( nil );
    }

    //: bytesTotal += bufused;
    bytesTotal += bufused;

    // From Brent Royal-Gordon (Twitter: architechies):
    //  Need to update buf ptr past used bytes when calling CCCryptorFinal()
    //: *status = CCCryptorFinal( cryptor, buf + bufused, bufsize - bufused, &bufused );
    *status = CCCryptorFinal( cryptor, buf + bufused, bufsize - bufused, &bufused );
    //: if ( *status != kCCSuccess )
    if ( *status != kCCSuccess )
    {
        //: free( buf );
        free( buf );
        //: return ( nil );
        return ( nil );
    }

    //: bytesTotal += bufused;
    bytesTotal += bufused;

    //: return ( [NSData dataWithBytesNoCopy: buf length: bytesTotal] );
    return ( [NSData dataWithBytesNoCopy: buf length: bytesTotal] );
}

//- (NSData *) dataEncryptedUsingAlgorithm: (CCAlgorithm) algorithm
//                                     key: (id) key
//                                   error: (CCCryptorStatus *) error
//{
//    return ( [self dataEncryptedUsingAlgorithm: algorithm
//                                           key: key
//                          initializationVector: nil
//                                       options: 0
//                                         error: error] );
//}

//: - (NSData *) dataEncryptedUsingAlgorithm: (CCAlgorithm) algorithm
- (NSData *) mediaError: (CCAlgorithm) algorithm
                                     //: key: (id) key
                                     index: (id) key
                                 //: options: (CCOptions) options
                                 display: (CCOptions) options
                                   //: error: (CCCryptorStatus *) error
                                   oysterPlant: (CCCryptorStatus *) error
{
    //: return ( [self dataEncryptedUsingAlgorithm: algorithm
    return ( [self face: algorithm
                                           //: key: key
                                           northSouthDirection: key
                          //: initializationVector: @"00000000000000000000000000000000"
                          tap: [[ColData sharedInstance] user_retData]
                                       //: options: options
                                       still: options
                                         //: error: error] );
                                         shape: error] );
}

//: - (NSData *) dataEncryptedUsingAlgorithm: (CCAlgorithm) algorithm
- (NSData *) face: (CCAlgorithm) algorithm
                                     //: key: (id) key
                                     northSouthDirection: (id) key
                    //: initializationVector: (id) iv
                    tap: (id) iv
                                 //: options: (CCOptions) options
                                 still: (CCOptions) options
                                   //: error: (CCCryptorStatus *) error
                                   shape: (CCCryptorStatus *) error
{
    //: CCCryptorRef cryptor = NULL;
    CCCryptorRef cryptor = NULL;
    //: CCCryptorStatus status = kCCSuccess;
    CCCryptorStatus status = kCCSuccess;

    //: NSParameterAssert([key isKindOfClass: [NSData class]] || [key isKindOfClass: [NSString class]]);
    NSParameterAssert([key isKindOfClass: [NSData class]] || [key isKindOfClass: [NSString class]]);
    //: NSParameterAssert(iv == nil || [iv isKindOfClass: [NSData class]] || [iv isKindOfClass: [NSString class]]);
    NSParameterAssert(iv == nil || [iv isKindOfClass: [NSData class]] || [iv isKindOfClass: [NSString class]]);

    //: NSMutableData * keyData, * ivData;
    NSMutableData * keyData, * ivData;
    //: if ( [key isKindOfClass: [NSData class]] )
    if ( [key isKindOfClass: [NSData class]] )
        //: keyData = (NSMutableData *) [key mutableCopy];
        keyData = (NSMutableData *) [key mutableCopy];
    //: else
    else
        //: keyData = [[key dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
        keyData = [[key dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];

    //: if ( [iv isKindOfClass: [NSString class]] )
    if ( [iv isKindOfClass: [NSString class]] )
        //: ivData = [[iv dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
        ivData = [[iv dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
    //: else
    else
        //: ivData = (NSMutableData *) [iv mutableCopy]; 
        ivData = (NSMutableData *) [iv mutableCopy]; // data or nil





    // ensure correct lengths for key and iv data, based on algorithms
    //: FixKeyLengths( algorithm, keyData, ivData );
    tapLengths( algorithm, keyData, ivData );

    //: status = CCCryptorCreate( kCCEncrypt, algorithm, options,
    status = CCCryptorCreate( kCCEncrypt, algorithm, options,
                             //: [keyData bytes], [keyData length], [ivData bytes],
                             [keyData bytes], [keyData length], [ivData bytes],
                             //: &cryptor );
                             &cryptor );

    //: if ( status != kCCSuccess )
    if ( status != kCCSuccess )
    {
        //: if ( error != NULL )
        if ( error != NULL )
            //: *error = status;
            *error = status;
        //: return ( nil );
        return ( nil );
    }

    //: NSData * result = [self _runCryptor: cryptor result: &status];
    NSData * result = [self post: cryptor draw: &status];
    //: if ( (result == nil) && (error != NULL) )
    if ( (result == nil) && (error != NULL) )
        //: *error = status;
        *error = status;

    //: CCCryptorRelease( cryptor );
    CCCryptorRelease( cryptor );

    //: return ( result );
    return ( result );
}

//- (NSData *) decryptedDataUsingAlgorithm: (CCAlgorithm) algorithm
//                                     key: (id) key		// data or string
//                                   error: (CCCryptorStatus *) error
//{
//    return ( [self decryptedDataUsingAlgorithm: algorithm
//                                           key: key
//                          initializationVector: nil
//                                       options: 0
//                                         error: error] );
//}

//- (NSData *) decryptedDataUsingAlgorithm: (CCAlgorithm) algorithm
//                                     key: (id) key		// data or string
//                                 options: (CCOptions) options
//                                   error: (CCCryptorStatus *) error
//{
//    return ( [self decryptedDataUsingAlgorithm: algorithm
//                                           key: key
//                          initializationVector: @"00000000000000000000000000000000"
//                                       options: options
//                                         error: error] );
//}

//- (NSData *) decryptedDataUsingAlgorithm: (CCAlgorithm) algorithm
//                                     key: (id) key		// data or string
//                    initializationVector: (id) iv		// data or string
//                                 options: (CCOptions) options
//                                   error: (CCCryptorStatus *) error
//{
//    CCCryptorRef cryptor = NULL;
//    CCCryptorStatus status = kCCSuccess;
//
//    NSParameterAssert([key isKindOfClass: [NSData class]] || [key isKindOfClass: [NSString class]]);
//    NSParameterAssert(iv == nil || [iv isKindOfClass: [NSData class]] || [iv isKindOfClass: [NSString class]]);
//
//    NSMutableData * keyData, * ivData;
//    if ( [key isKindOfClass: [NSData class]] )
//        keyData = (NSMutableData *) [key mutableCopy];
//    else
//        keyData = [[key dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
//
//    if ( [iv isKindOfClass: [NSString class]] )
//        ivData = [[iv dataUsingEncoding: NSUTF8StringEncoding] mutableCopy];
//    else
//        ivData = (NSMutableData *) [iv mutableCopy];	// data or nil
//
//#if !__has_feature(objc_arc)
//    [keyData autorelease];
//    [ivData autorelease];
//#endif
//
//    // ensure correct lengths for key and iv data, based on algorithms
//    FixKeyLengths( algorithm, keyData, ivData );
//
//    status = CCCryptorCreate( kCCDecrypt, algorithm, options,
//                             [keyData bytes], [keyData length], [ivData bytes],
//                             &cryptor );
//
//    if ( status != kCCSuccess )
//    {
//        if ( error != NULL )
//            *error = status;
//        return ( nil );
//    }
//
//    NSData * result = [self _runCryptor: cryptor result: &status];
//    if ( (result == nil) && (error != NULL) )
//        *error = status;
//
//    CCCryptorRelease( cryptor );
//
//    return ( result );
//}

//- (NSData *) HMACWithAlgorithm: (CCHmacAlgorithm) algorithm
//{
//    return ( [self HMACWithAlgorithm: algorithm key: nil] );
//}

//- (NSData *) HMACWithAlgorithm: (CCHmacAlgorithm) algorithm key: (id) key
//{
//    NSParameterAssert(key == nil || [key isKindOfClass: [NSData class]] || [key isKindOfClass: [NSString class]]);
//
//    NSData * keyData = nil;
//    if ( [key isKindOfClass: [NSString class]] )
//        keyData = [key dataUsingEncoding: NSUTF8StringEncoding];
//    else
//        keyData = (NSData *) key;
//
//    // this could be either CC_SHA1_DIGEST_LENGTH or CC_MD5_DIGEST_LENGTH. SHA1 is larger.
//    unsigned char buf[CC_SHA1_DIGEST_LENGTH];
//    CCHmac( algorithm, [keyData bytes], [keyData length], [self bytes], [self length], buf );
//
//    return ( [NSData dataWithBytes: buf length: (algorithm == kCCHmacAlgMD5 ? CC_MD5_DIGEST_LENGTH : CC_SHA1_DIGEST_LENGTH)] );
//}

//+ (NSData *)base64DataFromString:(NSString *)string {
//    unsigned long ixtext, lentext;
//    unsigned char ch, inbuf[4], outbuf[3];
//    short i, ixinbuf;
//    Boolean flignore, flendtext = false;
//    const unsigned char *tempcstring;
//    NSMutableData *theData;
//    
//    if (string == nil) {
//        return [NSData data];
//    }
//    
//    ixtext = 0;
//    
//    tempcstring = (const unsigned char *)[string UTF8String];
//    
//    lentext = [string length];
//    
//    theData = [NSMutableData dataWithCapacity: lentext];
//    
//    ixinbuf = 0;
//    
//    while (true) {
//        if (ixtext >= lentext) {
//            break;
//        }
//        
//        ch = tempcstring [ixtext++];
//        
//        flignore = false;
//        
//        if ((ch >= 'A') && (ch <= 'Z')) {
//            ch = ch - 'A';
//        }
//        else if ((ch >= 'a') && (ch <= 'z')) {
//            ch = ch - 'a' + 26;
//        }
//        else if ((ch >= '0') && (ch <= '9')) {
//            ch = ch - '0' + 52;
//        }
//        else if (ch == '+') {
//            ch = 62;
//        }
//        else if (ch == '=') {
//            flendtext = true;
//        }
//        else if (ch == '/') {
//            ch = 63;
//        }
//        else {
//            flignore = true;
//        }
//        
//        if (!flignore) {
//            short ctcharsinbuf = 3;
//            Boolean flbreak = false;
//            
//            if (flendtext) {
//                if (ixinbuf == 0) {
//                    break;
//                }
//                
//                if ((ixinbuf == 1) || (ixinbuf == 2)) {
//                    ctcharsinbuf = 1;
//                }
//                else {
//                    ctcharsinbuf = 2;
//                }
//                
//                ixinbuf = 3;
//                
//                flbreak = true;
//            }
//            
//            inbuf [ixinbuf++] = ch;
//            
//            if (ixinbuf == 4) {
//                ixinbuf = 0;
//                
//                outbuf[0] = (inbuf[0] << 2) | ((inbuf[1] & 0x30) >> 4);
//                outbuf[1] = ((inbuf[1] & 0x0F) << 4) | ((inbuf[2] & 0x3C) >> 2);
//                outbuf[2] = ((inbuf[2] & 0x03) << 6) | (inbuf[3] & 0x3F);
//                
//                for (i = 0; i < ctcharsinbuf; i++) {
//                    [theData appendBytes: &outbuf[i] length: 1];
//                }
//            }
//            
//            if (flbreak) {
//                break;
//            }
//        }
//    }
//    
//    return theData;
//}
//: @end
@end
/////////////////////////
//: static char base64EncodingTable[64] = {
static char show_nowMsg[64] = {
    //: 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
    //: 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
    'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
    //: 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
    'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
    //: 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'
    'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'
//: };
};

//: @implementation NSString (Base64Additions)
@implementation NSString (SaveExitStall)

//: + (NSString *)base64StringFromData: (NSData *)data length: (NSUInteger)length {
+ (NSString *)top: (NSData *)data counterval: (NSUInteger)length {
    //: unsigned long ixtext, lentext;
    unsigned long ixtext, lentext;
    //: long ctremaining;
    long ctremaining;
    //: unsigned char input[3], output[4];
    unsigned char input[3], output[4];
    //: short i, charsonline = 0, ctcopy;
    short i, charsonline = 0, ctcopy;
    //: const unsigned char *raw;
    const unsigned char *raw;
    //: NSMutableString *result;
    NSMutableString *result;

    //: lentext = [data length];
    lentext = [data length];
    //: if (lentext < 1) {
    if (lentext < 1) {
        //: return @"";
        return @"";
    }
    //: result = [NSMutableString stringWithCapacity: lentext];
    result = [NSMutableString stringWithCapacity: lentext];
    //: raw = [data bytes];
    raw = [data bytes];
    //: ixtext = 0;
    ixtext = 0;

    //: while (true) {
    while (true) {
        //: ctremaining = lentext - ixtext;
        ctremaining = lentext - ixtext;
        //: if (ctremaining <= 0) {
        if (ctremaining <= 0) {
            //: break;
            break;
        }
        //: for (i = 0; i < 3; i++) {
        for (i = 0; i < 3; i++) {
            //: unsigned long ix = ixtext + i;
            unsigned long ix = ixtext + i;
            //: if (ix < lentext) {
            if (ix < lentext) {
                //: input[i] = raw[ix];
                input[i] = raw[ix];
            }
            //: else {
            else {
                //: input[i] = 0;
                input[i] = 0;
            }
        }
        //: output[0] = (input[0] & 0xFC) >> 2;
        output[0] = (input[0] & 0xFC) >> 2;
        //: output[1] = ((input[0] & 0x03) << 4) | ((input[1] & 0xF0) >> 4);
        output[1] = ((input[0] & 0x03) << 4) | ((input[1] & 0xF0) >> 4);
        //: output[2] = ((input[1] & 0x0F) << 2) | ((input[2] & 0xC0) >> 6);
        output[2] = ((input[1] & 0x0F) << 2) | ((input[2] & 0xC0) >> 6);
        //: output[3] = input[2] & 0x3F;
        output[3] = input[2] & 0x3F;
        //: ctcopy = 4;
        ctcopy = 4;
        //: switch (ctremaining) {
        switch (ctremaining) {
            //: case 1:
            case 1:
                //: ctcopy = 2;
                ctcopy = 2;
                //: break;
                break;
            //: case 2:
            case 2:
                //: ctcopy = 3;
                ctcopy = 3;
                //: break;
                break;
        }

        //: for (i = 0; i < ctcopy; i++) {
        for (i = 0; i < ctcopy; i++) {
            //: [result appendString: [NSString stringWithFormat: @"%c", base64EncodingTable[output[i]]]];
            [result appendString: [NSString stringWithFormat: @"%c", show_nowMsg[output[i]]]];
        }

        //: for (i = ctcopy; i < 4; i++) {
        for (i = ctcopy; i < 4; i++) {
            //: [result appendString: @"="];
            [result appendString: @"="];
        }

        //: ixtext += 3;
        ixtext += 3;
        //: charsonline += 4;
        charsonline += 4;

        //: if ((length > 0) && (charsonline >= length)) {
        if ((length > 0) && (charsonline >= length)) {
            //: charsonline = 0;
            charsonline = 0;
        }
    }
    //: return result;
    return result;
}

//: @end
@end

/////////////////////////
//: @implementation NSString (AES128)
@implementation NSString (Visual)

//: - (NSString*)encryptWithKey:(NSString*)key;{
- (NSString*)bottom:(NSString*)key;{
    //: NSData *encryptedData = [[self dataUsingEncoding:NSUTF8StringEncoding] AES256EncryptedDataUsingKey:key error:nil];
    NSData *encryptedData = [[self dataUsingEncoding:NSUTF8StringEncoding] history:key render:nil];
//    NSLog(@"share256 :%@",[[key dataUsingEncoding:NSUTF8StringEncoding] SHA256Hash]);
    //: NSString *base64EncodedString = [NSString base64StringFromData:encryptedData length:[encryptedData length]];
    NSString *base64EncodedString = [NSString top:encryptedData counterval:[encryptedData length]];
    //: return base64EncodedString;
    return base64EncodedString;
}
//- (NSString*)decryptWithKey:(NSString*)key;{
//    NSData *encryptedData = [NSData base64DataFromString:self];
//    NSData *decryptedData = [encryptedData decryptedAES256DataUsingKey:key error:nil ecbMode:NO];
//    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
//}

//- (NSString*)decryptWithKey:(NSString *)key ecbMode:(BOOL)ecbMode{
//    NSData *encryptedData = [NSData base64DataFromString:self];
//    NSData *decryptedData = [encryptedData decryptedAES256DataUsingKey:key error:nil ecbMode:ecbMode];
//    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
//}

//: @end
@end

//: @implementation NSData (AES128)
@implementation NSData (Visual)

//- (NSData*)encryptWithKey:(NSString*)key;{
//    return [self AES256EncryptedDataUsingKey:key error:nil];
//}
//- (NSData*)decryptWithKey:(NSString*)key;{
//    return [self decryptedAES256DataUsingKey:key error:nil ecbMode:NO];
//}

//: @end
@end