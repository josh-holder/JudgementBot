іЊ
љМ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
h
Any	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(Р
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58ҐТ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:*
dtype0
Ж
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/v/dense_3/kernel

)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes

:*
dtype0
Ж
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/m/dense_3/kernel

)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes

:*
dtype0
Ъ
!Adam/v/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/v/batch_normalization_2/beta
У
5Adam/v/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_2/beta*
_output_shapes
:*
dtype0
Ъ
!Adam/m/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/m/batch_normalization_2/beta
У
5Adam/m/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_2/beta*
_output_shapes
:*
dtype0
Ь
"Adam/v/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_2/gamma
Х
6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_2/gamma*
_output_shapes
:*
dtype0
Ь
"Adam/m/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_2/gamma
Х
6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_2/gamma*
_output_shapes
:*
dtype0
~
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_2/bias
w
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_2/bias
w
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes
:*
dtype0
Ж
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/v/dense_2/kernel

)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes

:*
dtype0
Ж
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/m/dense_2/kernel

)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes

:*
dtype0
Ъ
!Adam/v/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/v/batch_normalization_1/beta
У
5Adam/v/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_1/beta*
_output_shapes
:*
dtype0
Ъ
!Adam/m/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/m/batch_normalization_1/beta
У
5Adam/m/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_1/beta*
_output_shapes
:*
dtype0
Ь
"Adam/v/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_1/gamma
Х
6Adam/v/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_1/gamma*
_output_shapes
:*
dtype0
Ь
"Adam/m/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_1/gamma
Х
6Adam/m/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_1/gamma*
_output_shapes
:*
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
Ж
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes

:0*
dtype0
Ж
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes

:0*
dtype0
Ц
Adam/v/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/v/batch_normalization/beta
П
3Adam/v/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/v/batch_normalization/beta*
_output_shapes
:0*
dtype0
Ц
Adam/m/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!Adam/m/batch_normalization/beta
П
3Adam/m/batch_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/m/batch_normalization/beta*
_output_shapes
:0*
dtype0
Ш
 Adam/v/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*1
shared_name" Adam/v/batch_normalization/gamma
С
4Adam/v/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/v/batch_normalization/gamma*
_output_shapes
:0*
dtype0
Ш
 Adam/m/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*1
shared_name" Adam/m/batch_normalization/gamma
С
4Adam/m/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/m/batch_normalization/gamma*
_output_shapes
:0*
dtype0
z
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameAdam/v/dense/bias
s
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes
:0*
dtype0
z
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*"
shared_nameAdam/m/dense/bias
s
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes
:0*
dtype0
В
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P0*$
shared_nameAdam/v/dense/kernel
{
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes

:P0*
dtype0
В
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P0*$
shared_nameAdam/m/dense/kernel
{
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes

:P0*
dtype0
М
Adam/v/lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*+
shared_nameAdam/v/lstm/lstm_cell/bias
Е
.Adam/v/lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm/lstm_cell/bias*
_output_shapes
:P*
dtype0
М
Adam/m/lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*+
shared_nameAdam/m/lstm/lstm_cell/bias
Е
.Adam/m/lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm/lstm_cell/bias*
_output_shapes
:P*
dtype0
®
&Adam/v/lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*7
shared_name(&Adam/v/lstm/lstm_cell/recurrent_kernel
°
:Adam/v/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp&Adam/v/lstm/lstm_cell/recurrent_kernel*
_output_shapes

:P*
dtype0
®
&Adam/m/lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*7
shared_name(&Adam/m/lstm/lstm_cell/recurrent_kernel
°
:Adam/m/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp&Adam/m/lstm/lstm_cell/recurrent_kernel*
_output_shapes

:P*
dtype0
Ф
Adam/v/lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*-
shared_nameAdam/v/lstm/lstm_cell/kernel
Н
0Adam/v/lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm/lstm_cell/kernel*
_output_shapes

:P*
dtype0
Ф
Adam/m/lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*-
shared_nameAdam/m/lstm/lstm_cell/kernel
Н
0Adam/m/lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm/lstm_cell/kernel*
_output_shapes

:P*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
~
lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*$
shared_namelstm/lstm_cell/bias
w
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes
:P*
dtype0
Ъ
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*0
shared_name!lstm/lstm_cell/recurrent_kernel
У
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes

:P*
dtype0
Ж
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes

:P*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:*
dtype0
Ґ
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance
Ы
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean
У
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta
Е
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:*
dtype0
О
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma
З
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
Ґ
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_1/moving_variance
Ы
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_1/moving_mean
У
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_1/beta
Е
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:*
dtype0
О
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_1/gamma
З
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:0*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:0*
dtype0
Ю
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*4
shared_name%#batch_normalization/moving_variance
Ч
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:0*
dtype0
Ц
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*0
shared_name!batch_normalization/moving_mean
П
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:0*
dtype0
И
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_namebatch_normalization/beta
Б
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:0*
dtype0
К
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:0**
shared_namebatch_normalization/gamma
Г
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:0*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:0*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P0*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:P0*
dtype0
В
serving_default_input_1Placeholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
z
serving_default_input_2Placeholder*'
_output_shapes
:€€€€€€€€€<*
dtype0*
shape:€€€€€€€€€<
ћ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2lstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betadense_1/kerneldense_1/bias%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/betadense_2/kerneldense_2/bias%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betadense_3/kerneldense_3/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *0
f+R)
'__inference_signature_wrapper_287681924

NoOpNoOp
±Н
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*лМ
valueаМB№М B‘М
Й
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer-13
layer_with_weights-7
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories*
'
#_self_saveable_object_factories* 
≥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
#!_self_saveable_object_factories* 
ж
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(_random_generator
)cell
*
state_spec
#+_self_saveable_object_factories*
'
#,_self_saveable_object_factories* 
≥
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
#3_self_saveable_object_factories* 
Ћ
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
#<_self_saveable_object_factories*
ъ
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
#H_self_saveable_object_factories*
 
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator
#P_self_saveable_object_factories* 
Ћ
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias
#Y_self_saveable_object_factories*
ъ
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
#e_self_saveable_object_factories*
 
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
l_random_generator
#m_self_saveable_object_factories* 
Ћ
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses

tkernel
ubias
#v_self_saveable_object_factories*
э
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses
}axis
	~gamma
beta
Аmoving_mean
Бmoving_variance
$В_self_saveable_object_factories*
“
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Й_random_generator
$К_self_saveable_object_factories* 
‘
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel
	Тbias
$У_self_saveable_object_factories*
є
Ф0
Х1
Ц2
:3
;4
D5
E6
F7
G8
W9
X10
a11
b12
c13
d14
t15
u16
~17
18
А19
Б20
С21
Т22*
З
Ф0
Х1
Ц2
:3
;4
D5
E6
W7
X8
a9
b10
t11
u12
~13
14
С15
Т16*
* 
µ
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Ьtrace_0
Эtrace_1
Юtrace_2
Яtrace_3* 
:
†trace_0
°trace_1
Ґtrace_2
£trace_3* 
* 
И
§
_variables
•_iterations
¶_learning_rate
І_index_dict
®
_momentums
©_velocities
™_update_step_xla*

Ђserving_default* 
* 
* 
* 
* 
* 
Ц
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses* 

±trace_0* 

≤trace_0* 
* 

Ф0
Х1
Ц2*

Ф0
Х1
Ц2*
* 
•
≥states
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

єtrace_0
Їtrace_1* 

їtrace_0
Љtrace_1* 
(
$љ_self_saveable_object_factories* 
Ф
Њ	variables
њtrainable_variables
јregularization_losses
Ѕ	keras_api
¬__call__
+√&call_and_return_all_conditional_losses
ƒ_random_generator
≈
state_size
Фkernel
Хrecurrent_kernel
	Цbias
$∆_self_saveable_object_factories*
* 
* 
* 
* 
* 
* 
Ц
«non_trainable_variables
»layers
…metrics
  layer_regularization_losses
Ћlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

ћtrace_0* 

Ќtrace_0* 
* 

:0
;1*

:0
;1*
* 
Ш
ќnon_trainable_variables
ѕlayers
–metrics
 —layer_regularization_losses
“layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

”trace_0* 

‘trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
D0
E1
F2
G3*

D0
E1*
* 
Ш
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

Џtrace_0
џtrace_1* 

№trace_0
Ёtrace_1* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

гtrace_0
дtrace_1* 

еtrace_0
жtrace_1* 
(
$з_self_saveable_object_factories* 
* 

W0
X1*

W0
X1*
* 
Ш
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

нtrace_0* 

оtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
a0
b1
c2
d3*

a0
b1*
* 
Ш
пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

фtrace_0
хtrace_1* 

цtrace_0
чtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 

эtrace_0
юtrace_1* 

€trace_0
Аtrace_1* 
(
$Б_self_saveable_object_factories* 
* 

t0
u1*

t0
u1*
* 
Ш
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses*

Зtrace_0* 

Иtrace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
"
~0
1
А2
Б3*

~0
1*
* 
Ш
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*

Оtrace_0
Пtrace_1* 

Рtrace_0
Сtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses* 

Чtrace_0
Шtrace_1* 

Щtrace_0
Ъtrace_1* 
(
$Ы_self_saveable_object_factories* 
* 

С0
Т1*

С0
Т1*
* 
Ю
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses*

°trace_0* 

Ґtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
0
F0
G1
c2
d3
А4
Б5*
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*

£0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
µ
•0
§1
•2
¶3
І4
®5
©6
™7
Ђ8
ђ9
≠10
Ѓ11
ѓ12
∞13
±14
≤15
≥16
і17
µ18
ґ19
Ј20
Є21
є22
Ї23
ї24
Љ25
љ26
Њ27
њ28
ј29
Ѕ30
¬31
√32
ƒ33
≈34*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
У
§0
¶1
®2
™3
ђ4
Ѓ5
∞6
≤7
і8
ґ9
Є10
Ї11
Љ12
Њ13
ј14
¬15
ƒ16*
У
•0
І1
©2
Ђ3
≠4
ѓ5
±6
≥7
µ8
Ј9
є10
ї11
љ12
њ13
Ѕ14
√15
≈16*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

)0*
* 
* 
* 
* 
* 
* 
* 
* 

Ф0
Х1
Ц2*

Ф0
Х1
Ц2*
* 
Ю
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
Њ	variables
њtrainable_variables
јregularization_losses
¬__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses*
* 
* 
(
$Ћ_self_saveable_object_factories* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

F0
G1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

c0
d1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

А0
Б1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
ћ	variables
Ќ	keras_api

ќtotal

ѕcount*
ga
VARIABLE_VALUEAdam/m/lstm/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/lstm/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE&Adam/m/lstm/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE&Adam/v/lstm/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/lstm/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/lstm/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/dense/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/dense/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/dense/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/batch_normalization/gamma2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/batch_normalization/gamma2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/m/batch_normalization/beta2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/batch_normalization/beta2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_1/gamma2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_1/gamma2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_1/beta2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_1/beta2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_2/gamma2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_2/gamma2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_2/beta2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_2/beta2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 

ќ0
ѕ1*

ћ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
‘
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp0Adam/m/lstm/lstm_cell/kernel/Read/ReadVariableOp0Adam/v/lstm/lstm_cell/kernel/Read/ReadVariableOp:Adam/m/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp:Adam/v/lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp.Adam/m/lstm/lstm_cell/bias/Read/ReadVariableOp.Adam/v/lstm/lstm_cell/bias/Read/ReadVariableOp'Adam/m/dense/kernel/Read/ReadVariableOp'Adam/v/dense/kernel/Read/ReadVariableOp%Adam/m/dense/bias/Read/ReadVariableOp%Adam/v/dense/bias/Read/ReadVariableOp4Adam/m/batch_normalization/gamma/Read/ReadVariableOp4Adam/v/batch_normalization/gamma/Read/ReadVariableOp3Adam/m/batch_normalization/beta/Read/ReadVariableOp3Adam/v/batch_normalization/beta/Read/ReadVariableOp)Adam/m/dense_1/kernel/Read/ReadVariableOp)Adam/v/dense_1/kernel/Read/ReadVariableOp'Adam/m/dense_1/bias/Read/ReadVariableOp'Adam/v/dense_1/bias/Read/ReadVariableOp6Adam/m/batch_normalization_1/gamma/Read/ReadVariableOp6Adam/v/batch_normalization_1/gamma/Read/ReadVariableOp5Adam/m/batch_normalization_1/beta/Read/ReadVariableOp5Adam/v/batch_normalization_1/beta/Read/ReadVariableOp)Adam/m/dense_2/kernel/Read/ReadVariableOp)Adam/v/dense_2/kernel/Read/ReadVariableOp'Adam/m/dense_2/bias/Read/ReadVariableOp'Adam/v/dense_2/bias/Read/ReadVariableOp6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOp6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOp5Adam/m/batch_normalization_2/beta/Read/ReadVariableOp5Adam/v/batch_normalization_2/beta/Read/ReadVariableOp)Adam/m/dense_3/kernel/Read/ReadVariableOp)Adam/v/dense_3/kernel/Read/ReadVariableOp'Adam/m/dense_3/bias/Read/ReadVariableOp'Adam/v/dense_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*J
TinC
A2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *+
f&R$
"__inference__traced_save_287683386
Л
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense_1/kerneldense_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense_2/kerneldense_2/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancedense_3/kerneldense_3/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/bias	iterationlearning_rateAdam/m/lstm/lstm_cell/kernelAdam/v/lstm/lstm_cell/kernel&Adam/m/lstm/lstm_cell/recurrent_kernel&Adam/v/lstm/lstm_cell/recurrent_kernelAdam/m/lstm/lstm_cell/biasAdam/v/lstm/lstm_cell/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/bias Adam/m/batch_normalization/gamma Adam/v/batch_normalization/gammaAdam/m/batch_normalization/betaAdam/v/batch_normalization/betaAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/bias"Adam/m/batch_normalization_1/gamma"Adam/v/batch_normalization_1/gamma!Adam/m/batch_normalization_1/beta!Adam/v/batch_normalization_1/betaAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotalcount*I
TinB
@2>*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *.
f)R'
%__inference__traced_restore_287683579¶—
Ы

х
D__inference_dense_layer_call_and_return_conditional_losses_287682798

inputs0
matmul_readvariableop_resource:P0-
biasadd_readvariableop_resource:0
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€0a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
А
d
+__inference_dropout_layer_call_fn_287682888

inputs
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_287681374o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€022
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
”
Ш
+__inference_dense_1_layer_call_fn_287682914

inputs
unknown:0
	unknown_0:
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_287681156o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
є
‘
9__inference_batch_normalization_2_layer_call_fn_287683078

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287680965o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ь

ч
F__inference_dense_3_layer_call_and_return_conditional_losses_287681222

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
лE
∞
D__inference_model_layer_call_and_return_conditional_losses_287681639

inputs
inputs_1 
lstm_287681580:P 
lstm_287681582:P
lstm_287681584:P!
dense_287681588:P0
dense_287681590:0+
batch_normalization_287681593:0+
batch_normalization_287681595:0+
batch_normalization_287681597:0+
batch_normalization_287681599:0#
dense_1_287681603:0
dense_1_287681605:-
batch_normalization_1_287681608:-
batch_normalization_1_287681610:-
batch_normalization_1_287681612:-
batch_normalization_1_287681614:#
dense_2_287681618:
dense_2_287681620:-
batch_normalization_2_287681623:-
batch_normalization_2_287681625:-
batch_normalization_2_287681627:-
batch_normalization_2_287681629:#
dense_3_287681633:
dense_3_287681635:
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐlstm/StatefulPartitionedCall 
masking/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_masking_layer_call_and_return_conditional_losses_287680996Ґ
lstm/StatefulPartitionedCallStatefulPartitionedCall masking/PartitionedCall:output:0lstm_287681580lstm_287681582lstm_287681584*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *L
fGRE
C__inference_lstm_layer_call_and_return_conditional_losses_287681505ш
concatenate/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_287681110Ш
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_287681588dense_287681590*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_287681123Т
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_287681593batch_normalization_287681595batch_normalization_287681597batch_normalization_287681599*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287680801Д
dropout/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_287681374§
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_287681603dense_1_287681605*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_287681156†
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_1_287681608batch_normalization_1_287681610batch_normalization_1_287681612batch_normalization_1_287681614*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287680883ђ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_287681341¶
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_287681618dense_2_287681620*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_287681189†
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0batch_normalization_2_287681623batch_normalization_2_287681625batch_normalization_2_287681627batch_normalization_2_287681629*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287680965Ѓ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_2_layer_call_and_return_conditional_losses_287681308¶
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_287681633dense_3_287681635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_287681222w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€г
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
М

