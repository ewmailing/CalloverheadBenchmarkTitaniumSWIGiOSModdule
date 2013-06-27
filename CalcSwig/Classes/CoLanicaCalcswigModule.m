/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "CoLanicaCalcswigModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

bool example_initialize(TiGlobalContextRef context);
	
@implementation CoLanicaCalcswigModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"dade81c0-1f1a-46c9-9e37-a6a3c60c52b0";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"co.lanica.calcswig";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	
	
	NSLog(@"[INFO] %@ loaded",self);
	
	TiGlobalContextRef js_global_context = [[[self executionContext] krollContext] context];
	
	example_initialize(js_global_context);

}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

-(id)example:(id)args
{
	// example method
	return @"hello world";
}

-(id)exampleProp
{
	// example property getter
	return @"hello world";
}

-(void)setExampleProp:(id)value
{
	// example property setter
}



- (void) emptyCall:(id)args
{
	// for benchmarking
}


- (id) returnDouble
{
	return @1234.5;
}

- (id) returnString
{
	return @"Hello World";
}

- (id) myRetDoub
{
	return @1234.5;
}

- (id) myRetStr
{
	return @"Hello World";
}



- (void) passString:(id)args
{
    ENSURE_SINGLE_ARG(args, NSString);
	// args is now a NSString
}

- (void) passDouble:(id)args
{
    ENSURE_SINGLE_ARG(args, NSNumber);
	double val = [TiUtils doubleValue:args];
}

- (id) passAndReturnDouble:(id)args
{
    ENSURE_SINGLE_ARG(args, NSNumber);
	double val = [TiUtils doubleValue:args];
	
	return [NSNumber numberWithDouble:val];
}

- (id) passAndReturnString:(id)args
{
    ENSURE_SINGLE_ARG(args, NSString);
	// args is now a NSString

	return args;
}


- (id) pass2Double:(id)args
{
	ENSURE_ARG_COUNT(args, 2);
	double val1 = [TiUtils doubleValue:[args objectAtIndex:0]];
	double val2 = [TiUtils doubleValue:[args objectAtIndex:1]];
}

- (id) pass2String:(id)args
{
	ENSURE_ARG_COUNT(args, 2);
	NSString* val1 = [args objectAtIndex:0];
	NSString* val2 = [args objectAtIndex:1];
}

// I can't get this to work in Java, so it's pointless
- (id) returnDoubleArray2:(id)args
{
	return @[ @123.45, @1.0 ];
}

// I can't get this to work in Java, so it's pointless
- (id) returnStringArray2:(id)args
{
	return @[ @"Hello", @"World" ];
}




- (id) propDoub
{
	return [NSNumber numberWithDouble:1234.5];
}

- (void) setPropDoub:(id)value
{
	double val = [TiUtils doubleValue:value];
}


- (id) propStr
{
	return @"Hello World";
}

- (void) setPropStr:(id)value
{
	// value should already be the string
}


@end
