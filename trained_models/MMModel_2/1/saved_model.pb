СІ
Ґц
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
а
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И"serve*1.13.12b'v1.13.1-0-g6612da8951'цы
n
PlaceholderPlaceholder*'
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
p
Placeholder_1Placeholder*
dtype0*'
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *
_class
loc:@dense/kernel
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *w÷њ*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *w÷?*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
е
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:*

seed *
T0*
_class
loc:@dense/kernel
ќ
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
а
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
“
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*
_class
loc:@dense/kernel
¶
dense/kernelVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense/kernel*
_class
loc:@dense/kernel*
	container *
shape
:
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
М
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0
О
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:
И
dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Ь

dense/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_name
dense/bias*
_class
loc:@dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
Д
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes

:
Ш
dense/MatMulMatMulPlaceholderdense/MatMul/ReadVariableOp*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( *
T0
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
Н
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
S

dense/ReluReludense/BiasAdd*'
_output_shapes
:€€€€€€€€€*
T0
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *w÷њ*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *w÷?*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
л
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
_output_shapes

:*

seed *
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0
÷
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
и
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:*
T0*!
_class
loc:@dense_1/kernel
Џ
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
ђ
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*!
_class
loc:@dense_1/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: 
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 
Ф
dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0
Ф
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:
М
dense_1/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
Ґ
dense_1/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_1/bias*
_class
loc:@dense_1/bias*
	container *
shape:
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 
Г
dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
К
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
l
dense_1/MatMul/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:
Ы
dense_1/MatMulMatMul
dense/Reludense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
g
dense_1/BiasAdd/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:
У
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€
\
SubSubdense_1/BiasAddPlaceholder_1*
T0*'
_output_shapes
:€€€€€€€€€
6
L2LossL2LossSub*
_output_shapes
: *
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
g
gradients/L2Loss_grad/mulMulSubgradients/Fill*
T0*'
_output_shapes
:€€€€€€€€€
g
gradients/Sub_grad/ShapeShapedense_1/BiasAdd*
_output_shapes
:*
T0*
out_type0
g
gradients/Sub_grad/Shape_1ShapePlaceholder_1*
_output_shapes
:*
T0*
out_type0
і
(gradients/Sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Sub_grad/Shapegradients/Sub_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ґ
gradients/Sub_grad/SumSumgradients/L2Loss_grad/mul(gradients/Sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ч
gradients/Sub_grad/ReshapeReshapegradients/Sub_grad/Sumgradients/Sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
¶
gradients/Sub_grad/Sum_1Sumgradients/L2Loss_grad/mul*gradients/Sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Z
gradients/Sub_grad/NegNeggradients/Sub_grad/Sum_1*
T0*
_output_shapes
:
Ы
gradients/Sub_grad/Reshape_1Reshapegradients/Sub_grad/Neggradients/Sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
g
#gradients/Sub_grad/tuple/group_depsNoOp^gradients/Sub_grad/Reshape^gradients/Sub_grad/Reshape_1
Џ
+gradients/Sub_grad/tuple/control_dependencyIdentitygradients/Sub_grad/Reshape$^gradients/Sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Sub_grad/Reshape*'
_output_shapes
:€€€€€€€€€
а
-gradients/Sub_grad/tuple/control_dependency_1Identitygradients/Sub_grad/Reshape_1$^gradients/Sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Sub_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
Ґ
*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/Sub_grad/tuple/control_dependency*
T0*
data_formatNHWC*
_output_shapes
:
Т
/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp,^gradients/Sub_grad/tuple/control_dependency+^gradients/dense_1/BiasAdd_grad/BiasAddGrad
Г
7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/Sub_grad/tuple/control_dependency0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Sub_grad/Reshape*'
_output_shapes
:€€€€€€€€€
З
9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
ё
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/MatMul/ReadVariableOp*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b(*
T0
ƒ
&gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/Relu7gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
Ж
.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
Д
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€
Б
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:
§
"gradients/dense/Relu_grad/ReluGradReluGrad6gradients/dense_1/MatMul_grad/tuple/control_dependency
dense/Relu*
T0*'
_output_shapes
:€€€€€€€€€
Ч
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
Е
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp)^gradients/dense/BiasAdd_grad/BiasAddGrad#^gradients/dense/Relu_grad/ReluGrad
ю
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/dense/Relu_grad/ReluGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/Relu_grad/ReluGrad*'
_output_shapes
:€€€€€€€€€
€
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
Ў
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b(
Ѕ
$gradients/dense/MatMul_grad/MatMul_1MatMulPlaceholder5gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
А
,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
ь
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*'
_output_shapes
:€€€€€€€€€
щ
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1*
_output_shapes

:
Й
%beta1_power/Initializer/initial_valueConst*
_output_shapes
: *
_class
loc:@dense/bias*
valueB
 *fff?*
dtype0
Ъ
beta1_powerVarHandleOp*
dtype0*
_output_shapes
: *
shared_namebeta1_power*
_class
loc:@dense/bias*
	container *
shape: 
Ж
,beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power*
_class
loc:@dense/bias*
_output_shapes
: 
Ж
beta1_power/AssignAssignVariableOpbeta1_power%beta1_power/Initializer/initial_value*
_class
loc:@dense/bias*
dtype0
В
beta1_power/Read/ReadVariableOpReadVariableOpbeta1_power*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
Й
%beta2_power/Initializer/initial_valueConst*
_class
loc:@dense/bias*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
Ъ
beta2_powerVarHandleOp*
shared_namebeta2_power*
_class
loc:@dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
Ж
,beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power*
_class
loc:@dense/bias*
_output_shapes
: 
Ж
beta2_power/AssignAssignVariableOpbeta2_power%beta2_power/Initializer/initial_value*
_class
loc:@dense/bias*
dtype0
В
beta2_power/Read/ReadVariableOpReadVariableOpbeta2_power*
_class
loc:@dense/bias*
dtype0*
_output_shapes
: 
Щ
#dense/kernel/Adam/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
∞
dense/kernel/AdamVarHandleOp*
_class
loc:@dense/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: *"
shared_namedense/kernel/Adam
Ф
2dense/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel/Adam*
_class
loc:@dense/kernel*
_output_shapes
: 
Т
dense/kernel/Adam/AssignAssignVariableOpdense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
_class
loc:@dense/kernel*
dtype0
Ш
%dense/kernel/Adam/Read/ReadVariableOpReadVariableOpdense/kernel/Adam*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:
Ы
%dense/kernel/Adam_1/Initializer/zerosConst*
_class
loc:@dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
і
dense/kernel/Adam_1VarHandleOp*$
shared_namedense/kernel/Adam_1*
_class
loc:@dense/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: 
Ш
4dense/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel/Adam_1*
_class
loc:@dense/kernel*
_output_shapes
: 
Ш
dense/kernel/Adam_1/AssignAssignVariableOpdense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
_class
loc:@dense/kernel*
dtype0
Ь
'dense/kernel/Adam_1/Read/ReadVariableOpReadVariableOpdense/kernel/Adam_1*
_output_shapes

:*
_class
loc:@dense/kernel*
dtype0
Н
!dense/bias/Adam/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes
:
¶
dense/bias/AdamVarHandleOp* 
shared_namedense/bias/Adam*
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
О
0dense/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/bias/Adam*
_class
loc:@dense/bias*
_output_shapes
: 
К
dense/bias/Adam/AssignAssignVariableOpdense/bias/Adam!dense/bias/Adam/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
О
#dense/bias/Adam/Read/ReadVariableOpReadVariableOpdense/bias/Adam*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
П
#dense/bias/Adam_1/Initializer/zerosConst*
_class
loc:@dense/bias*
valueB*    *
dtype0*
_output_shapes
:
™
dense/bias/Adam_1VarHandleOp*
_class
loc:@dense/bias*
	container *
shape:*
dtype0*
_output_shapes
: *"
shared_namedense/bias/Adam_1
Т
2dense/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/bias/Adam_1*
_class
loc:@dense/bias*
_output_shapes
: 
Р
dense/bias/Adam_1/AssignAssignVariableOpdense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
_class
loc:@dense/bias*
dtype0
Т
%dense/bias/Adam_1/Read/ReadVariableOpReadVariableOpdense/bias/Adam_1*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
Э
%dense_1/kernel/Adam/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
valueB*    *
dtype0*
_output_shapes

:
ґ
dense_1/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namedense_1/kernel/Adam*!
_class
loc:@dense_1/kernel*
	container *
shape
:
Ъ
4dense_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel/Adam*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
Ъ
dense_1/kernel/Adam/AssignAssignVariableOpdense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*!
_class
loc:@dense_1/kernel*
dtype0
Ю
'dense_1/kernel/Adam/Read/ReadVariableOpReadVariableOpdense_1/kernel/Adam*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:
Я
'dense_1/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@dense_1/kernel*
valueB*    *
dtype0*
_output_shapes

:
Ї
dense_1/kernel/Adam_1VarHandleOp*&
shared_namedense_1/kernel/Adam_1*!
_class
loc:@dense_1/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: 
Ю
6dense_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel/Adam_1*
_output_shapes
: *!
_class
loc:@dense_1/kernel
†
dense_1/kernel/Adam_1/AssignAssignVariableOpdense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*!
_class
loc:@dense_1/kernel*
dtype0
Ґ
)dense_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOpdense_1/kernel/Adam_1*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:
С
#dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes
:*
_class
loc:@dense_1/bias*
valueB*    *
dtype0
ђ
dense_1/bias/AdamVarHandleOp*"
shared_namedense_1/bias/Adam*
_class
loc:@dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
Ф
2dense_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias/Adam*
_class
loc:@dense_1/bias*
_output_shapes
: 
Т
dense_1/bias/Adam/AssignAssignVariableOpdense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
dtype0*
_class
loc:@dense_1/bias
Ф
%dense_1/bias/Adam/Read/ReadVariableOpReadVariableOpdense_1/bias/Adam*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
У
%dense_1/bias/Adam_1/Initializer/zerosConst*
_class
loc:@dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
∞
dense_1/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *$
shared_namedense_1/bias/Adam_1*
_class
loc:@dense_1/bias*
	container *
shape:
Ш
4dense_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias/Adam_1*
_class
loc:@dense_1/bias*
_output_shapes
: 
Ш
dense_1/bias/Adam_1/AssignAssignVariableOpdense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0
Ш
'dense_1/bias/Adam_1/Read/ReadVariableOpReadVariableOpdense_1/bias/Adam_1*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
_output_shapes
: *
valueB
 *wћ+2*
dtype0
}
9Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

;Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
∞
*Adam/update_dense/kernel/ResourceApplyAdamResourceApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_19Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp;Adam/update_dense/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( 
{
7Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
}
9Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
£
(Adam/update_dense/bias/ResourceApplyAdamResourceApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_17Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp9Adam/update_dense/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( 

;Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
Б
=Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
ј
,Adam/update_dense_1/kernel/ResourceApplyAdamResourceApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1;Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp=Adam/update_dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_1/kernel*
use_nesterov( *
use_locking( *
T0
}
9Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

;Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
≥
*Adam/update_dense_1/bias/ResourceApplyAdamResourceApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_19Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp;Adam/update_dense_1/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense_1/bias*
use_nesterov( *
use_locking( *
T0
Л
Adam/ReadVariableOpReadVariableOpbeta1_power)^Adam/update_dense/bias/ResourceApplyAdam+^Adam/update_dense/kernel/ResourceApplyAdam+^Adam/update_dense_1/bias/ResourceApplyAdam-^Adam/update_dense_1/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
p
Adam/mulMulAdam/ReadVariableOp
Adam/beta1*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
l
Adam/AssignVariableOpAssignVariableOpbeta1_powerAdam/mul*
_class
loc:@dense/bias*
dtype0
ƒ
Adam/ReadVariableOp_1ReadVariableOpbeta1_power^Adam/AssignVariableOp)^Adam/update_dense/bias/ResourceApplyAdam+^Adam/update_dense/kernel/ResourceApplyAdam+^Adam/update_dense_1/bias/ResourceApplyAdam-^Adam/update_dense_1/kernel/ResourceApplyAdam*
_output_shapes
: *
_class
loc:@dense/bias*
dtype0
Н
Adam/ReadVariableOp_2ReadVariableOpbeta2_power)^Adam/update_dense/bias/ResourceApplyAdam+^Adam/update_dense/kernel/ResourceApplyAdam+^Adam/update_dense_1/bias/ResourceApplyAdam-^Adam/update_dense_1/kernel/ResourceApplyAdam*
_output_shapes
: *
dtype0
t

Adam/mul_1MulAdam/ReadVariableOp_2
Adam/beta2*
T0*
_class
loc:@dense/bias*
_output_shapes
: 
p
Adam/AssignVariableOp_1AssignVariableOpbeta2_power
Adam/mul_1*
dtype0*
_class
loc:@dense/bias
∆
Adam/ReadVariableOp_3ReadVariableOpbeta2_power^Adam/AssignVariableOp_1)^Adam/update_dense/bias/ResourceApplyAdam+^Adam/update_dense/kernel/ResourceApplyAdam+^Adam/update_dense_1/bias/ResourceApplyAdam-^Adam/update_dense_1/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: *
_class
loc:@dense/bias
р
AdamNoOp^Adam/ReadVariableOp_1^Adam/ReadVariableOp_3)^Adam/update_dense/bias/ResourceApplyAdam+^Adam/update_dense/kernel/ResourceApplyAdam+^Adam/update_dense_1/bias/ResourceApplyAdam-^Adam/update_dense_1/kernel/ResourceApplyAdam
о
initNoOp^beta1_power/Assign^beta2_power/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense/bias/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/kernel/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^dense_1/bias/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/kernel/Assign

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
shape: *
dtype0
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_8820e8d468e14975beb0bbcbff1470b8/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
г
save/SaveV2/tensor_namesConst"/device:CPU:0*З
valueэBъBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
О
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*/
value&B$B B B B B B B B B B B B B B 
Ъ
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOpbeta2_power/Read/ReadVariableOpdense/bias/Read/ReadVariableOp#dense/bias/Adam/Read/ReadVariableOp%dense/bias/Adam_1/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp%dense/kernel/Adam/Read/ReadVariableOp'dense/kernel/Adam_1/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp%dense_1/bias/Adam/Read/ReadVariableOp'dense_1/bias/Adam_1/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp'dense_1/kernel/Adam/Read/ReadVariableOp)dense_1/kernel/Adam_1/Read/ReadVariableOp"/device:CPU:0*
dtypes
2
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
ђ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
ж
save/RestoreV2/tensor_namesConst"/device:CPU:0*З
valueэBъBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1*
dtype0*
_output_shapes
:
С
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
а
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
2
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpbeta1_powersave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
V
save/AssignVariableOp_1AssignVariableOpbeta2_powersave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
dense/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpdense/bias/Adamsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
_output_shapes
:*
T0
\
save/AssignVariableOp_4AssignVariableOpdense/bias/Adam_1save/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
W
save/AssignVariableOp_5AssignVariableOpdense/kernelsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
\
save/AssignVariableOp_6AssignVariableOpdense/kernel/Adamsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
^
save/AssignVariableOp_7AssignVariableOpdense/kernel/Adam_1save/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
W
save/AssignVariableOp_8AssignVariableOpdense_1/biassave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
]
save/AssignVariableOp_9AssignVariableOpdense_1/bias/Adamsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
`
save/AssignVariableOp_10AssignVariableOpdense_1/bias/Adam_1save/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
[
save/AssignVariableOp_11AssignVariableOpdense_1/kernelsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
`
save/AssignVariableOp_12AssignVariableOpdense_1/kernel/Adamsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
b
save/AssignVariableOp_13AssignVariableOpdense_1/kernel/Adam_1save/Identity_14*
dtype0
И
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"т
trainable_variablesЏ„
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08"
train_op

Adam")
saved_model_main_op

legacy_init_op"Н
	variables€ь
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
А
dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08
q
beta1_power:0beta1_power/Assign!beta1_power/Read/ReadVariableOp:0(2'beta1_power/Initializer/initial_value:0
q
beta2_power:0beta2_power/Assign!beta2_power/Read/ReadVariableOp:0(2'beta2_power/Initializer/initial_value:0
Б
dense/kernel/Adam:0dense/kernel/Adam/Assign'dense/kernel/Adam/Read/ReadVariableOp:0(2%dense/kernel/Adam/Initializer/zeros:0
Й
dense/kernel/Adam_1:0dense/kernel/Adam_1/Assign)dense/kernel/Adam_1/Read/ReadVariableOp:0(2'dense/kernel/Adam_1/Initializer/zeros:0
y
dense/bias/Adam:0dense/bias/Adam/Assign%dense/bias/Adam/Read/ReadVariableOp:0(2#dense/bias/Adam/Initializer/zeros:0
Б
dense/bias/Adam_1:0dense/bias/Adam_1/Assign'dense/bias/Adam_1/Read/ReadVariableOp:0(2%dense/bias/Adam_1/Initializer/zeros:0
Й
dense_1/kernel/Adam:0dense_1/kernel/Adam/Assign)dense_1/kernel/Adam/Read/ReadVariableOp:0(2'dense_1/kernel/Adam/Initializer/zeros:0
С
dense_1/kernel/Adam_1:0dense_1/kernel/Adam_1/Assign+dense_1/kernel/Adam_1/Read/ReadVariableOp:0(2)dense_1/kernel/Adam_1/Initializer/zeros:0
Б
dense_1/bias/Adam:0dense_1/bias/Adam/Assign'dense_1/bias/Adam/Read/ReadVariableOp:0(2%dense_1/bias/Adam/Initializer/zeros:0
Й
dense_1/bias/Adam_1:0dense_1/bias/Adam_1/Assign)dense_1/bias/Adam_1/Read/ReadVariableOp:0(2'dense_1/bias/Adam_1/Initializer/zeros:0*л
your_prediction„
;
tensor_info_input_x$
Placeholder:0€€€€€€€€€
=
tensor_info_input_y&
Placeholder_1:0€€€€€€€€€=
tensor_info_pre_y(
dense_1/BiasAdd:0€€€€€€€€€tensorflow/serving/predict