e
F__inference_dropout_layer_call_and_return_conditional_losses_287681374

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€0*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€0T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€0a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€0:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
 
—
)__inference_model_layer_call_fn_287681278
input_1
input_2
unknown:P
	unknown_0:P
	unknown_1:P
	unknown_2:P0
	unknown_3:0
	unknown_4:0
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_287681229o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€<
!
_user_specified_name	input_2
 
”
)__inference_model_layer_call_fn_287682028
inputs_0
inputs_1
unknown:P
	unknown_0:P
	unknown_1:P
	unknown_2:P0
	unknown_3:0
	unknown_4:0
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*3
_read_only_resource_inputs
	
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_287681639o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs_1
У%
л
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287682878

inputs5
'assignmovingavg_readvariableop_resource:07
)assignmovingavg_1_readvariableop_resource:03
%batchnorm_mul_readvariableop_resource:0/
!batchnorm_readvariableop_resource:0
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:0З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€0l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:0*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:0x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:0ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:0*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:0~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:0і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:0P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:0~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:0v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:0r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
Д
f
-__inference_dropout_2_layer_call_fn_287683142

inputs
identityИҐStatefulPartitionedCall–
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_2_layer_call_and_return_conditional_losses_287681308o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
О

g
H__inference_dropout_2_layer_call_and_return_conditional_losses_287683159

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ў
d
F__inference_dropout_layer_call_and_return_conditional_losses_287681143

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€0[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€0:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
Б
≤
(__inference_lstm_layer_call_fn_287682571

inputs
unknown:P
	unknown_0:P
	unknown_1:P
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *L
fGRE
C__inference_lstm_layer_call_and_return_conditional_losses_287681505o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Б
≤
(__inference_lstm_layer_call_fn_287682560

inputs
unknown:P
	unknown_0:P
	unknown_1:P
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *L
fGRE
C__inference_lstm_layer_call_and_return_conditional_losses_287681095o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
џ
f
H__inference_dropout_1_layer_call_and_return_conditional_losses_287683020

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
КУ
ї
$__inference__wrapped_model_287680730
input_1
input_2E
3model_lstm_lstm_cell_matmul_readvariableop_resource:PG
5model_lstm_lstm_cell_matmul_1_readvariableop_resource:PB
4model_lstm_lstm_cell_biasadd_readvariableop_resource:P<
*model_dense_matmul_readvariableop_resource:P09
+model_dense_biasadd_readvariableop_resource:0I
;model_batch_normalization_batchnorm_readvariableop_resource:0M
?model_batch_normalization_batchnorm_mul_readvariableop_resource:0K
=model_batch_normalization_batchnorm_readvariableop_1_resource:0K
=model_batch_normalization_batchnorm_readvariableop_2_resource:0>
,model_dense_1_matmul_readvariableop_resource:0;
-model_dense_1_biasadd_readvariableop_resource:K
=model_batch_normalization_1_batchnorm_readvariableop_resource:O
Amodel_batch_normalization_1_batchnorm_mul_readvariableop_resource:M
?model_batch_normalization_1_batchnorm_readvariableop_1_resource:M
?model_batch_normalization_1_batchnorm_readvariableop_2_resource:>
,model_dense_2_matmul_readvariableop_resource:;
-model_dense_2_biasadd_readvariableop_resource:K
=model_batch_normalization_2_batchnorm_readvariableop_resource:O
Amodel_batch_normalization_2_batchnorm_mul_readvariableop_resource:M
?model_batch_normalization_2_batchnorm_readvariableop_1_resource:M
?model_batch_normalization_2_batchnorm_readvariableop_2_resource:>
,model_dense_3_matmul_readvariableop_resource:;
-model_dense_3_biasadd_readvariableop_resource:
identityИҐ2model/batch_normalization/batchnorm/ReadVariableOpҐ4model/batch_normalization/batchnorm/ReadVariableOp_1Ґ4model/batch_normalization/batchnorm/ReadVariableOp_2Ґ6model/batch_normalization/batchnorm/mul/ReadVariableOpҐ4model/batch_normalization_1/batchnorm/ReadVariableOpҐ6model/batch_normalization_1/batchnorm/ReadVariableOp_1Ґ6model/batch_normalization_1/batchnorm/ReadVariableOp_2Ґ8model/batch_normalization_1/batchnorm/mul/ReadVariableOpҐ4model/batch_normalization_2/batchnorm/ReadVariableOpҐ6model/batch_normalization_2/batchnorm/ReadVariableOp_1Ґ6model/batch_normalization_2/batchnorm/ReadVariableOp_2Ґ8model/batch_normalization_2/batchnorm/mul/ReadVariableOpҐ"model/dense/BiasAdd/ReadVariableOpҐ!model/dense/MatMul/ReadVariableOpҐ$model/dense_1/BiasAdd/ReadVariableOpҐ#model/dense_1/MatMul/ReadVariableOpҐ$model/dense_2/BiasAdd/ReadVariableOpҐ#model/dense_2/MatMul/ReadVariableOpҐ$model/dense_3/BiasAdd/ReadVariableOpҐ#model/dense_3/MatMul/ReadVariableOpҐ+model/lstm/lstm_cell/BiasAdd/ReadVariableOpҐ-model/lstm/lstm_cell/BiasAdd_1/ReadVariableOpҐ-model/lstm/lstm_cell/BiasAdd_2/ReadVariableOpҐ*model/lstm/lstm_cell/MatMul/ReadVariableOpҐ,model/lstm/lstm_cell/MatMul_1/ReadVariableOpҐ,model/lstm/lstm_cell/MatMul_2/ReadVariableOpҐ,model/lstm/lstm_cell/MatMul_3/ReadVariableOpҐ,model/lstm/lstm_cell/MatMul_4/ReadVariableOpҐ,model/lstm/lstm_cell/MatMul_5/ReadVariableOp]
model/masking/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  АњД
model/masking/NotEqualNotEqualinput_1!model/masking/NotEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€n
#model/masking/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€†
model/masking/AnyAnymodel/masking/NotEqual:z:0,model/masking/Any/reduction_indices:output:0*+
_output_shapes
:€€€€€€€€€*
	keep_dims({
model/masking/CastCastmodel/masking/Any:output:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€o
model/masking/mulMulinput_1model/masking/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€О
model/masking/SqueezeSqueezemodel/masking/Any:output:0*
T0
*'
_output_shapes
:€€€€€€€€€*
squeeze_dims

€€€€€€€€€U
model/lstm/ShapeShapemodel/masking/mul:z:0*
T0*
_output_shapes
:h
model/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 model/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 model/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
model/lstm/strided_sliceStridedSlicemodel/lstm/Shape:output:0'model/lstm/strided_slice/stack:output:0)model/lstm/strided_slice/stack_1:output:0)model/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
model/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ф
model/lstm/zeros/packedPack!model/lstm/strided_slice:output:0"model/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:[
model/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
model/lstm/zerosFill model/lstm/zeros/packed:output:0model/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
model/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ш
model/lstm/zeros_1/packedPack!model/lstm/strided_slice:output:0$model/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:]
model/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    У
model/lstm/zeros_1Fill"model/lstm/zeros_1/packed:output:0!model/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€n
model/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Т
model/lstm/transpose	Transposemodel/masking/mul:z:0"model/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Z
model/lstm/Shape_1Shapemodel/lstm/transpose:y:0*
T0*
_output_shapes
:j
 model/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"model/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"model/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
model/lstm/strided_slice_1StridedSlicemodel/lstm/Shape_1:output:0)model/lstm/strided_slice_1/stack:output:0+model/lstm/strided_slice_1/stack_1:output:0+model/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
model/lstm/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Э
model/lstm/ExpandDims
ExpandDimsmodel/masking/Squeeze:output:0"model/lstm/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:€€€€€€€€€p
model/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
model/lstm/transpose_1	Transposemodel/lstm/ExpandDims:output:0$model/lstm/transpose_1/perm:output:0*
T0
*+
_output_shapes
:€€€€€€€€€Щ
model/lstm/unstackUnpackmodel/lstm/transpose:y:0*
T0*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numЭ
model/lstm/unstack_1Unpackmodel/lstm/transpose_1:y:0*
T0
*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numЮ
*model/lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp3model_lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0®
model/lstm/lstm_cell/MatMulMatMulmodel/lstm/unstack:output:02model/lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PҐ
,model/lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp5model_lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0™
model/lstm/lstm_cell/MatMul_1MatMulmodel/lstm/zeros:output:04model/lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P£
model/lstm/lstm_cell/addAddV2%model/lstm/lstm_cell/MatMul:product:0'model/lstm/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€PЬ
+model/lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp4model_lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0ђ
model/lstm/lstm_cell/BiasAddBiasAddmodel/lstm/lstm_cell/add:z:03model/lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Pf
$model/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
model/lstm/lstm_cell/splitSplit-model/lstm/lstm_cell/split/split_dim:output:0%model/lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split~
model/lstm/lstm_cell/SigmoidSigmoid#model/lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€А
model/lstm/lstm_cell/Sigmoid_1Sigmoid#model/lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Т
model/lstm/lstm_cell/mulMul"model/lstm/lstm_cell/Sigmoid_1:y:0model/lstm/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
model/lstm/lstm_cell/ReluRelu#model/lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ю
model/lstm/lstm_cell/mul_1Mul model/lstm/lstm_cell/Sigmoid:y:0'model/lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€У
model/lstm/lstm_cell/add_1AddV2model/lstm/lstm_cell/mul:z:0model/lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€А
model/lstm/lstm_cell/Sigmoid_2Sigmoid#model/lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€u
model/lstm/lstm_cell/Relu_1Relumodel/lstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
model/lstm/lstm_cell/mul_2Mul"model/lstm/lstm_cell/Sigmoid_2:y:0)model/lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€j
model/lstm/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      М
model/lstm/TileTilemodel/lstm/unstack_1:output:0"model/lstm/Tile/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€t
model/lstm/zeros_like	ZerosLikemodel/lstm/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€¶
model/lstm/SelectV2SelectV2model/lstm/Tile:output:0model/lstm/lstm_cell/mul_2:z:0model/lstm/zeros_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€l
model/lstm/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Р
model/lstm/Tile_1Tilemodel/lstm/unstack_1:output:0$model/lstm/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€l
model/lstm/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Р
model/lstm/Tile_2Tilemodel/lstm/unstack_1:output:0$model/lstm/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€™
model/lstm/SelectV2_1SelectV2model/lstm/Tile_1:output:0model/lstm/lstm_cell/mul_2:z:0model/lstm/zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€ђ
model/lstm/SelectV2_2SelectV2model/lstm/Tile_2:output:0model/lstm/lstm_cell/add_1:z:0model/lstm/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€†
,model/lstm/lstm_cell/MatMul_2/ReadVariableOpReadVariableOp3model_lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0ђ
model/lstm/lstm_cell/MatMul_2MatMulmodel/lstm/unstack:output:14model/lstm/lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PҐ
,model/lstm/lstm_cell/MatMul_3/ReadVariableOpReadVariableOp5model_lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0ѓ
model/lstm/lstm_cell/MatMul_3MatMulmodel/lstm/SelectV2_1:output:04model/lstm/lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PІ
model/lstm/lstm_cell/add_2AddV2'model/lstm/lstm_cell/MatMul_2:product:0'model/lstm/lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:€€€€€€€€€PЮ
-model/lstm/lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp4model_lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0≤
model/lstm/lstm_cell/BiasAdd_1BiasAddmodel/lstm/lstm_cell/add_2:z:05model/lstm/lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ph
&model/lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ы
model/lstm/lstm_cell/split_1Split/model/lstm/lstm_cell/split_1/split_dim:output:0'model/lstm/lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitВ
model/lstm/lstm_cell/Sigmoid_3Sigmoid%model/lstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€В
model/lstm/lstm_cell/Sigmoid_4Sigmoid%model/lstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ч
model/lstm/lstm_cell/mul_3Mul"model/lstm/lstm_cell/Sigmoid_4:y:0model/lstm/SelectV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
model/lstm/lstm_cell/Relu_2Relu%model/lstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ґ
model/lstm/lstm_cell/mul_4Mul"model/lstm/lstm_cell/Sigmoid_3:y:0)model/lstm/lstm_cell/Relu_2:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Х
model/lstm/lstm_cell/add_3AddV2model/lstm/lstm_cell/mul_3:z:0model/lstm/lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€В
model/lstm/lstm_cell/Sigmoid_5Sigmoid%model/lstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€u
model/lstm/lstm_cell/Relu_3Relumodel/lstm/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
model/lstm/lstm_cell/mul_5Mul"model/lstm/lstm_cell/Sigmoid_5:y:0)model/lstm/lstm_cell/Relu_3:activations:0*
T0*'
_output_shapes
:€€€€€€€€€l
model/lstm/Tile_3/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Р
model/lstm/Tile_3Tilemodel/lstm/unstack_1:output:1$model/lstm/Tile_3/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€≠
model/lstm/SelectV2_3SelectV2model/lstm/Tile_3:output:0model/lstm/lstm_cell/mul_5:z:0model/lstm/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
model/lstm/Tile_4/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Р
model/lstm/Tile_4Tilemodel/lstm/unstack_1:output:1$model/lstm/Tile_4/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€l
model/lstm/Tile_5/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Р
model/lstm/Tile_5Tilemodel/lstm/unstack_1:output:1$model/lstm/Tile_5/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€ѓ
model/lstm/SelectV2_4SelectV2model/lstm/Tile_4:output:0model/lstm/lstm_cell/mul_5:z:0model/lstm/SelectV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ѓ
model/lstm/SelectV2_5SelectV2model/lstm/Tile_5:output:0model/lstm/lstm_cell/add_3:z:0model/lstm/SelectV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€†
,model/lstm/lstm_cell/MatMul_4/ReadVariableOpReadVariableOp3model_lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0ђ
model/lstm/lstm_cell/MatMul_4MatMulmodel/lstm/unstack:output:24model/lstm/lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PҐ
,model/lstm/lstm_cell/MatMul_5/ReadVariableOpReadVariableOp5model_lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0ѓ
model/lstm/lstm_cell/MatMul_5MatMulmodel/lstm/SelectV2_4:output:04model/lstm/lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PІ
model/lstm/lstm_cell/add_4AddV2'model/lstm/lstm_cell/MatMul_4:product:0'model/lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€PЮ
-model/lstm/lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp4model_lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0≤
model/lstm/lstm_cell/BiasAdd_2BiasAddmodel/lstm/lstm_cell/add_4:z:05model/lstm/lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ph
&model/lstm/lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ы
model/lstm/lstm_cell/split_2Split/model/lstm/lstm_cell/split_2/split_dim:output:0'model/lstm/lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitВ
model/lstm/lstm_cell/Sigmoid_6Sigmoid%model/lstm/lstm_cell/split_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€В
model/lstm/lstm_cell/Sigmoid_7Sigmoid%model/lstm/lstm_cell/split_2:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ч
model/lstm/lstm_cell/mul_6Mul"model/lstm/lstm_cell/Sigmoid_7:y:0model/lstm/SelectV2_5:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
model/lstm/lstm_cell/Relu_4Relu%model/lstm/lstm_cell/split_2:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ґ
model/lstm/lstm_cell/mul_7Mul"model/lstm/lstm_cell/Sigmoid_6:y:0)model/lstm/lstm_cell/Relu_4:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Х
model/lstm/lstm_cell/add_5AddV2model/lstm/lstm_cell/mul_6:z:0model/lstm/lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€В
model/lstm/lstm_cell/Sigmoid_8Sigmoid%model/lstm/lstm_cell/split_2:output:3*
T0*'
_output_shapes
:€€€€€€€€€u
model/lstm/lstm_cell/Relu_5Relumodel/lstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
model/lstm/lstm_cell/mul_8Mul"model/lstm/lstm_cell/Sigmoid_8:y:0)model/lstm/lstm_cell/Relu_5:activations:0*
T0*'
_output_shapes
:€€€€€€€€€l
model/lstm/Tile_6/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Р
model/lstm/Tile_6Tilemodel/lstm/unstack_1:output:2$model/lstm/Tile_6/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€ѓ
model/lstm/SelectV2_6SelectV2model/lstm/Tile_6:output:0model/lstm/lstm_cell/mul_8:z:0model/lstm/SelectV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
model/lstm/Tile_7/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Р
model/lstm/Tile_7Tilemodel/lstm/unstack_1:output:2$model/lstm/Tile_7/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€l
model/lstm/Tile_8/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      Р
model/lstm/Tile_8Tilemodel/lstm/unstack_1:output:2$model/lstm/Tile_8/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€ѓ
model/lstm/SelectV2_7SelectV2model/lstm/Tile_7:output:0model/lstm/lstm_cell/mul_8:z:0model/lstm/SelectV2_4:output:0*
T0*'
_output_shapes
:€€€€€€€€€ѓ
model/lstm/SelectV2_8SelectV2model/lstm/Tile_8:output:0model/lstm/lstm_cell/add_5:z:0model/lstm/SelectV2_5:output:0*
T0*'
_output_shapes
:€€€€€€€€€w
model/lstm/stackPackmodel/lstm/SelectV2_6:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€p
model/lstm/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
model/lstm/transpose_2	Transposemodel/lstm/stack:output:0$model/lstm/transpose_2/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€f
model/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    _
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :∞
model/concatenate/concatConcatV2model/lstm/SelectV2_6:output:0input_2&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€PМ
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes

:P0*
dtype0Ь
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0К
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0Ъ
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0h
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€0™
2model/batch_normalization/batchnorm/ReadVariableOpReadVariableOp;model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0n
)model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≈
'model/batch_normalization/batchnorm/addAddV2:model/batch_normalization/batchnorm/ReadVariableOp:value:02model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:0Д
)model/batch_normalization/batchnorm/RsqrtRsqrt+model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:0≤
6model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0¬
'model/batch_normalization/batchnorm/mulMul-model/batch_normalization/batchnorm/Rsqrt:y:0>model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0ѓ
)model/batch_normalization/batchnorm/mul_1Mulmodel/dense/Relu:activations:0+model/batch_normalization/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Ѓ
4model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype0ј
)model/batch_normalization/batchnorm/mul_2Mul<model/batch_normalization/batchnorm/ReadVariableOp_1:value:0+model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:0Ѓ
4model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype0ј
'model/batch_normalization/batchnorm/subSub<model/batch_normalization/batchnorm/ReadVariableOp_2:value:0-model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:0ј
)model/batch_normalization/batchnorm/add_1AddV2-model/batch_normalization/batchnorm/mul_1:z:0+model/batch_normalization/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Г
model/dropout/IdentityIdentity-model/batch_normalization/batchnorm/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Р
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0Ю
model/dense_1/MatMulMatMulmodel/dropout/Identity:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€О
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0†
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€l
model/dense_1/ReluRelumodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
4model/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp=model_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
+model/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ћ
)model/batch_normalization_1/batchnorm/addAddV2<model/batch_normalization_1/batchnorm/ReadVariableOp:value:04model/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:И
+model/batch_normalization_1/batchnorm/RsqrtRsqrt-model/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:ґ
8model/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0»
)model/batch_normalization_1/batchnorm/mulMul/model/batch_normalization_1/batchnorm/Rsqrt:y:0@model/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:µ
+model/batch_normalization_1/batchnorm/mul_1Mul model/dense_1/Relu:activations:0-model/batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€≤
6model/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp?model_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0∆
+model/batch_normalization_1/batchnorm/mul_2Mul>model/batch_normalization_1/batchnorm/ReadVariableOp_1:value:0-model/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:≤
6model/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp?model_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0∆
)model/batch_normalization_1/batchnorm/subSub>model/batch_normalization_1/batchnorm/ReadVariableOp_2:value:0/model/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:∆
+model/batch_normalization_1/batchnorm/add_1AddV2/model/batch_normalization_1/batchnorm/mul_1:z:0-model/batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€З
model/dropout_1/IdentityIdentity/model/batch_normalization_1/batchnorm/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Р
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0†
model/dense_2/MatMulMatMul!model/dropout_1/Identity:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€О
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0†
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€l
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
4model/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp=model_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
+model/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:Ћ
)model/batch_normalization_2/batchnorm/addAddV2<model/batch_normalization_2/batchnorm/ReadVariableOp:value:04model/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:И
+model/batch_normalization_2/batchnorm/RsqrtRsqrt-model/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:ґ
8model/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0»
)model/batch_normalization_2/batchnorm/mulMul/model/batch_normalization_2/batchnorm/Rsqrt:y:0@model/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:µ
+model/batch_normalization_2/batchnorm/mul_1Mul model/dense_2/Relu:activations:0-model/batch_normalization_2/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€≤
6model/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp?model_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0∆
+model/batch_normalization_2/batchnorm/mul_2Mul>model/batch_normalization_2/batchnorm/ReadVariableOp_1:value:0-model/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:≤
6model/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp?model_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0∆
)model/batch_normalization_2/batchnorm/subSub>model/batch_normalization_2/batchnorm/ReadVariableOp_2:value:0/model/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:∆
+model/batch_normalization_2/batchnorm/add_1AddV2/model/batch_normalization_2/batchnorm/mul_1:z:0-model/batch_normalization_2/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€З
model/dropout_2/IdentityIdentity/model/batch_normalization_2/batchnorm/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Р
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0†
model/dense_3/MatMulMatMul!model/dropout_2/Identity:output:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€О
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0†
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
model/dense_3/SigmoidSigmoidmodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitymodel/dense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ј
NoOpNoOp3^model/batch_normalization/batchnorm/ReadVariableOp5^model/batch_normalization/batchnorm/ReadVariableOp_15^model/batch_normalization/batchnorm/ReadVariableOp_27^model/batch_normalization/batchnorm/mul/ReadVariableOp5^model/batch_normalization_1/batchnorm/ReadVariableOp7^model/batch_normalization_1/batchnorm/ReadVariableOp_17^model/batch_normalization_1/batchnorm/ReadVariableOp_29^model/batch_normalization_1/batchnorm/mul/ReadVariableOp5^model/batch_normalization_2/batchnorm/ReadVariableOp7^model/batch_normalization_2/batchnorm/ReadVariableOp_17^model/batch_normalization_2/batchnorm/ReadVariableOp_29^model/batch_normalization_2/batchnorm/mul/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp,^model/lstm/lstm_cell/BiasAdd/ReadVariableOp.^model/lstm/lstm_cell/BiasAdd_1/ReadVariableOp.^model/lstm/lstm_cell/BiasAdd_2/ReadVariableOp+^model/lstm/lstm_cell/MatMul/ReadVariableOp-^model/lstm/lstm_cell/MatMul_1/ReadVariableOp-^model/lstm/lstm_cell/MatMul_2/ReadVariableOp-^model/lstm/lstm_cell/MatMul_3/ReadVariableOp-^model/lstm/lstm_cell/MatMul_4/ReadVariableOp-^model/lstm/lstm_cell/MatMul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 2h
2model/batch_normalization/batchnorm/ReadVariableOp2model/batch_normalization/batchnorm/ReadVariableOp2l
4model/batch_normalization/batchnorm/ReadVariableOp_14model/batch_normalization/batchnorm/ReadVariableOp_12l
4model/batch_normalization/batchnorm/ReadVariableOp_24model/batch_normalization/batchnorm/ReadVariableOp_22p
6model/batch_normalization/batchnorm/mul/ReadVariableOp6model/batch_normalization/batchnorm/mul/ReadVariableOp2l
4model/batch_normalization_1/batchnorm/ReadVariableOp4model/batch_normalization_1/batchnorm/ReadVariableOp2p
6model/batch_normalization_1/batchnorm/ReadVariableOp_16model/batch_normalization_1/batchnorm/ReadVariableOp_12p
6model/batch_normalization_1/batchnorm/ReadVariableOp_26model/batch_normalization_1/batchnorm/ReadVariableOp_22t
8model/batch_normalization_1/batchnorm/mul/ReadVariableOp8model/batch_normalization_1/batchnorm/mul/ReadVariableOp2l
4model/batch_normalization_2/batchnorm/ReadVariableOp4model/batch_normalization_2/batchnorm/ReadVariableOp2p
6model/batch_normalization_2/batchnorm/ReadVariableOp_16model/batch_normalization_2/batchnorm/ReadVariableOp_12p
6model/batch_normalization_2/batchnorm/ReadVariableOp_26model/batch_normalization_2/batchnorm/ReadVariableOp_22t
8model/batch_normalization_2/batchnorm/mul/ReadVariableOp8model/batch_normalization_2/batchnorm/mul/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2Z
+model/lstm/lstm_cell/BiasAdd/ReadVariableOp+model/lstm/lstm_cell/BiasAdd/ReadVariableOp2^
-model/lstm/lstm_cell/BiasAdd_1/ReadVariableOp-model/lstm/lstm_cell/BiasAdd_1/ReadVariableOp2^
-model/lstm/lstm_cell/BiasAdd_2/ReadVariableOp-model/lstm/lstm_cell/BiasAdd_2/ReadVariableOp2X
*model/lstm/lstm_cell/MatMul/ReadVariableOp*model/lstm/lstm_cell/MatMul/ReadVariableOp2\
,model/lstm/lstm_cell/MatMul_1/ReadVariableOp,model/lstm/lstm_cell/MatMul_1/ReadVariableOp2\
,model/lstm/lstm_cell/MatMul_2/ReadVariableOp,model/lstm/lstm_cell/MatMul_2/ReadVariableOp2\
,model/lstm/lstm_cell/MatMul_3/ReadVariableOp,model/lstm/lstm_cell/MatMul_3/ReadVariableOp2\
,model/lstm/lstm_cell/MatMul_4/ReadVariableOp,model/lstm/lstm_cell/MatMul_4/ReadVariableOp2\
,model/lstm/lstm_cell/MatMul_5/ReadVariableOp,model/lstm/lstm_cell/MatMul_5/ReadVariableOp:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€<
!
_user_specified_name	input_2
≤
I
-__inference_dropout_1_layer_call_fn_287683010

