 %module example
 %{
 /* Includes the header in the wrapper code */
 #include "example.h"
// #include "chipmunk.h"
//#include "chipmunk_types.h"
//#include <CoreGraphics/CGGeometry.h>

     //typedef struct cpVect{cpFloat x,y;} cpVect;

     
 %}
 
int fact(int n);
int my_mod(int x, int y);
char *get_time();
//%nodefaultctor MyStruct;
// will cause leaks I think
//%nodefaultdtor MyStruct;

struct MyStruct
{
	double x;
	double y;
	double z;
};

struct MyStruct MyStructMake(double the_x, double the_y, double the_z);
struct MyStruct AddStructs(struct MyStruct struct1, struct MyStruct struct2);
/*
//void MyStructGetXY(struct MyStruct the_struct, double* restrict out_x, double* restrict out_y);
%include "typemaps.i"

void MyStructGetXY(struct MyStruct the_struct, double* OUTPUT, double* OUTPUT);
void MyStructPointerXY(struct MyStruct the_struct, double* restrict out_x, double* restrict out_y);
int MyStructRetXY(struct MyStruct the_struct, double* OUTPUT, double* OUTPUT);
*/
%newobject CreateData;
%delobject FreeData;
%nodefaultctor MyData;

struct MyData {
};

%extend MyData {
  ~MyData() {
     FreeData($self);
  }
};

struct MyData* CreateData(void);
void FreeData(struct MyData* the_data);

void emptyCall(void);
double returnDouble(void);
const char* returnString(void);
void passDouble(double num);
void passString(const char* str);
double passAndReturnDouble(double num);
const char* passAndReturnString(const char* str);
void pass2Double(double n1, double n2);
void pass2String(const char* str1, const char* str2);

//double* returnDoubleArray2(void);
//const char** returnStringArray2(void);
void measure_c_function(void);


%include "chipmunk.i"

/*
%include "typemaps.i"
%apply double* OUTPUT { double* n1, double* n2 };
%inline %{
void multireturn2Double(double* n1, double* n2);
%}
%clear double* n1;      // Remove all typemaps for double *result
%clear double* n2;      // Remove all typemaps for double *result
*/
/*
//void cpMessage(const char *condition, const char *file, int line, int isError, int isHardError, const char *message, ...);

struct CGPoint {
  CGFloat x;
  CGFloat y;
};
typedef struct CGPoint CGPoint;
//typedef struct cpVect{cpFloat x,y;} cpVect;
	typedef CGPoint cpVect;

typedef struct cpMat2x2 {
	// Row major [[a, b][c d]]
	cpFloat a, b, c, d;
} cpMat2x2;

typedef struct cpBB{
	cpFloat l, b, r ,t;
} cpBB;

/// Convenience constructor for cpBB structs.
static inline cpBB cpBBNew(const cpFloat l, const cpFloat b, const cpFloat r, const cpFloat t);

/// Constructs a cpBB for a circle with the given position and radius.
static inline cpBB cpBBNewForCircle(const cpVect p, const cpFloat r);
*/
/*
#if ((TARGET_OS_IPHONE == 1) || (TARGET_OS_MAC == 1)) && (!defined CP_USE_CGPOINTS)
	#define CP_USE_CGPOINTS 1
#endif


#if CP_USE_CGPOINTS == 1
struct CGPoint {
  CGFloat x;
  CGFloat y;
};
typedef struct CGPoint CGPoint;	
	#if defined(__LP64__) && __LP64__
		#define CP_USE_DOUBLES 1
	#else
		#define CP_USE_DOUBLES 0
	#endif


#else
typedef struct cpVect{cpFloat x,y;} cpVect;

#endif
*/
/*
//typedef struct cpVect{cpFloat x,y;} cpVect;
%include "chipmunk.h"
%include "chipmunk_types.h"
%include "cpVect.h"
%include "cpBB.h"
%include "cpSpatialIndex.h"
%include "cpBody.h"
%include "cpShape.h"
%include "cpPolyShape.h"

%include "cpArbiter.h"	
%include "constraints/cpConstraint.h"

%include "cpSpace.h"
typedef struct cpVect{cpFloat x,y;} cpVect;
*/
/*
struct CGPoint {
  CGFloat x;
  CGFloat y;
};
typedef struct CGPoint CGPoint;
	typedef CGPoint cpVect;
*/

    