inputs
identityј
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_287681176`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
џ
f
H__inference_dropout_2_layer_call_and_return_conditional_losses_287683147

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ƒ
—
)__inference_model_layer_call_fn_287681740
input_1
input_2
unknown:P
	unknown_0:P
	unknown_1:P
	unknown_2:P0
	unknown_3:0
	unknown_4:0
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:
identityИҐStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*3
_read_only_resource_inputs
	
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_287681639o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€<
!
_user_specified_name	input_2
—
≥
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287683098

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
≥
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287680918

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ї
t
J__inference_concatenate_layer_call_and_return_conditional_losses_287681110

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€PW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€<:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
О

g
H__inference_dropout_1_layer_call_and_return_conditional_losses_287681341

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
±
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287682844

inputs/
!batchnorm_readvariableop_resource:03
%batchnorm_mul_readvariableop_resource:01
#batchnorm_readvariableop_1_resource:01
#batchnorm_readvariableop_2_resource:0
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:0P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:0~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:0z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:0r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
чZ
Ў
C__inference_lstm_layer_call_and_return_conditional_losses_287682765

inputs:
(lstm_cell_matmul_readvariableop_resource:P<
*lstm_cell_matmul_1_readvariableop_resource:P7
)lstm_cell_biasadd_readvariableop_resource:P
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐ"lstm_cell/BiasAdd_1/ReadVariableOpҐ"lstm_cell/BiasAdd_2/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐ!lstm_cell/MatMul_2/ReadVariableOpҐ!lstm_cell/MatMul_3/ReadVariableOpҐ!lstm_cell/MatMul_4/ReadVariableOpҐ!lstm_cell/MatMul_5/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskГ
unstackUnpacktranspose:y:0*
T0*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numИ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0З
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Й
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PВ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0Л
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€К
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Л
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0О
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:€€€€€€€€€PИ
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0С
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€v
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm_cell/Relu_2Relulstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Relu_2:activations:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_3Relulstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Relu_3:activations:0*
T0*'
_output_shapes
:€€€€€€€€€К
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Л
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0О
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€PИ
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0С
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:€€€€€€€€€v
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm_cell/Relu_4Relulstm_cell/split_2:output:2*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Relu_4:activations:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_5Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Relu_5:activations:0*
T0*'
_output_shapes
:€€€€€€€€€a
stackPacklstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:€€€€€€€€€e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Й
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
√
v
J__inference_concatenate_layer_call_and_return_conditional_losses_287682778
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€PW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€<:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs_1
аt
ъ
"__inference__traced_save_287683386
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop;
7savev2_adam_m_lstm_lstm_cell_kernel_read_readvariableop;
7savev2_adam_v_lstm_lstm_cell_kernel_read_readvariableopE
Asavev2_adam_m_lstm_lstm_cell_recurrent_kernel_read_readvariableopE
Asavev2_adam_v_lstm_lstm_cell_recurrent_kernel_read_readvariableop9
5savev2_adam_m_lstm_lstm_cell_bias_read_readvariableop9
5savev2_adam_v_lstm_lstm_cell_bias_read_readvariableop2
.savev2_adam_m_dense_kernel_read_readvariableop2
.savev2_adam_v_dense_kernel_read_readvariableop0
,savev2_adam_m_dense_bias_read_readvariableop0
,savev2_adam_v_dense_bias_read_readvariableop?
;savev2_adam_m_batch_normalization_gamma_read_readvariableop?
;savev2_adam_v_batch_normalization_gamma_read_readvariableop>
:savev2_adam_m_batch_normalization_beta_read_readvariableop>
:savev2_adam_v_batch_normalization_beta_read_readvariableop4
0savev2_adam_m_dense_1_kernel_read_readvariableop4
0savev2_adam_v_dense_1_kernel_read_readvariableop2
.savev2_adam_m_dense_1_bias_read_readvariableop2
.savev2_adam_v_dense_1_bias_read_readvariableopA
=savev2_adam_m_batch_normalization_1_gamma_read_readvariableopA
=savev2_adam_v_batch_normalization_1_gamma_read_readvariableop@
<savev2_adam_m_batch_normalization_1_beta_read_readvariableop@
<savev2_adam_v_batch_normalization_1_beta_read_readvariableop4
0savev2_adam_m_dense_2_kernel_read_readvariableop4
0savev2_adam_v_dense_2_kernel_read_readvariableop2
.savev2_adam_m_dense_2_bias_read_readvariableop2
.savev2_adam_v_dense_2_bias_read_readvariableopA
=savev2_adam_m_batch_normalization_2_gamma_read_readvariableopA
=savev2_adam_v_batch_normalization_2_gamma_read_readvariableop@
<savev2_adam_m_batch_normalization_2_beta_read_readvariableop@
<savev2_adam_v_batch_normalization_2_beta_read_readvariableop4
0savev2_adam_m_dense_3_kernel_read_readvariableop4
0savev2_adam_v_dense_3_kernel_read_readvariableop2
.savev2_adam_m_dense_3_bias_read_readvariableop2
.savev2_adam_v_dense_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ≠
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*÷
valueћB…>B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHм
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*С
valueЗBД>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ђ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop7savev2_adam_m_lstm_lstm_cell_kernel_read_readvariableop7savev2_adam_v_lstm_lstm_cell_kernel_read_readvariableopAsavev2_adam_m_lstm_lstm_cell_recurrent_kernel_read_readvariableopAsavev2_adam_v_lstm_lstm_cell_recurrent_kernel_read_readvariableop5savev2_adam_m_lstm_lstm_cell_bias_read_readvariableop5savev2_adam_v_lstm_lstm_cell_bias_read_readvariableop.savev2_adam_m_dense_kernel_read_readvariableop.savev2_adam_v_dense_kernel_read_readvariableop,savev2_adam_m_dense_bias_read_readvariableop,savev2_adam_v_dense_bias_read_readvariableop;savev2_adam_m_batch_normalization_gamma_read_readvariableop;savev2_adam_v_batch_normalization_gamma_read_readvariableop:savev2_adam_m_batch_normalization_beta_read_readvariableop:savev2_adam_v_batch_normalization_beta_read_readvariableop0savev2_adam_m_dense_1_kernel_read_readvariableop0savev2_adam_v_dense_1_kernel_read_readvariableop.savev2_adam_m_dense_1_bias_read_readvariableop.savev2_adam_v_dense_1_bias_read_readvariableop=savev2_adam_m_batch_normalization_1_gamma_read_readvariableop=savev2_adam_v_batch_normalization_1_gamma_read_readvariableop<savev2_adam_m_batch_normalization_1_beta_read_readvariableop<savev2_adam_v_batch_normalization_1_beta_read_readvariableop0savev2_adam_m_dense_2_kernel_read_readvariableop0savev2_adam_v_dense_2_kernel_read_readvariableop.savev2_adam_m_dense_2_bias_read_readvariableop.savev2_adam_v_dense_2_bias_read_readvariableop=savev2_adam_m_batch_normalization_2_gamma_read_readvariableop=savev2_adam_v_batch_normalization_2_gamma_read_readvariableop<savev2_adam_m_batch_normalization_2_beta_read_readvariableop<savev2_adam_v_batch_normalization_2_beta_read_readvariableop0savev2_adam_m_dense_3_kernel_read_readvariableop0savev2_adam_v_dense_3_kernel_read_readvariableop.savev2_adam_m_dense_3_bias_read_readvariableop.savev2_adam_v_dense_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *L
dtypesB
@2>	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*њ
_input_shapes≠
™: :P0:0:0:0:0:0:0::::::::::::::P:P:P: : :P:P:P:P:P:P:P0:P0:0:0:0:0:0:0:0:0::::::::::::::::::: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:P0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0: 

_output_shapes
:0:$ 

_output_shapes

:0: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:P:$ 

_output_shapes

:P: 

_output_shapes
:P:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:P:$ 

_output_shapes

:P:$ 

_output_shapes

:P:$ 

_output_shapes

:P: 

_output_shapes
:P: 

_output_shapes
:P:$  

_output_shapes

:P0:$! 

_output_shapes

:P0: "

_output_shapes
:0: #

_output_shapes
:0: $

_output_shapes
:0: %

_output_shapes
:0: &

_output_shapes
:0: '

_output_shapes
:0:$( 

_output_shapes

:0:$) 

_output_shapes

:0: *

_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
:: .

_output_shapes
:: /

_output_shapes
::$0 

_output_shapes

::$1 

_output_shapes

:: 2

_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
:: 6

_output_shapes
:: 7

_output_shapes
::$8 

_output_shapes

::$9 

_output_shapes

:: :

_output_shapes
:: ;

_output_shapes
::<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: 
–
”
)__inference_model_layer_call_fn_287681976
inputs_0
inputs_1
unknown:P
	unknown_0:P
	unknown_1:P
	unknown_2:P0
	unknown_3:0
	unknown_4:0
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *M
fHRF
D__inference_model_layer_call_and_return_conditional_losses_287681229o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs_1
џ
f
H__inference_dropout_2_layer_call_and_return_conditional_losses_287681209

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Х%
н
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287680883

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Х%
н
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287680965

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
РГ
м'
%__inference__traced_restore_287683579
file_prefix/
assignvariableop_dense_kernel:P0+
assignvariableop_1_dense_bias:0:
,assignvariableop_2_batch_normalization_gamma:09
+assignvariableop_3_batch_normalization_beta:0@
2assignvariableop_4_batch_normalization_moving_mean:0D
6assignvariableop_5_batch_normalization_moving_variance:03
!assignvariableop_6_dense_1_kernel:0-
assignvariableop_7_dense_1_bias:<
.assignvariableop_8_batch_normalization_1_gamma:;
-assignvariableop_9_batch_normalization_1_beta:C
5assignvariableop_10_batch_normalization_1_moving_mean:G
9assignvariableop_11_batch_normalization_1_moving_variance:4
"assignvariableop_12_dense_2_kernel:.
 assignvariableop_13_dense_2_bias:=
/assignvariableop_14_batch_normalization_2_gamma:<
.assignvariableop_15_batch_normalization_2_beta:C
5assignvariableop_16_batch_normalization_2_moving_mean:G
9assignvariableop_17_batch_normalization_2_moving_variance:4
"assignvariableop_18_dense_3_kernel:.
 assignvariableop_19_dense_3_bias:;
)assignvariableop_20_lstm_lstm_cell_kernel:PE
3assignvariableop_21_lstm_lstm_cell_recurrent_kernel:P5
'assignvariableop_22_lstm_lstm_cell_bias:P'
assignvariableop_23_iteration:	 +
!assignvariableop_24_learning_rate: B
0assignvariableop_25_adam_m_lstm_lstm_cell_kernel:PB
0assignvariableop_26_adam_v_lstm_lstm_cell_kernel:PL
:assignvariableop_27_adam_m_lstm_lstm_cell_recurrent_kernel:PL
:assignvariableop_28_adam_v_lstm_lstm_cell_recurrent_kernel:P<
.assignvariableop_29_adam_m_lstm_lstm_cell_bias:P<
.assignvariableop_30_adam_v_lstm_lstm_cell_bias:P9
'assignvariableop_31_adam_m_dense_kernel:P09
'assignvariableop_32_adam_v_dense_kernel:P03
%assignvariableop_33_adam_m_dense_bias:03
%assignvariableop_34_adam_v_dense_bias:0B
4assignvariableop_35_adam_m_batch_normalization_gamma:0B
4assignvariableop_36_adam_v_batch_normalization_gamma:0A
3assignvariableop_37_adam_m_batch_normalization_beta:0A
3assignvariableop_38_adam_v_batch_normalization_beta:0;
)assignvariableop_39_adam_m_dense_1_kernel:0;
)assignvariableop_40_adam_v_dense_1_kernel:05
'assignvariableop_41_adam_m_dense_1_bias:5
'assignvariableop_42_adam_v_dense_1_bias:D
6assignvariableop_43_adam_m_batch_normalization_1_gamma:D
6assignvariableop_44_adam_v_batch_normalization_1_gamma:C
5assignvariableop_45_adam_m_batch_normalization_1_beta:C
5assignvariableop_46_adam_v_batch_normalization_1_beta:;
)assignvariableop_47_adam_m_dense_2_kernel:;
)assignvariableop_48_adam_v_dense_2_kernel:5
'assignvariableop_49_adam_m_dense_2_bias:5
'assignvariableop_50_adam_v_dense_2_bias:D
6assignvariableop_51_adam_m_batch_normalization_2_gamma:D
6assignvariableop_52_adam_v_batch_normalization_2_gamma:C
5assignvariableop_53_adam_m_batch_normalization_2_beta:C
5assignvariableop_54_adam_v_batch_normalization_2_beta:;
)assignvariableop_55_adam_m_dense_3_kernel:;
)assignvariableop_56_adam_v_dense_3_kernel:5
'assignvariableop_57_adam_m_dense_3_bias:5
'assignvariableop_58_adam_v_dense_3_bias:#
assignvariableop_59_total: #
assignvariableop_60_count: 
identity_62ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9∞
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*÷
valueћB…>B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHп
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*С
valueЗBД>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B „
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*О
_output_shapesы
ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_20AssignVariableOp)assignvariableop_20_lstm_lstm_cell_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_21AssignVariableOp3assignvariableop_21_lstm_lstm_cell_recurrent_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_22AssignVariableOp'assignvariableop_22_lstm_lstm_cell_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_23AssignVariableOpassignvariableop_23_iterationIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_24AssignVariableOp!assignvariableop_24_learning_rateIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_25AssignVariableOp0assignvariableop_25_adam_m_lstm_lstm_cell_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_v_lstm_lstm_cell_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_27AssignVariableOp:assignvariableop_27_adam_m_lstm_lstm_cell_recurrent_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_28AssignVariableOp:assignvariableop_28_adam_v_lstm_lstm_cell_recurrent_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_m_lstm_lstm_cell_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adam_v_lstm_lstm_cell_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_31AssignVariableOp'assignvariableop_31_adam_m_dense_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_v_dense_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_33AssignVariableOp%assignvariableop_33_adam_m_dense_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_v_dense_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_35AssignVariableOp4assignvariableop_35_adam_m_batch_normalization_gammaIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_v_batch_normalization_gammaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_37AssignVariableOp3assignvariableop_37_adam_m_batch_normalization_betaIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_38AssignVariableOp3assignvariableop_38_adam_v_batch_normalization_betaIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_m_dense_1_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_v_dense_1_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_m_dense_1_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_v_dense_1_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_m_batch_normalization_1_gammaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_v_batch_normalization_1_gammaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_m_batch_normalization_1_betaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_46AssignVariableOp5assignvariableop_46_adam_v_batch_normalization_1_betaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_m_dense_2_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_v_dense_2_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_m_dense_2_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_v_dense_2_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_m_batch_normalization_2_gammaIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_v_batch_normalization_2_gammaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_53AssignVariableOp5assignvariableop_53_adam_m_batch_normalization_2_betaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_54AssignVariableOp5assignvariableop_54_adam_v_batch_normalization_2_betaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_m_dense_3_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_v_dense_3_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_57AssignVariableOp'assignvariableop_57_adam_m_dense_3_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_v_dense_3_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_59AssignVariableOpassignvariableop_59_totalIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_60AssignVariableOpassignvariableop_60_countIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Н
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_62IdentityIdentity_61:output:0^NoOp_1*
T0*
_output_shapes
: ъ

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_62Identity_62:output:0*П
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
У%
л
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287680801

inputs5
'assignmovingavg_readvariableop_resource:07
)assignmovingavg_1_readvariableop_resource:03
%batchnorm_mul_readvariableop_resource:0/
!batchnorm_readvariableop_resource:0
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:0З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€0l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:0*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:0x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:0ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:0*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:0~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:0і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:0P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:0~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:0v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:0r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
чZ
Ў
C__inference_lstm_layer_call_and_return_conditional_losses_287681505

inputs:
(lstm_cell_matmul_readvariableop_resource:P<
*lstm_cell_matmul_1_readvariableop_resource:P7
)lstm_cell_biasadd_readvariableop_resource:P
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐ"lstm_cell/BiasAdd_1/ReadVariableOpҐ"lstm_cell/BiasAdd_2/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐ!lstm_cell/MatMul_2/ReadVariableOpҐ!lstm_cell/MatMul_3/ReadVariableOpҐ!lstm_cell/MatMul_4/ReadVariableOpҐ!lstm_cell/MatMul_5/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskГ
unstackUnpacktranspose:y:0*
T0*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numИ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0З
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Й
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PВ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0Л
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€К
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Л
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0О
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:€€€€€€€€€PИ
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0С
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€v
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm_cell/Relu_2Relulstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Relu_2:activations:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_3Relulstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Relu_3:activations:0*
T0*'
_output_shapes
:€€€€€€€€€К
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Л
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0О
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€PИ
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0С
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:€€€€€€€€€v
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm_cell/Relu_4Relulstm_cell/split_2:output:2*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Relu_4:activations:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_5Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Relu_5:activations:0*
T0*'
_output_shapes
:€€€€€€€€€a
stackPacklstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:€€€€€€€€€e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Й
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
±
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287680754

inputs/
!batchnorm_readvariableop_resource:03
%batchnorm_mul_readvariableop_resource:01
#batchnorm_readvariableop_1_resource:01
#batchnorm_readvariableop_2_resource:0
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:0P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:0~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:0z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:0r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
Д
f
-__inference_dropout_1_layer_call_fn_287683015

inputs
identityИҐStatefulPartitionedCall–
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_287681341o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
®
ѕ
'__inference_signature_wrapper_287681924
input_1
input_2
unknown:P
	unknown_0:P
	unknown_1:P
	unknown_2:P0
	unknown_3:0
	unknown_4:0
	unknown_5:0
	unknown_6:0
	unknown_7:0
	unknown_8:0
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *-
f(R&
$__inference__wrapped_model_287680730o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€<
!
_user_specified_name	input_2
џ
f
H__inference_dropout_1_layer_call_and_return_conditional_losses_287681176

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
еш
•
D__inference_model_layer_call_and_return_conditional_losses_287682249
inputs_0
inputs_1?
-lstm_lstm_cell_matmul_readvariableop_resource:PA
/lstm_lstm_cell_matmul_1_readvariableop_resource:P<
.lstm_lstm_cell_biasadd_readvariableop_resource:P6
$dense_matmul_readvariableop_resource:P03
%dense_biasadd_readvariableop_resource:0C
5batch_normalization_batchnorm_readvariableop_resource:0G
9batch_normalization_batchnorm_mul_readvariableop_resource:0E
7batch_normalization_batchnorm_readvariableop_1_resource:0E
7batch_normalization_batchnorm_readvariableop_2_resource:08
&dense_1_matmul_readvariableop_resource:05
'dense_1_biasadd_readvariableop_resource:E
7batch_normalization_1_batchnorm_readvariableop_resource:I
;batch_normalization_1_batchnorm_mul_readvariableop_resource:G
9batch_normalization_1_batchnorm_readvariableop_1_resource:G
9batch_normalization_1_batchnorm_readvariableop_2_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:E
7batch_normalization_2_batchnorm_readvariableop_resource:I
;batch_normalization_2_batchnorm_mul_readvariableop_resource:G
9batch_normalization_2_batchnorm_readvariableop_1_resource:G
9batch_normalization_2_batchnorm_readvariableop_2_resource:8
&dense_3_matmul_readvariableop_resource:5
'dense_3_biasadd_readvariableop_resource:
identityИҐ,batch_normalization/batchnorm/ReadVariableOpҐ.batch_normalization/batchnorm/ReadVariableOp_1Ґ.batch_normalization/batchnorm/ReadVariableOp_2Ґ0batch_normalization/batchnorm/mul/ReadVariableOpҐ.batch_normalization_1/batchnorm/ReadVariableOpҐ0batch_normalization_1/batchnorm/ReadVariableOp_1Ґ0batch_normalization_1/batchnorm/ReadVariableOp_2Ґ2batch_normalization_1/batchnorm/mul/ReadVariableOpҐ.batch_normalization_2/batchnorm/ReadVariableOpҐ0batch_normalization_2/batchnorm/ReadVariableOp_1Ґ0batch_normalization_2/batchnorm/ReadVariableOp_2Ґ2batch_normalization_2/batchnorm/mul/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpҐ%lstm/lstm_cell/BiasAdd/ReadVariableOpҐ'lstm/lstm_cell/BiasAdd_1/ReadVariableOpҐ'lstm/lstm_cell/BiasAdd_2/ReadVariableOpҐ$lstm/lstm_cell/MatMul/ReadVariableOpҐ&lstm/lstm_cell/MatMul_1/ReadVariableOpҐ&lstm/lstm_cell/MatMul_2/ReadVariableOpҐ&lstm/lstm_cell/MatMul_3/ReadVariableOpҐ&lstm/lstm_cell/MatMul_4/ReadVariableOpҐ&lstm/lstm_cell/MatMul_5/ReadVariableOpW
masking/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањy
masking/NotEqualNotEqualinputs_0masking/NotEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€h
masking/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€О
masking/AnyAnymasking/NotEqual:z:0&masking/Any/reduction_indices:output:0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(o
masking/CastCastmasking/Any:output:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€d
masking/mulMulinputs_0masking/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€В
masking/SqueezeSqueezemasking/Any:output:0*
T0
*'
_output_shapes
:€€€€€€€€€*
squeeze_dims

€€€€€€€€€I

lstm/ShapeShapemasking/mul:z:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :В
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ж
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          А
lstm/transpose	Transposemasking/mul:z:0lstm/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
lstm/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Л
lstm/ExpandDims
ExpandDimsmasking/Squeeze:output:0lstm/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:€€€€€€€€€j
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
lstm/transpose_1	Transposelstm/ExpandDims:output:0lstm/transpose_1/perm:output:0*
T0
*+
_output_shapes
:€€€€€€€€€Н
lstm/unstackUnpacklstm/transpose:y:0*
T0*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numС
lstm/unstack_1Unpacklstm/transpose_1:y:0*
T0
*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numТ
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Ц
lstm/lstm_cell/MatMulMatMullstm/unstack:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЦ
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Ш
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PС
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€PР
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0Ъ
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitr
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€А
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm/lstm_cell/ReluRelulstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€М
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€i
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      z
	lstm/TileTilelstm/unstack_1:output:0lstm/Tile/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€h
lstm/zeros_like	ZerosLikelstm/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€О
lstm/SelectV2SelectV2lstm/Tile:output:0lstm/lstm_cell/mul_2:z:0lstm/zeros_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_1Tilelstm/unstack_1:output:0lstm/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_2Tilelstm/unstack_1:output:0lstm/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Т
lstm/SelectV2_1SelectV2lstm/Tile_1:output:0lstm/lstm_cell/mul_2:z:0lstm/zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
lstm/SelectV2_2SelectV2lstm/Tile_2:output:0lstm/lstm_cell/add_1:z:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
&lstm/lstm_cell/MatMul_2/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Ъ
lstm/lstm_cell/MatMul_2MatMullstm/unstack:output:1.lstm/lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЦ
&lstm/lstm_cell/MatMul_3/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Э
lstm/lstm_cell/MatMul_3MatMullstm/SelectV2_1:output:0.lstm/lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PХ
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/MatMul_2:product:0!lstm/lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:€€€€€€€€€PТ
'lstm/lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0†
lstm/lstm_cell/BiasAdd_1BiasAddlstm/lstm_cell/add_2:z:0/lstm/lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Pb
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0!lstm/lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitv
lstm/lstm_cell/Sigmoid_3Sigmoidlstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
lstm/lstm_cell/Sigmoid_4Sigmoidlstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€Е
lstm/lstm_cell/mul_3Mullstm/lstm_cell/Sigmoid_4:y:0lstm/SelectV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm/lstm_cell/Relu_2Relulstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_4Mullstm/lstm_cell/Sigmoid_3:y:0#lstm/lstm_cell/Relu_2:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Г
lstm/lstm_cell/add_3AddV2lstm/lstm_cell/mul_3:z:0lstm/lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
lstm/lstm_cell/Sigmoid_5Sigmoidlstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€i
lstm/lstm_cell/Relu_3Relulstm/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_5Mullstm/lstm_cell/Sigmoid_5:y:0#lstm/lstm_cell/Relu_3:activations:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_3/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_3Tilelstm/unstack_1:output:1lstm/Tile_3/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Х
lstm/SelectV2_3SelectV2lstm/Tile_3:output:0lstm/lstm_cell/mul_5:z:0lstm/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_4/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_4Tilelstm/unstack_1:output:1lstm/Tile_4/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_5/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_5Tilelstm/unstack_1:output:1lstm/Tile_5/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_4SelectV2lstm/Tile_4:output:0lstm/lstm_cell/mul_5:z:0lstm/SelectV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_5SelectV2lstm/Tile_5:output:0lstm/lstm_cell/add_3:z:0lstm/SelectV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
&lstm/lstm_cell/MatMul_4/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Ъ
lstm/lstm_cell/MatMul_4MatMullstm/unstack:output:2.lstm/lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЦ
&lstm/lstm_cell/MatMul_5/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Э
lstm/lstm_cell/MatMul_5MatMullstm/SelectV2_4:output:0.lstm/lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PХ
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/MatMul_4:product:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€PТ
'lstm/lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0†
lstm/lstm_cell/BiasAdd_2BiasAddlstm/lstm_cell/add_4:z:0/lstm/lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Pb
 lstm/lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
lstm/lstm_cell/split_2Split)lstm/lstm_cell/split_2/split_dim:output:0!lstm/lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitv
lstm/lstm_cell/Sigmoid_6Sigmoidlstm/lstm_cell/split_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
lstm/lstm_cell/Sigmoid_7Sigmoidlstm/lstm_cell/split_2:output:1*
T0*'
_output_shapes
:€€€€€€€€€Е
lstm/lstm_cell/mul_6Mullstm/lstm_cell/Sigmoid_7:y:0lstm/SelectV2_5:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm/lstm_cell/Relu_4Relulstm/lstm_cell/split_2:output:2*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_7Mullstm/lstm_cell/Sigmoid_6:y:0#lstm/lstm_cell/Relu_4:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Г
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_6:z:0lstm/lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
lstm/lstm_cell/Sigmoid_8Sigmoidlstm/lstm_cell/split_2:output:3*
T0*'
_output_shapes
:€€€€€€€€€i
lstm/lstm_cell/Relu_5Relulstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_8Mullstm/lstm_cell/Sigmoid_8:y:0#lstm/lstm_cell/Relu_5:activations:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_6/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_6Tilelstm/unstack_1:output:2lstm/Tile_6/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_6SelectV2lstm/Tile_6:output:0lstm/lstm_cell/mul_8:z:0lstm/SelectV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_7/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_7Tilelstm/unstack_1:output:2lstm/Tile_7/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_8/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_8Tilelstm/unstack_1:output:2lstm/Tile_8/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_7SelectV2lstm/Tile_7:output:0lstm/lstm_cell/mul_8:z:0lstm/SelectV2_4:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_8SelectV2lstm/Tile_8:output:0lstm/lstm_cell/add_5:z:0lstm/SelectV2_5:output:0*
T0*'
_output_shapes
:€€€€€€€€€k

lstm/stackPacklstm/SelectV2_6:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€j
lstm/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          И
lstm/transpose_2	Transposelstm/stack:output:0lstm/transpose_2/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Я
concatenate/concatConcatV2lstm/SelectV2_6:output:0inputs_1 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€PА
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:P0*
dtype0К
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€0Ю
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:0x
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:0¶
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0∞
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0Э
#batch_normalization/batchnorm/mul_1Muldense/Relu:activations:0%batch_normalization/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Ґ
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
:0*
dtype0Ѓ
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:0Ґ
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
:0*
dtype0Ѓ
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:0Ѓ
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0w
dropout/IdentityIdentity'batch_normalization/batchnorm/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0М
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:є
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:£
%batch_normalization_1/batchnorm/mul_1Muldense_1/Relu:activations:0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€¶
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:¶
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:і
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€{
dropout_1/IdentityIdentity)batch_normalization_1/batchnorm/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0О
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:є
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:£
%batch_normalization_2/batchnorm/mul_1Muldense_2/Relu:activations:0'batch_normalization_2/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€¶
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:¶
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:і
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€{
dropout_2/IdentityIdentity)batch_normalization_2/batchnorm/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0О
dense_3/MatMulMatMuldropout_2/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Т

NoOpNoOp-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp(^lstm/lstm_cell/BiasAdd_1/ReadVariableOp(^lstm/lstm_cell/BiasAdd_2/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp'^lstm/lstm_cell/MatMul_2/ReadVariableOp'^lstm/lstm_cell/MatMul_3/ReadVariableOp'^lstm/lstm_cell/MatMul_4/ReadVariableOp'^lstm/lstm_cell/MatMul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2R
'lstm/lstm_cell/BiasAdd_1/ReadVariableOp'lstm/lstm_cell/BiasAdd_1/ReadVariableOp2R
'lstm/lstm_cell/BiasAdd_2/ReadVariableOp'lstm/lstm_cell/BiasAdd_2/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2P
&lstm/lstm_cell/MatMul_2/ReadVariableOp&lstm/lstm_cell/MatMul_2/ReadVariableOp2P
&lstm/lstm_cell/MatMul_3/ReadVariableOp&lstm/lstm_cell/MatMul_3/ReadVariableOp2P
&lstm/lstm_cell/MatMul_4/ReadVariableOp&lstm/lstm_cell/MatMul_4/ReadVariableOp2P
&lstm/lstm_cell/MatMul_5/ReadVariableOp&lstm/lstm_cell/MatMul_5/ReadVariableOp:U Q
+
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs_1
Э

ч
F__inference_dense_1_layer_call_and_return_conditional_losses_287682925

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
≤
I
-__inference_dropout_2_layer_call_fn_287683137

inputs
identityј
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_2_layer_call_and_return_conditional_losses_287681209`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Х%
н
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287683132

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ї
‘
9__inference_batch_normalization_1_layer_call_fn_287682938

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287680836o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Э

ч
F__inference_dense_2_layer_call_and_return_conditional_losses_287681189

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ў
d
F__inference_dropout_layer_call_and_return_conditional_losses_287682893

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€0[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€0:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
Э

ч
F__inference_dense_1_layer_call_and_return_conditional_losses_287681156

inputs0
matmul_readvariableop_resource:0-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
µ
“
7__inference_batch_normalization_layer_call_fn_287682824

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287680801o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
О№
”
D__inference_model_layer_call_and_return_conditional_losses_287682533
inputs_0
inputs_1?
-lstm_lstm_cell_matmul_readvariableop_resource:PA
/lstm_lstm_cell_matmul_1_readvariableop_resource:P<
.lstm_lstm_cell_biasadd_readvariableop_resource:P6
$dense_matmul_readvariableop_resource:P03
%dense_biasadd_readvariableop_resource:0I
;batch_normalization_assignmovingavg_readvariableop_resource:0K
=batch_normalization_assignmovingavg_1_readvariableop_resource:0G
9batch_normalization_batchnorm_mul_readvariableop_resource:0C
5batch_normalization_batchnorm_readvariableop_resource:08
&dense_1_matmul_readvariableop_resource:05
'dense_1_biasadd_readvariableop_resource:K
=batch_normalization_1_assignmovingavg_readvariableop_resource:M
?batch_normalization_1_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_1_batchnorm_mul_readvariableop_resource:E
7batch_normalization_1_batchnorm_readvariableop_resource:8
&dense_2_matmul_readvariableop_resource:5
'dense_2_biasadd_readvariableop_resource:K
=batch_normalization_2_assignmovingavg_readvariableop_resource:M
?batch_normalization_2_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_2_batchnorm_mul_readvariableop_resource:E
7batch_normalization_2_batchnorm_readvariableop_resource:8
&dense_3_matmul_readvariableop_resource:5
'dense_3_biasadd_readvariableop_resource:
identityИҐ#batch_normalization/AssignMovingAvgҐ2batch_normalization/AssignMovingAvg/ReadVariableOpҐ%batch_normalization/AssignMovingAvg_1Ґ4batch_normalization/AssignMovingAvg_1/ReadVariableOpҐ,batch_normalization/batchnorm/ReadVariableOpҐ0batch_normalization/batchnorm/mul/ReadVariableOpҐ%batch_normalization_1/AssignMovingAvgҐ4batch_normalization_1/AssignMovingAvg/ReadVariableOpҐ'batch_normalization_1/AssignMovingAvg_1Ґ6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpҐ.batch_normalization_1/batchnorm/ReadVariableOpҐ2batch_normalization_1/batchnorm/mul/ReadVariableOpҐ%batch_normalization_2/AssignMovingAvgҐ4batch_normalization_2/AssignMovingAvg/ReadVariableOpҐ'batch_normalization_2/AssignMovingAvg_1Ґ6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpҐ.batch_normalization_2/batchnorm/ReadVariableOpҐ2batch_normalization_2/batchnorm/mul/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐdense_3/MatMul/ReadVariableOpҐ%lstm/lstm_cell/BiasAdd/ReadVariableOpҐ'lstm/lstm_cell/BiasAdd_1/ReadVariableOpҐ'lstm/lstm_cell/BiasAdd_2/ReadVariableOpҐ$lstm/lstm_cell/MatMul/ReadVariableOpҐ&lstm/lstm_cell/MatMul_1/ReadVariableOpҐ&lstm/lstm_cell/MatMul_2/ReadVariableOpҐ&lstm/lstm_cell/MatMul_3/ReadVariableOpҐ&lstm/lstm_cell/MatMul_4/ReadVariableOpҐ&lstm/lstm_cell/MatMul_5/ReadVariableOpW
masking/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањy
masking/NotEqualNotEqualinputs_0masking/NotEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€h
masking/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€О
masking/AnyAnymasking/NotEqual:z:0&masking/Any/reduction_indices:output:0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(o
masking/CastCastmasking/Any:output:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€d
masking/mulMulinputs_0masking/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€В
masking/SqueezeSqueezemasking/Any:output:0*
T0
*'
_output_shapes
:€€€€€€€€€*
squeeze_dims

€€€€€€€€€I

lstm/ShapeShapemasking/mul:z:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :В
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ж
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          А
lstm/transpose	Transposemasking/mul:z:0lstm/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
lstm/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Л
lstm/ExpandDims
ExpandDimsmasking/Squeeze:output:0lstm/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:€€€€€€€€€j
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
lstm/transpose_1	Transposelstm/ExpandDims:output:0lstm/transpose_1/perm:output:0*
T0
*+
_output_shapes
:€€€€€€€€€Н
lstm/unstackUnpacklstm/transpose:y:0*
T0*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numС
lstm/unstack_1Unpacklstm/transpose_1:y:0*
T0
*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numТ
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Ц
lstm/lstm_cell/MatMulMatMullstm/unstack:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЦ
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Ш
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PС
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€PР
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0Ъ
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitr
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€А
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm/lstm_cell/ReluRelulstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€М
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€i
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€d
lstm/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      z
	lstm/TileTilelstm/unstack_1:output:0lstm/Tile/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€h
lstm/zeros_like	ZerosLikelstm/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€О
lstm/SelectV2SelectV2lstm/Tile:output:0lstm/lstm_cell/mul_2:z:0lstm/zeros_like:y:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_1Tilelstm/unstack_1:output:0lstm/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_2Tilelstm/unstack_1:output:0lstm/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Т
lstm/SelectV2_1SelectV2lstm/Tile_1:output:0lstm/lstm_cell/mul_2:z:0lstm/zeros:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
lstm/SelectV2_2SelectV2lstm/Tile_2:output:0lstm/lstm_cell/add_1:z:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
&lstm/lstm_cell/MatMul_2/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Ъ
lstm/lstm_cell/MatMul_2MatMullstm/unstack:output:1.lstm/lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЦ
&lstm/lstm_cell/MatMul_3/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Э
lstm/lstm_cell/MatMul_3MatMullstm/SelectV2_1:output:0.lstm/lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PХ
lstm/lstm_cell/add_2AddV2!lstm/lstm_cell/MatMul_2:product:0!lstm/lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:€€€€€€€€€PТ
'lstm/lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0†
lstm/lstm_cell/BiasAdd_1BiasAddlstm/lstm_cell/add_2:z:0/lstm/lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Pb
 lstm/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
lstm/lstm_cell/split_1Split)lstm/lstm_cell/split_1/split_dim:output:0!lstm/lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitv
lstm/lstm_cell/Sigmoid_3Sigmoidlstm/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
lstm/lstm_cell/Sigmoid_4Sigmoidlstm/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€Е
lstm/lstm_cell/mul_3Mullstm/lstm_cell/Sigmoid_4:y:0lstm/SelectV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm/lstm_cell/Relu_2Relulstm/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_4Mullstm/lstm_cell/Sigmoid_3:y:0#lstm/lstm_cell/Relu_2:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Г
lstm/lstm_cell/add_3AddV2lstm/lstm_cell/mul_3:z:0lstm/lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
lstm/lstm_cell/Sigmoid_5Sigmoidlstm/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€i
lstm/lstm_cell/Relu_3Relulstm/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_5Mullstm/lstm_cell/Sigmoid_5:y:0#lstm/lstm_cell/Relu_3:activations:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_3/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_3Tilelstm/unstack_1:output:1lstm/Tile_3/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Х
lstm/SelectV2_3SelectV2lstm/Tile_3:output:0lstm/lstm_cell/mul_5:z:0lstm/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_4/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_4Tilelstm/unstack_1:output:1lstm/Tile_4/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_5/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_5Tilelstm/unstack_1:output:1lstm/Tile_5/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_4SelectV2lstm/Tile_4:output:0lstm/lstm_cell/mul_5:z:0lstm/SelectV2_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_5SelectV2lstm/Tile_5:output:0lstm/lstm_cell/add_3:z:0lstm/SelectV2_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
&lstm/lstm_cell/MatMul_4/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Ъ
lstm/lstm_cell/MatMul_4MatMullstm/unstack:output:2.lstm/lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЦ
&lstm/lstm_cell/MatMul_5/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Э
lstm/lstm_cell/MatMul_5MatMullstm/SelectV2_4:output:0.lstm/lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PХ
lstm/lstm_cell/add_4AddV2!lstm/lstm_cell/MatMul_4:product:0!lstm/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€PТ
'lstm/lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0†
lstm/lstm_cell/BiasAdd_2BiasAddlstm/lstm_cell/add_4:z:0/lstm/lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Pb
 lstm/lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
lstm/lstm_cell/split_2Split)lstm/lstm_cell/split_2/split_dim:output:0!lstm/lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitv
lstm/lstm_cell/Sigmoid_6Sigmoidlstm/lstm_cell/split_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
lstm/lstm_cell/Sigmoid_7Sigmoidlstm/lstm_cell/split_2:output:1*
T0*'
_output_shapes
:€€€€€€€€€Е
lstm/lstm_cell/mul_6Mullstm/lstm_cell/Sigmoid_7:y:0lstm/SelectV2_5:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm/lstm_cell/Relu_4Relulstm/lstm_cell/split_2:output:2*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_7Mullstm/lstm_cell/Sigmoid_6:y:0#lstm/lstm_cell/Relu_4:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Г
lstm/lstm_cell/add_5AddV2lstm/lstm_cell/mul_6:z:0lstm/lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
lstm/lstm_cell/Sigmoid_8Sigmoidlstm/lstm_cell/split_2:output:3*
T0*'
_output_shapes
:€€€€€€€€€i
lstm/lstm_cell/Relu_5Relulstm/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:€€€€€€€€€Р
lstm/lstm_cell/mul_8Mullstm/lstm_cell/Sigmoid_8:y:0#lstm/lstm_cell/Relu_5:activations:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_6/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_6Tilelstm/unstack_1:output:2lstm/Tile_6/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_6SelectV2lstm/Tile_6:output:0lstm/lstm_cell/mul_8:z:0lstm/SelectV2_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_7/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_7Tilelstm/unstack_1:output:2lstm/Tile_7/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€f
lstm/Tile_8/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      ~
lstm/Tile_8Tilelstm/unstack_1:output:2lstm/Tile_8/multiples:output:0*
T0
*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_7SelectV2lstm/Tile_7:output:0lstm/lstm_cell/mul_8:z:0lstm/SelectV2_4:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ч
lstm/SelectV2_8SelectV2lstm/Tile_8:output:0lstm/lstm_cell/add_5:z:0lstm/SelectV2_5:output:0*
T0*'
_output_shapes
:€€€€€€€€€k

lstm/stackPacklstm/SelectV2_6:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€j
lstm/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          И
lstm/transpose_2	Transposelstm/stack:output:0lstm/transpose_2/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Я
concatenate/concatConcatV2lstm/SelectV2_6:output:0inputs_1 concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€PА
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:P0*
dtype0К
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€0|
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: є
 batch_normalization/moments/meanMeandense/Relu:activations:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(М
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*
_output_shapes

:0Ѕ
-batch_normalization/moments/SquaredDifferenceSquaredDifferencedense/Relu:activations:01batch_normalization/moments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€0А
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Џ
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:0*
	keep_dims(Х
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 Ы
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes
:0*
squeeze_dims
 n
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<™
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes
:0*
dtype0љ
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes
:0і
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:0ь
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0p
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ѓ
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes
:0*
dtype0√
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes
:0Ї
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:0Д
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≠
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
:0x
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
:0¶
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:0*
dtype0∞
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:0Э
#batch_normalization/batchnorm/mul_1Muldense/Relu:activations:0%batch_normalization/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€0§
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
:0Ю
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
:0*
dtype0ђ
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
:0Ѓ
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€0Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Х
dropout/dropout/MulMul'batch_normalization/batchnorm/add_1:z:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€0l
dropout/dropout/ShapeShape'batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:Ь
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€0*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Њ
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€0\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ≥
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€0Д
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:0*
dtype0Ф
dense_1/MatMulMatMul!dropout/dropout/SelectV2:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: њ
"batch_normalization_1/moments/meanMeandense_1/Relu:activations:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(Р
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes

:«
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferencedense_1/Relu:activations:03batch_normalization_1/moments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€В
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: а
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(Щ
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Я
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ѓ
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0√
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes
:Ї
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Д
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<≤
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0…
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes
:ј
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:М
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:£
%batch_normalization_1/batchnorm/mul_1Muldense_1/Relu:activations:0'batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€™
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:Ґ
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0≤
#batch_normalization_1/batchnorm/subSub6batch_normalization_1/batchnorm/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:і
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ы
dropout_1/dropout/MulMul)batch_normalization_1/batchnorm/add_1:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
dropout_1/dropout/ShapeShape)batch_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:†
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ƒ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ї
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ц
dense_2/MatMulMatMul#dropout_1/dropout/SelectV2:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: њ
"batch_normalization_2/moments/meanMeandense_2/Relu:activations:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(Р
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes

:«
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferencedense_2/Relu:activations:03batch_normalization_2/moments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€В
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: а
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(Щ
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Я
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ѓ
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0√
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes
:Ї
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Д
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<≤
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0…
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes
:ј
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:М
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:≥
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:™
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ґ
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:£
%batch_normalization_2/batchnorm/mul_1Muldense_2/Relu:activations:0'batch_normalization_2/batchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€™
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:Ґ
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0≤
#batch_normalization_2/batchnorm/subSub6batch_normalization_2/batchnorm/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:і
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ы
dropout_2/dropout/MulMul)batch_normalization_2/batchnorm/add_1:z:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
dropout_2/dropout/ShapeShape)batch_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:†
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ƒ
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ї
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ц
dense_3/MatMulMatMul#dropout_2/dropout/SelectV2:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ґ
NoOpNoOp$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp3^batch_normalization_1/batchnorm/mul/ReadVariableOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp3^batch_normalization_2/batchnorm/mul/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp(^lstm/lstm_cell/BiasAdd_1/ReadVariableOp(^lstm/lstm_cell/BiasAdd_2/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp'^lstm/lstm_cell/MatMul_2/ReadVariableOp'^lstm/lstm_cell/MatMul_3/ReadVariableOp'^lstm/lstm_cell/MatMul_4/ReadVariableOp'^lstm/lstm_cell/MatMul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2R
'lstm/lstm_cell/BiasAdd_1/ReadVariableOp'lstm/lstm_cell/BiasAdd_1/ReadVariableOp2R
'lstm/lstm_cell/BiasAdd_2/ReadVariableOp'lstm/lstm_cell/BiasAdd_2/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2P
&lstm/lstm_cell/MatMul_2/ReadVariableOp&lstm/lstm_cell/MatMul_2/ReadVariableOp2P
&lstm/lstm_cell/MatMul_3/ReadVariableOp&lstm/lstm_cell/MatMul_3/ReadVariableOp2P
&lstm/lstm_cell/MatMul_4/ReadVariableOp&lstm/lstm_cell/MatMul_4/ReadVariableOp2P
&lstm/lstm_cell/MatMul_5/ReadVariableOp&lstm/lstm_cell/MatMul_5/ReadVariableOp:U Q
+
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs_1
чZ
Ў
C__inference_lstm_layer_call_and_return_conditional_losses_287682668

inputs:
(lstm_cell_matmul_readvariableop_resource:P<
*lstm_cell_matmul_1_readvariableop_resource:P7
)lstm_cell_biasadd_readvariableop_resource:P
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐ"lstm_cell/BiasAdd_1/ReadVariableOpҐ"lstm_cell/BiasAdd_2/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐ!lstm_cell/MatMul_2/ReadVariableOpҐ!lstm_cell/MatMul_3/ReadVariableOpҐ!lstm_cell/MatMul_4/ReadVariableOpҐ!lstm_cell/MatMul_5/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskГ
unstackUnpacktranspose:y:0*
T0*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numИ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0З
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Й
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PВ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0Л
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€К
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Л
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0О
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:€€€€€€€€€PИ
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0С
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€v
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm_cell/Relu_2Relulstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Relu_2:activations:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_3Relulstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Relu_3:activations:0*
T0*'
_output_shapes
:€€€€€€€€€К
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Л
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0О
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€PИ
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0С
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:€€€€€€€€€v
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm_cell/Relu_4Relulstm_cell/split_2:output:2*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Relu_4:activations:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_5Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Relu_5:activations:0*
T0*'
_output_shapes
:€€€€€€€€€a
stackPacklstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:€€€€€€€€€e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Й
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ј
b
F__inference_masking_layer_call_and_return_conditional_losses_287680996

inputs
identityO

NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањg
NotEqualNotEqualinputsNotEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€`
Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€v
AnyAnyNotEqual:z:0Any/reduction_indices:output:0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(_
CastCastAny:output:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€R
mulMulinputsCast:y:0*
T0*+
_output_shapes
:€€€€€€€€€r
SqueezeSqueezeAny:output:0*
T0
*'
_output_shapes
:€€€€€€€€€*
squeeze_dims

€€€€€€€€€S
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
є
‘
9__inference_batch_normalization_1_layer_call_fn_287682951

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287680883o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
чZ
Ў
C__inference_lstm_layer_call_and_return_conditional_losses_287681095

inputs:
(lstm_cell_matmul_readvariableop_resource:P<
*lstm_cell_matmul_1_readvariableop_resource:P7
)lstm_cell_biasadd_readvariableop_resource:P
identityИҐ lstm_cell/BiasAdd/ReadVariableOpҐ"lstm_cell/BiasAdd_1/ReadVariableOpҐ"lstm_cell/BiasAdd_2/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐ!lstm_cell/MatMul_2/ReadVariableOpҐ!lstm_cell/MatMul_3/ReadVariableOpҐ!lstm_cell/MatMul_4/ReadVariableOpҐ!lstm_cell/MatMul_5/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskГ
unstackUnpacktranspose:y:0*
T0*M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*	
numИ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0З
lstm_cell/MatMulMatMulunstack:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0Й
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PВ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0Л
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€К
!lstm_cell/MatMul_2/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Л
lstm_cell/MatMul_2MatMulunstack:output:1)lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_3/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0О
lstm_cell/MatMul_3MatMullstm_cell/mul_2:z:0)lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
lstm_cell/add_2AddV2lstm_cell/MatMul_2:product:0lstm_cell/MatMul_3:product:0*
T0*'
_output_shapes
:€€€€€€€€€PИ
"lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0С
lstm_cell/BiasAdd_1BiasAddlstm_cell/add_2:z:0*lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitl
lstm_cell/Sigmoid_3Sigmoidlstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_4Sigmoidlstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€v
lstm_cell/mul_3Mullstm_cell/Sigmoid_4:y:0lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm_cell/Relu_2Relulstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_4Mullstm_cell/Sigmoid_3:y:0lstm_cell/Relu_2:activations:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm_cell/add_3AddV2lstm_cell/mul_3:z:0lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_5Sigmoidlstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_3Relulstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_5Mullstm_cell/Sigmoid_5:y:0lstm_cell/Relu_3:activations:0*
T0*'
_output_shapes
:€€€€€€€€€К
!lstm_cell/MatMul_4/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0Л
lstm_cell/MatMul_4MatMulunstack:output:2)lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PМ
!lstm_cell/MatMul_5/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes

:P*
dtype0О
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0)lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€PЖ
lstm_cell/add_4AddV2lstm_cell/MatMul_4:product:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:€€€€€€€€€PИ
"lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0С
lstm_cell/BiasAdd_2BiasAddlstm_cell/add_4:z:0*lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P]
lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
lstm_cell/split_2Split$lstm_cell/split_2/split_dim:output:0lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitl
lstm_cell/Sigmoid_6Sigmoidlstm_cell/split_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_7Sigmoidlstm_cell/split_2:output:1*
T0*'
_output_shapes
:€€€€€€€€€v
lstm_cell/mul_6Mullstm_cell/Sigmoid_7:y:0lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
lstm_cell/Relu_4Relulstm_cell/split_2:output:2*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_7Mullstm_cell/Sigmoid_6:y:0lstm_cell/Relu_4:activations:0*
T0*'
_output_shapes
:€€€€€€€€€t
lstm_cell/add_5AddV2lstm_cell/mul_6:z:0lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€l
lstm_cell/Sigmoid_8Sigmoidlstm_cell/split_2:output:3*
T0*'
_output_shapes
:€€€€€€€€€_
lstm_cell/Relu_5Relulstm_cell/add_5:z:0*
T0*'
_output_shapes
:€€€€€€€€€Б
lstm_cell/mul_8Mullstm_cell/Sigmoid_8:y:0lstm_cell/Relu_5:activations:0*
T0*'
_output_shapes
:€€€€€€€€€a
stackPacklstm_cell/mul_8:z:0*
N*
T0*+
_output_shapes
:€€€€€€€€€e
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
transpose_1	Transposestack:output:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitylstm_cell/mul_8:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Й
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp#^lstm_cell/BiasAdd_1/ReadVariableOp#^lstm_cell/BiasAdd_2/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp"^lstm_cell/MatMul_2/ReadVariableOp"^lstm_cell/MatMul_3/ReadVariableOp"^lstm_cell/MatMul_4/ReadVariableOp"^lstm_cell/MatMul_5/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2H
"lstm_cell/BiasAdd_1/ReadVariableOp"lstm_cell/BiasAdd_1/ReadVariableOp2H
"lstm_cell/BiasAdd_2/ReadVariableOp"lstm_cell/BiasAdd_2/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2F
!lstm_cell/MatMul_2/ReadVariableOp!lstm_cell/MatMul_2/ReadVariableOp2F
!lstm_cell/MatMul_3/ReadVariableOp!lstm_cell/MatMul_3/ReadVariableOp2F
!lstm_cell/MatMul_4/ReadVariableOp!lstm_cell/MatMul_4/ReadVariableOp2F
!lstm_cell/MatMul_5/ReadVariableOp!lstm_cell/MatMul_5/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
О

g
H__inference_dropout_1_layer_call_and_return_conditional_losses_287683032

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ї
[
/__inference_concatenate_layer_call_fn_287682771
inputs_0
inputs_1
identityѕ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_287681110`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€<:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs_1
”
Ш
+__inference_dense_3_layer_call_fn_287683168

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_287681222o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
љA
∆

D__inference_model_layer_call_and_return_conditional_losses_287681804
input_1
input_2 
lstm_287681745:P 
lstm_287681747:P
lstm_287681749:P!
dense_287681753:P0
dense_287681755:0+
batch_normalization_287681758:0+
batch_normalization_287681760:0+
batch_normalization_287681762:0+
batch_normalization_287681764:0#
dense_1_287681768:0
dense_1_287681770:-
batch_normalization_1_287681773:-
batch_normalization_1_287681775:-
batch_normalization_1_287681777:-
batch_normalization_1_287681779:#
dense_2_287681783:
dense_2_287681785:-
batch_normalization_2_287681788:-
batch_normalization_2_287681790:-
batch_normalization_2_287681792:-
batch_normalization_2_287681794:#
dense_3_287681798:
dense_3_287681800:
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐlstm/StatefulPartitionedCallЋ
masking/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_masking_layer_call_and_return_conditional_losses_287680996Ґ
lstm/StatefulPartitionedCallStatefulPartitionedCall masking/PartitionedCall:output:0lstm_287681745lstm_287681747lstm_287681749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *L
fGRE
C__inference_lstm_layer_call_and_return_conditional_losses_287681095ч
concatenate/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_287681110Ш
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_287681753dense_287681755*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_287681123Ф
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_287681758batch_normalization_287681760batch_normalization_287681762batch_normalization_287681764*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*&
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287680754ф
dropout/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_287681143Ь
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_287681768dense_1_287681770*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_287681156Ґ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_1_287681773batch_normalization_1_287681775batch_normalization_1_287681777batch_normalization_1_287681779*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287680836ъ
dropout_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_287681176Ю
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_287681783dense_2_287681785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_287681189Ґ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0batch_normalization_2_287681788batch_normalization_2_287681790batch_normalization_2_287681792batch_normalization_2_287681794*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287680918ъ
dropout_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_2_layer_call_and_return_conditional_losses_287681209Ю
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_3_287681798dense_3_287681800*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_287681222w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€щ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€<
!
_user_specified_name	input_2
Ы

х
D__inference_dense_layer_call_and_return_conditional_losses_287681123

inputs0
matmul_readvariableop_resource:P0-
biasadd_readvariableop_resource:0
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P0*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€0P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€0a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
ї
‘
9__inference_batch_normalization_2_layer_call_fn_287683065

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287680918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѓ
G
+__inference_dropout_layer_call_fn_287682883

inputs
identityЊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_287681143`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€0:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
Ј
“
7__inference_batch_normalization_layer_call_fn_287682811

inputs
unknown:0
	unknown_0:0
	unknown_1:0
	unknown_2:0
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*&
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287680754o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€0: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
О

g
H__inference_dropout_2_layer_call_and_return_conditional_losses_287681308

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Њ
G
+__inference_masking_layer_call_fn_287682538

inputs
identity¬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_masking_layer_call_and_return_conditional_losses_287680996d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
”
Ш
+__inference_dense_2_layer_call_fn_287683041

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_287681189o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
Ц
)__inference_dense_layer_call_fn_287682787

inputs
unknown:P0
	unknown_0:0
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_287681123o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€P
 
_user_specified_nameinputs
нE
∞
D__inference_model_layer_call_and_return_conditional_losses_287681868
input_1
input_2 
lstm_287681809:P 
lstm_287681811:P
lstm_287681813:P!
dense_287681817:P0
dense_287681819:0+
batch_normalization_287681822:0+
batch_normalization_287681824:0+
batch_normalization_287681826:0+
batch_normalization_287681828:0#
dense_1_287681832:0
dense_1_287681834:-
batch_normalization_1_287681837:-
batch_normalization_1_287681839:-
batch_normalization_1_287681841:-
batch_normalization_1_287681843:#
dense_2_287681847:
dense_2_287681849:-
batch_normalization_2_287681852:-
batch_normalization_2_287681854:-
batch_normalization_2_287681856:-
batch_normalization_2_287681858:#
dense_3_287681862:
dense_3_287681864:
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐlstm/StatefulPartitionedCallЋ
masking/PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_masking_layer_call_and_return_conditional_losses_287680996Ґ
lstm/StatefulPartitionedCallStatefulPartitionedCall masking/PartitionedCall:output:0lstm_287681809lstm_287681811lstm_287681813*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *L
fGRE
C__inference_lstm_layer_call_and_return_conditional_losses_287681505ч
concatenate/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_287681110Ш
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_287681817dense_287681819*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_287681123Т
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_287681822batch_normalization_287681824batch_normalization_287681826batch_normalization_287681828*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287680801Д
dropout/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_287681374§
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_287681832dense_1_287681834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_287681156†
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_1_287681837batch_normalization_1_287681839batch_normalization_1_287681841batch_normalization_1_287681843*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287680883ђ
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_287681341¶
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_287681847dense_2_287681849*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_287681189†
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0batch_normalization_2_287681852batch_normalization_2_287681854batch_normalization_2_287681856batch_normalization_2_287681858*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287680965Ѓ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_2_layer_call_and_return_conditional_losses_287681308¶
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_287681862dense_3_287681864*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_287681222w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€г
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:T P
+
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€<
!
_user_specified_name	input_2
—
≥
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287680836

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
М

e
F__inference_dropout_layer_call_and_return_conditional_losses_287682905

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€0C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€0*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€0T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€0a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€0:O K
'
_output_shapes
:€€€€€€€€€0
 
_user_specified_nameinputs
їA
∆

D__inference_model_layer_call_and_return_conditional_losses_287681229

inputs
inputs_1 
lstm_287681096:P 
lstm_287681098:P
lstm_287681100:P!
dense_287681124:P0
dense_287681126:0+
batch_normalization_287681129:0+
batch_normalization_287681131:0+
batch_normalization_287681133:0+
batch_normalization_287681135:0#
dense_1_287681157:0
dense_1_287681159:-
batch_normalization_1_287681162:-
batch_normalization_1_287681164:-
batch_normalization_1_287681166:-
batch_normalization_1_287681168:#
dense_2_287681190:
dense_2_287681192:-
batch_normalization_2_287681195:-
batch_normalization_2_287681197:-
batch_normalization_2_287681199:-
batch_normalization_2_287681201:#
dense_3_287681223:
dense_3_287681225:
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallҐlstm/StatefulPartitionedCall 
masking/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_masking_layer_call_and_return_conditional_losses_287680996Ґ
lstm/StatefulPartitionedCallStatefulPartitionedCall masking/PartitionedCall:output:0lstm_287681096lstm_287681098lstm_287681100*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *L
fGRE
C__inference_lstm_layer_call_and_return_conditional_losses_287681095ш
concatenate/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€P* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *S
fNRL
J__inference_concatenate_layer_call_and_return_conditional_losses_287681110Ш
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_287681124dense_287681126*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_287681123Ф
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_287681129batch_normalization_287681131batch_normalization_287681133batch_normalization_287681135*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0*&
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *[
fVRT
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287680754ф
dropout/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€0* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dropout_layer_call_and_return_conditional_losses_287681143Ь
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_287681157dense_1_287681159*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_287681156Ґ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0batch_normalization_1_287681162batch_normalization_1_287681164batch_normalization_1_287681166batch_normalization_1_287681168*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287680836ъ
dropout_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_1_layer_call_and_return_conditional_losses_287681176Ю
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_287681190dense_2_287681192*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_287681189Ґ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0batch_normalization_2_287681195batch_normalization_2_287681197batch_normalization_2_287681199batch_normalization_2_287681201*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*&
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *]
fXRV
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287680918ъ
dropout_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *Q
fLRJ
H__inference_dropout_2_layer_call_and_return_conditional_losses_287681209Ю
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_3_287681223dense_3_287681225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*:
config_proto*(

CPU

GPU 

XLA_CPU2J 8В *O
fJRH
F__inference_dense_3_layer_call_and_return_conditional_losses_287681222w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€щ
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:€€€€€€€€€:€€€€€€€€€<: : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
Ь

ч
F__inference_dense_3_layer_call_and_return_conditional_losses_287683179

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Э

ч
F__inference_dense_2_layer_call_and_return_conditional_losses_287683052

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
≥
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287682971

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ї
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Х%
н
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287683005

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:З
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ю
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<В
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Б
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
„#<Ж
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0З
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:і
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€к
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ј
b
F__inference_masking_layer_call_and_return_conditional_losses_287682549

inputs
identityO

NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Ањg
NotEqualNotEqualinputsNotEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€`
Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€v
AnyAnyNotEqual:z:0Any/reduction_indices:output:0*+
_output_shapes
:€€€€€€€€€*
	keep_dims(_
CastCastAny:output:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€R
mulMulinputsCast:y:0*
T0*+
_output_shapes
:€€€€€€€€€r
SqueezeSqueezeAny:output:0*
T0
*'
_output_shapes
:€€€€€€€€€*
squeeze_dims

€€€€€€€€€S
IdentityIdentitymul:z:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*л
serving_default„
?
input_14
serving_default_input_1:0€€€€€€€€€
;
input_20
serving_default_input_2:0€€€€€€€€€<;
dense_30
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:≠Н
†
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer-13
layer_with_weights-7
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories"
_tf_keras_network
D
#_self_saveable_object_factories"
_tf_keras_input_layer
 
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
#!_self_saveable_object_factories"
_tf_keras_layer
€
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses
(_random_generator
)cell
*
state_spec
#+_self_saveable_object_factories"
_tf_keras_rnn_layer
D
#,_self_saveable_object_factories"
_tf_keras_input_layer
 
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
#3_self_saveable_object_factories"
_tf_keras_layer
а
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias
#<_self_saveable_object_factories"
_tf_keras_layer
П
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses
Caxis
	Dgamma
Ebeta
Fmoving_mean
Gmoving_variance
#H_self_saveable_object_factories"
_tf_keras_layer
б
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator
#P_self_saveable_object_factories"
_tf_keras_layer
а
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

Wkernel
Xbias
#Y_self_saveable_object_factories"
_tf_keras_layer
П
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`axis
	agamma
bbeta
cmoving_mean
dmoving_variance
#e_self_saveable_object_factories"
_tf_keras_layer
б
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
l_random_generator
#m_self_saveable_object_factories"
_tf_keras_layer
а
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses

tkernel
ubias
#v_self_saveable_object_factories"
_tf_keras_layer
Т
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses
}axis
	~gamma
beta
Аmoving_mean
Бmoving_variance
$В_self_saveable_object_factories"
_tf_keras_layer
й
Г	variables
Дtrainable_variables
Еregularization_losses
Ж	keras_api
З__call__
+И&call_and_return_all_conditional_losses
Й_random_generator
$К_self_saveable_object_factories"
_tf_keras_layer
й
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel
	Тbias
$У_self_saveable_object_factories"
_tf_keras_layer
’
Ф0
Х1
Ц2
:3
;4
D5
E6
F7
G8
W9
X10
a11
b12
c13
d14
t15
u16
~17
18
А19
Б20
С21
Т22"
trackable_list_wrapper
£
Ф0
Х1
Ц2
:3
;4
D5
E6
W7
X8
a9
b10
t11
u12
~13
14
С15
Т16"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
б
Ьtrace_0
Эtrace_1
Юtrace_2
Яtrace_32о
)__inference_model_layer_call_fn_287681278
)__inference_model_layer_call_fn_287681976
)__inference_model_layer_call_fn_287682028
)__inference_model_layer_call_fn_287681740њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЬtrace_0zЭtrace_1zЮtrace_2zЯtrace_3
Ќ
†trace_0
°trace_1
Ґtrace_2
£trace_32Џ
D__inference_model_layer_call_and_return_conditional_losses_287682249
D__inference_model_layer_call_and_return_conditional_losses_287682533
D__inference_model_layer_call_and_return_conditional_losses_287681804
D__inference_model_layer_call_and_return_conditional_losses_287681868њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0z°trace_1zҐtrace_2z£trace_3
ЎB’
$__inference__wrapped_model_287680730input_1input_2"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£
§
_variables
•_iterations
¶_learning_rate
І_index_dict
®
_momentums
©_velocities
™_update_step_xla"
experimentalOptimizer
-
Ђserving_default"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
с
±trace_02“
+__inference_masking_layer_call_fn_287682538Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z±trace_0
М
≤trace_02н
F__inference_masking_layer_call_and_return_conditional_losses_287682549Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≤trace_0
 "
trackable_dict_wrapper
8
Ф0
Х1
Ц2"
trackable_list_wrapper
8
Ф0
Х1
Ц2"
trackable_list_wrapper
 "
trackable_list_wrapper
њ
≥states
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
ж
єtrace_0
Їtrace_12Ђ
(__inference_lstm_layer_call_fn_287682560
(__inference_lstm_layer_call_fn_287682571‘
Ћ≤«
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zєtrace_0zЇtrace_1
Ь
їtrace_0
Љtrace_12б
C__inference_lstm_layer_call_and_return_conditional_losses_287682668
C__inference_lstm_layer_call_and_return_conditional_losses_287682765‘
Ћ≤«
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zїtrace_0zЉtrace_1
D
$љ_self_saveable_object_factories"
_generic_user_object
©
Њ	variables
њtrainable_variables
јregularization_losses
Ѕ	keras_api
¬__call__
+√&call_and_return_all_conditional_losses
ƒ_random_generator
≈
state_size
Фkernel
Хrecurrent_kernel
	Цbias
$∆_self_saveable_object_factories"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
«non_trainable_variables
»layers
…metrics
  layer_regularization_losses
Ћlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
х
ћtrace_02÷
/__inference_concatenate_layer_call_fn_287682771Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zћtrace_0
Р
Ќtrace_02с
J__inference_concatenate_layer_call_and_return_conditional_losses_287682778Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ќnon_trainable_variables
ѕlayers
–metrics
 —layer_regularization_losses
“layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
п
”trace_02–
)__inference_dense_layer_call_fn_287682787Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0
К
‘trace_02л
D__inference_dense_layer_call_and_return_conditional_losses_287682798Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z‘trace_0
:P02dense/kernel
:02
dense/bias
 "
trackable_dict_wrapper
<
D0
E1
F2
G3"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
г
Џtrace_0
џtrace_12®
7__inference_batch_normalization_layer_call_fn_287682811
7__inference_batch_normalization_layer_call_fn_287682824≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЏtrace_0zџtrace_1
Щ
№trace_0
Ёtrace_12ё
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287682844
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287682878≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z№trace_0zЁtrace_1
 "
trackable_list_wrapper
':%02batch_normalization/gamma
&:$02batch_normalization/beta
/:-0 (2batch_normalization/moving_mean
3:10 (2#batch_normalization/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ёnon_trainable_variables
яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
Ћ
гtrace_0
дtrace_12Р
+__inference_dropout_layer_call_fn_287682883
+__inference_dropout_layer_call_fn_287682888≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zгtrace_0zдtrace_1
Б
еtrace_0
жtrace_12∆
F__inference_dropout_layer_call_and_return_conditional_losses_287682893
F__inference_dropout_layer_call_and_return_conditional_losses_287682905≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zеtrace_0zжtrace_1
D
$з_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
с
нtrace_02“
+__inference_dense_1_layer_call_fn_287682914Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zнtrace_0
М
оtrace_02н
F__inference_dense_1_layer_call_and_return_conditional_losses_287682925Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zоtrace_0
 :02dense_1/kernel
:2dense_1/bias
 "
trackable_dict_wrapper
<
a0
b1
c2
d3"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
з
фtrace_0
хtrace_12ђ
9__inference_batch_normalization_1_layer_call_fn_287682938
9__inference_batch_normalization_1_layer_call_fn_287682951≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zфtrace_0zхtrace_1
Э
цtrace_0
чtrace_12в
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287682971
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287683005≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zцtrace_0zчtrace_1
 "
trackable_list_wrapper
):'2batch_normalization_1/gamma
(:&2batch_normalization_1/beta
1:/ (2!batch_normalization_1/moving_mean
5:3 (2%batch_normalization_1/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
ѕ
эtrace_0
юtrace_12Ф
-__inference_dropout_1_layer_call_fn_287683010
-__inference_dropout_1_layer_call_fn_287683015≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zэtrace_0zюtrace_1
Е
€trace_0
Аtrace_12 
H__inference_dropout_1_layer_call_and_return_conditional_losses_287683020
H__inference_dropout_1_layer_call_and_return_conditional_losses_287683032≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z€trace_0zАtrace_1
D
$Б_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
.
t0
u1"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
с
Зtrace_02“
+__inference_dense_2_layer_call_fn_287683041Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0
М
Иtrace_02н
F__inference_dense_2_layer_call_and_return_conditional_losses_287683052Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zИtrace_0
 :2dense_2/kernel
:2dense_2/bias
 "
trackable_dict_wrapper
>
~0
1
А2
Б3"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
з
Оtrace_0
Пtrace_12ђ
9__inference_batch_normalization_2_layer_call_fn_287683065
9__inference_batch_normalization_2_layer_call_fn_287683078≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0zПtrace_1
Э
Рtrace_0
Сtrace_12в
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287683098
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287683132≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zРtrace_0zСtrace_1
 "
trackable_list_wrapper
):'2batch_normalization_2/gamma
(:&2batch_normalization_2/beta
1:/ (2!batch_normalization_2/moving_mean
5:3 (2%batch_normalization_2/moving_variance
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
Г	variables
Дtrainable_variables
Еregularization_losses
З__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
ѕ
Чtrace_0
Шtrace_12Ф
-__inference_dropout_2_layer_call_fn_287683137
-__inference_dropout_2_layer_call_fn_287683142≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЧtrace_0zШtrace_1
Е
Щtrace_0
Ъtrace_12 
H__inference_dropout_2_layer_call_and_return_conditional_losses_287683147
H__inference_dropout_2_layer_call_and_return_conditional_losses_287683159≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0zЪtrace_1
D
$Ы_self_saveable_object_factories"
_generic_user_object
 "
trackable_dict_wrapper
0
С0
Т1"
trackable_list_wrapper
0
С0
Т1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
с
°trace_02“
+__inference_dense_3_layer_call_fn_287683168Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z°trace_0
М
Ґtrace_02н
F__inference_dense_3_layer_call_and_return_conditional_losses_287683179Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zҐtrace_0
 :2dense_3/kernel
:2dense_3/bias
 "
trackable_dict_wrapper
':%P2lstm/lstm_cell/kernel
1:/P2lstm/lstm_cell/recurrent_kernel
!:P2lstm/lstm_cell/bias
L
F0
G1
c2
d3
А4
Б5"
trackable_list_wrapper
О
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
(
£0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
)__inference_model_layer_call_fn_287681278input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
)__inference_model_layer_call_fn_287681976inputs_0inputs_1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
)__inference_model_layer_call_fn_287682028inputs_0inputs_1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
)__inference_model_layer_call_fn_287681740input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
D__inference_model_layer_call_and_return_conditional_losses_287682249inputs_0inputs_1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
D__inference_model_layer_call_and_return_conditional_losses_287682533inputs_0inputs_1"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
D__inference_model_layer_call_and_return_conditional_losses_287681804input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
D__inference_model_layer_call_and_return_conditional_losses_287681868input_1input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—
•0
§1
•2
¶3
І4
®5
©6
™7
Ђ8
ђ9
≠10
Ѓ11
ѓ12
∞13
±14
≤15
≥16
і17
µ18
ґ19
Ј20
Є21
є22
Ї23
ї24
Љ25
љ26
Њ27
њ28
ј29
Ѕ30
¬31
√32
ƒ33
≈34"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
ѓ
§0
¶1
®2
™3
ђ4
Ѓ5
∞6
≤7
і8
ґ9
Є10
Ї11
Љ12
Њ13
ј14
¬15
ƒ16"
trackable_list_wrapper
ѓ
•0
І1
©2
Ђ3
≠4
ѓ5
±6
≥7
µ8
Ј9
є10
ї11
љ12
њ13
Ѕ14
√15
≈16"
trackable_list_wrapper
њ2Љє
Ѓ≤™
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
’B“
'__inference_signature_wrapper_287681924input_1input_2"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яB№
+__inference_masking_layer_call_fn_287682538inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_masking_layer_call_and_return_conditional_losses_287682549inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
)0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ОBЛ
(__inference_lstm_layer_call_fn_287682560inputs"‘
Ћ≤«
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ОBЛ
(__inference_lstm_layer_call_fn_287682571inputs"‘
Ћ≤«
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
©B¶
C__inference_lstm_layer_call_and_return_conditional_losses_287682668inputs"‘
Ћ≤«
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
©B¶
C__inference_lstm_layer_call_and_return_conditional_losses_287682765inputs"‘
Ћ≤«
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_dict_wrapper
8
Ф0
Х1
Ц2"
trackable_list_wrapper
8
Ф0
Х1
Ц2"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
Њ	variables
њtrainable_variables
јregularization_losses
¬__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
√2јљ
і≤∞
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
√2јљ
і≤∞
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
D
$Ћ_self_saveable_object_factories"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
/__inference_concatenate_layer_call_fn_287682771inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
J__inference_concatenate_layer_call_and_return_conditional_losses_287682778inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBЏ
)__inference_dense_layer_call_fn_287682787inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_dense_layer_call_and_return_conditional_losses_287682798inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ьBщ
7__inference_batch_normalization_layer_call_fn_287682811inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
7__inference_batch_normalization_layer_call_fn_287682824inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287682844inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287682878inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
+__inference_dropout_layer_call_fn_287682883inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
рBн
+__inference_dropout_layer_call_fn_287682888inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
F__inference_dropout_layer_call_and_return_conditional_losses_287682893inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЛBИ
F__inference_dropout_layer_call_and_return_conditional_losses_287682905inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яB№
+__inference_dense_1_layer_call_fn_287682914inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_dense_1_layer_call_and_return_conditional_losses_287682925inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
9__inference_batch_normalization_1_layer_call_fn_287682938inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
9__inference_batch_normalization_1_layer_call_fn_287682951inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287682971inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287683005inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBп
-__inference_dropout_1_layer_call_fn_287683010inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
-__inference_dropout_1_layer_call_fn_287683015inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
НBК
H__inference_dropout_1_layer_call_and_return_conditional_losses_287683020inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
НBК
H__inference_dropout_1_layer_call_and_return_conditional_losses_287683032inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яB№
+__inference_dense_2_layer_call_fn_287683041inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_dense_2_layer_call_and_return_conditional_losses_287683052inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
А0
Б1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
9__inference_batch_normalization_2_layer_call_fn_287683065inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
9__inference_batch_normalization_2_layer_call_fn_287683078inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287683098inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287683132inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBп
-__inference_dropout_2_layer_call_fn_287683137inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
-__inference_dropout_2_layer_call_fn_287683142inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
НBК
H__inference_dropout_2_layer_call_and_return_conditional_losses_287683147inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
НBК
H__inference_dropout_2_layer_call_and_return_conditional_losses_287683159inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яB№
+__inference_dense_3_layer_call_fn_287683168inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_dense_3_layer_call_and_return_conditional_losses_287683179inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
ћ	variables
Ќ	keras_api

ќtotal

ѕcount"
_tf_keras_metric
,:*P2Adam/m/lstm/lstm_cell/kernel
,:*P2Adam/v/lstm/lstm_cell/kernel
6:4P2&Adam/m/lstm/lstm_cell/recurrent_kernel
6:4P2&Adam/v/lstm/lstm_cell/recurrent_kernel
&:$P2Adam/m/lstm/lstm_cell/bias
&:$P2Adam/v/lstm/lstm_cell/bias
#:!P02Adam/m/dense/kernel
#:!P02Adam/v/dense/kernel
:02Adam/m/dense/bias
:02Adam/v/dense/bias
,:*02 Adam/m/batch_normalization/gamma
,:*02 Adam/v/batch_normalization/gamma
+:)02Adam/m/batch_normalization/beta
+:)02Adam/v/batch_normalization/beta
%:#02Adam/m/dense_1/kernel
%:#02Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias
.:,2"Adam/m/batch_normalization_1/gamma
.:,2"Adam/v/batch_normalization_1/gamma
-:+2!Adam/m/batch_normalization_1/beta
-:+2!Adam/v/batch_normalization_1/beta
%:#2Adam/m/dense_2/kernel
%:#2Adam/v/dense_2/kernel
:2Adam/m/dense_2/bias
:2Adam/v/dense_2/bias
.:,2"Adam/m/batch_normalization_2/gamma
.:,2"Adam/v/batch_normalization_2/gamma
-:+2!Adam/m/batch_normalization_2/beta
-:+2!Adam/v/batch_normalization_2/beta
%:#2Adam/m/dense_3/kernel
%:#2Adam/v/dense_3/kernel
:2Adam/m/dense_3/bias
:2Adam/v/dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
0
ќ0
ѕ1"
trackable_list_wrapper
.
ћ	variables"
_generic_user_object
:  (2total
:  (2countЏ
$__inference__wrapped_model_287680730±ФХЦ:;GDFEWXdacbtuБ~АСТ\ҐY
RҐO
MЪJ
%К"
input_1€€€€€€€€€
!К
input_2€€€€€€€€€<
™ "1™.
,
dense_3!К
dense_3€€€€€€€€€Ѕ
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287682971idacb3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѕ
T__inference_batch_normalization_1_layer_call_and_return_conditional_losses_287683005icdab3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ы
9__inference_batch_normalization_1_layer_call_fn_287682938^dacb3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "!К
unknown€€€€€€€€€Ы
9__inference_batch_normalization_1_layer_call_fn_287682951^cdab3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "!К
unknown€€€€€€€€€√
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287683098kБ~А3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ √
T__inference_batch_normalization_2_layer_call_and_return_conditional_losses_287683132kАБ~3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Э
9__inference_batch_normalization_2_layer_call_fn_287683065`Б~А3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "!К
unknown€€€€€€€€€Э
9__inference_batch_normalization_2_layer_call_fn_287683078`АБ~3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "!К
unknown€€€€€€€€€њ
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287682844iGDFE3Ґ0
)Ґ&
 К
inputs€€€€€€€€€0
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€0
Ъ њ
R__inference_batch_normalization_layer_call_and_return_conditional_losses_287682878iFGDE3Ґ0
)Ґ&
 К
inputs€€€€€€€€€0
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€0
Ъ Щ
7__inference_batch_normalization_layer_call_fn_287682811^GDFE3Ґ0
)Ґ&
 К
inputs€€€€€€€€€0
p 
™ "!К
unknown€€€€€€€€€0Щ
7__inference_batch_normalization_layer_call_fn_287682824^FGDE3Ґ0
)Ґ&
 К
inputs€€€€€€€€€0
p
™ "!К
unknown€€€€€€€€€0ў
J__inference_concatenate_layer_call_and_return_conditional_losses_287682778КZҐW
PҐM
KЪH
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€<
™ ",Ґ)
"К
tensor_0€€€€€€€€€P
Ъ ≤
/__inference_concatenate_layer_call_fn_287682771ZҐW
PҐM
KЪH
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€<
™ "!К
unknown€€€€€€€€€P≠
F__inference_dense_1_layer_call_and_return_conditional_losses_287682925cWX/Ґ,
%Ґ"
 К
inputs€€€€€€€€€0
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ З
+__inference_dense_1_layer_call_fn_287682914XWX/Ґ,
%Ґ"
 К
inputs€€€€€€€€€0
™ "!К
unknown€€€€€€€€€≠
F__inference_dense_2_layer_call_and_return_conditional_losses_287683052ctu/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ З
+__inference_dense_2_layer_call_fn_287683041Xtu/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€ѓ
F__inference_dense_3_layer_call_and_return_conditional_losses_287683179eСТ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Й
+__inference_dense_3_layer_call_fn_287683168ZСТ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€Ђ
D__inference_dense_layer_call_and_return_conditional_losses_287682798c:;/Ґ,
%Ґ"
 К
inputs€€€€€€€€€P
™ ",Ґ)
"К
tensor_0€€€€€€€€€0
Ъ Е
)__inference_dense_layer_call_fn_287682787X:;/Ґ,
%Ґ"
 К
inputs€€€€€€€€€P
™ "!К
unknown€€€€€€€€€0ѓ
H__inference_dropout_1_layer_call_and_return_conditional_losses_287683020c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ѓ
H__inference_dropout_1_layer_call_and_return_conditional_losses_287683032c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Й
-__inference_dropout_1_layer_call_fn_287683010X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "!К
unknown€€€€€€€€€Й
-__inference_dropout_1_layer_call_fn_287683015X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "!К
unknown€€€€€€€€€ѓ
H__inference_dropout_2_layer_call_and_return_conditional_losses_287683147c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ѓ
H__inference_dropout_2_layer_call_and_return_conditional_losses_287683159c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Й
-__inference_dropout_2_layer_call_fn_287683137X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "!К
unknown€€€€€€€€€Й
-__inference_dropout_2_layer_call_fn_287683142X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "!К
unknown€€€€€€€€€≠
F__inference_dropout_layer_call_and_return_conditional_losses_287682893c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€0
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€0
Ъ ≠
F__inference_dropout_layer_call_and_return_conditional_losses_287682905c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€0
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€0
Ъ З
+__inference_dropout_layer_call_fn_287682883X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€0
p 
™ "!К
unknown€€€€€€€€€0З
+__inference_dropout_layer_call_fn_287682888X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€0
p
™ "!К
unknown€€€€€€€€€0Њ
C__inference_lstm_layer_call_and_return_conditional_losses_287682668wФХЦ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Њ
C__inference_lstm_layer_call_and_return_conditional_losses_287682765wФХЦ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ш
(__inference_lstm_layer_call_fn_287682560lФХЦ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "!К
unknown€€€€€€€€€Ш
(__inference_lstm_layer_call_fn_287682571lФХЦ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "!К
unknown€€€€€€€€€±
F__inference_masking_layer_call_and_return_conditional_losses_287682549g3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Л
+__inference_masking_layer_call_fn_287682538\3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€э
D__inference_model_layer_call_and_return_conditional_losses_287681804іФХЦ:;GDFEWXdacbtuБ~АСТdҐa
ZҐW
MЪJ
%К"
input_1€€€€€€€€€
!К
input_2€€€€€€€€€<
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ э
D__inference_model_layer_call_and_return_conditional_losses_287681868іФХЦ:;FGDEWXcdabtuАБ~СТdҐa
ZҐW
MЪJ
%К"
input_1€€€€€€€€€
!К
input_2€€€€€€€€€<
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ €
D__inference_model_layer_call_and_return_conditional_losses_287682249ґФХЦ:;GDFEWXdacbtuБ~АСТfҐc
\ҐY
OЪL
&К#
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€<
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ €
D__inference_model_layer_call_and_return_conditional_losses_287682533ґФХЦ:;FGDEWXcdabtuАБ~СТfҐc
\ҐY
OЪL
&К#
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€<
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ „
)__inference_model_layer_call_fn_287681278©ФХЦ:;GDFEWXdacbtuБ~АСТdҐa
ZҐW
MЪJ
%К"
input_1€€€€€€€€€
!К
input_2€€€€€€€€€<
p 

 
™ "!К
unknown€€€€€€€€€„
)__inference_model_layer_call_fn_287681740©ФХЦ:;FGDEWXcdabtuАБ~СТdҐa
ZҐW
MЪJ
%К"
input_1€€€€€€€€€
!К
input_2€€€€€€€€€<
p

 
™ "!К
unknown€€€€€€€€€ў
)__inference_model_layer_call_fn_287681976ЂФХЦ:;GDFEWXdacbtuБ~АСТfҐc
\ҐY
OЪL
&К#
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€<
p 

 
™ "!К
unknown€€€€€€€€€ў
)__inference_model_layer_call_fn_287682028ЂФХЦ:;FGDEWXcdabtuАБ~СТfҐc
\ҐY
OЪL
&К#
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€<
p

 
™ "!К
unknown€€€€€€€€€о
'__inference_signature_wrapper_287681924¬ФХЦ:;GDFEWXdacbtuБ~АСТmҐj
Ґ 
c™`
0
input_1%К"
input_1€€€€€€€€€
,
input_2!К
input_2€€€€€€€€€<"1™.
,
dense_3!К
dense_3€€€€€€€€€