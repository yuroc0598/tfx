Ћ9
хIЩI
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
И
AsString

input"T

output"
Ttype:
2		
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW

BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
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
Й
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
Й
EncodeProto	
sizes
values2Tinput_types	
bytes"
field_nameslist(string)"
message_typestring"'
descriptor_sourcestring
local://"
Tinput_types
list(type)(0
h
Equal
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
,
Exp
x"T
y"T"
Ttype:

2
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
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
Ё
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
Щ
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ўџџџџџџџџ"
value_indexint(0ўџџџџџџџџ"+

vocab_sizeintџџџџџџџџџ(0џџџџџџџџџ"
	delimiterstring	
+
IsNan
x"T
y
"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z



LogicalNot
x

y

#
	LogicalOr
x

y

z

w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
2
LookupTableSizeV2
table_handle
size	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 

ParseExampleV2

serialized	
names
sparse_keys

dense_keys
ragged_keys
dense_defaults2Tdense
sparse_indices	*
num_sparse
sparse_values2sparse_types
sparse_shapes	*
num_sparse
dense_values2Tdense#
ragged_values2ragged_value_types'
ragged_row_splits2ragged_split_types"
Tdense
list(type)(:
2	"

num_sparseint("%
sparse_types
list(type)(:
2	"+
ragged_value_types
list(type)(:
2	"*
ragged_split_types
list(type)(:
2	"
dense_shapeslist(shape)(
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
М
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"eval*1.15.02unknown8ЉН-

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
k
global_step
VariableV2*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: 

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
o
input_example_tensorPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
d
!ParseExample/ParseExampleV2/namesConst*
_output_shapes
: *
dtype0*
valueB 

'ParseExample/ParseExampleV2/sparse_keysConst*
_output_shapes
:*
dtype0*Н
valueГBАBcompanyBdropoff_census_tractBdropoff_community_areaBdropoff_latitudeBdropoff_longitudeBfareBpayment_typeBpickup_census_tractBpickup_community_areaBpickup_latitudeBpickup_longitudeBtipsB
trip_milesBtrip_secondsBtrip_start_dayBtrip_start_hourBtrip_start_monthBtrip_start_timestamp
i
&ParseExample/ParseExampleV2/dense_keysConst*
_output_shapes
: *
dtype0*
valueB 
j
'ParseExample/ParseExampleV2/ragged_keysConst*
_output_shapes
: *
dtype0*
valueB 
й
ParseExample/ParseExampleV2ParseExampleV2input_example_tensor!ParseExample/ParseExampleV2/names'ParseExample/ParseExampleV2/sparse_keys&ParseExample/ParseExampleV2/dense_keys'ParseExample/ParseExampleV2/ragged_keys*
Tdense
 *ц
_output_shapesг
а:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ::::::::::::::::::*
dense_shapes
 *

num_sparse*
ragged_split_types
 *
ragged_value_types
 *&
sparse_types
2									
Р
ConstConst*
_output_shapes
: *
dtype0*
valueB~ Bx/tmp/tmp35afon_g/pipeline/Transform/transform_output/4/transform_fn/assets/vocab_compute_and_apply_vocabulary_vocabulary
Х
Const_1Const*
_output_shapes
: *
dtype0*
valueB Bz/tmp/tmp35afon_g/pipeline/Transform/transform_output/4/transform_fn/assets/vocab_compute_and_apply_vocabulary_1_vocabulary
T
transform/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *\щR@
V
transform/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *жљMC
V
transform/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *6B=A
V
transform/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *ЕЎЮE
V
transform/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ІD
V
transform/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *}rI
д
transform/Const_6Const*
_output_shapes
: *
dtype0*
valueB B/tmp/tmp35afon_g/pipeline/Transform/transform_output/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary
з
transform/Const_7Const*
_output_shapes
: *
dtype0*
valueB B/tmp/tmp35afon_g/pipeline/Transform/transform_output/4/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary
~
transform/Const_8Const*
_output_shapes
:	*
dtype0*9
value0B.	"$`+'BЛx'B#'Bs'Bф'Bж'BшА'BЪ'Bё'B

transform/Const_9Const*
_output_shapes
:*
dtype0*A
value8B6",0xЏТkЏТ­aЏТ\ЏТ#WЏТaRЏТЯMЏТ	IЏТїCЏТ@ЏТ=ЏТ

transform/Const_10Const*
_output_shapes
:	*
dtype0*9
value0B.	"$+'BБl'B['B'Bю'B1'BћЏ'BуЦ'Beђ'B

transform/Const_11Const*
_output_shapes
:*
dtype0*A
value8B6",ЉyЏТКlЏТcЏТ.]ЏТWЏТЉRЏТNЏТ	IЏТїCЏТ@ЏТK=ЏТ
q
(transform/transform/inputs/company/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

)transform/transform/inputs/company/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

*transform/transform/inputs/company/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

7transform/transform/inputs/F_dropoff_census_tract/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

8transform/transform/inputs/F_dropoff_census_tract/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

9transform/transform/inputs/F_dropoff_census_tract/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

9transform/transform/inputs/F_dropoff_community_area/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

:transform/transform/inputs/F_dropoff_community_area/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

;transform/transform/inputs/F_dropoff_community_area/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
|
3transform/transform/inputs/F_dropoff_latitude/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

4transform/transform/inputs/F_dropoff_latitude/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

5transform/transform/inputs/F_dropoff_latitude/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
}
4transform/transform/inputs/F_dropoff_longitude/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

5transform/transform/inputs/F_dropoff_longitude/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

6transform/transform/inputs/F_dropoff_longitude/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
n
%transform/transform/inputs/fare/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

&transform/transform/inputs/fare/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

'transform/transform/inputs/fare/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
x
/transform/transform/inputs/F_payment_type/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

0transform/transform/inputs/F_payment_type/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

1transform/transform/inputs/F_payment_type/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

6transform/transform/inputs/F_pickup_census_tract/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

7transform/transform/inputs/F_pickup_census_tract/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

8transform/transform/inputs/F_pickup_census_tract/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

8transform/transform/inputs/F_pickup_community_area/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

9transform/transform/inputs/F_pickup_community_area/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

:transform/transform/inputs/F_pickup_community_area/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
{
2transform/transform/inputs/F_pickup_latitude/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

3transform/transform/inputs/F_pickup_latitude/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

4transform/transform/inputs/F_pickup_latitude/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
|
3transform/transform/inputs/F_pickup_longitude/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

4transform/transform/inputs/F_pickup_longitude/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

5transform/transform/inputs/F_pickup_longitude/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
n
%transform/transform/inputs/tips/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

&transform/transform/inputs/tips/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

'transform/transform/inputs/tips/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
v
-transform/transform/inputs/F_trip_miles/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

.transform/transform/inputs/F_trip_miles/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ

/transform/transform/inputs/F_trip_miles/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
x
/transform/transform/inputs/F_trip_seconds/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

0transform/transform/inputs/F_trip_seconds/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

1transform/transform/inputs/F_trip_seconds/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
z
1transform/transform/inputs/F_trip_start_day/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

2transform/transform/inputs/F_trip_start_day/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

3transform/transform/inputs/F_trip_start_day/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
{
2transform/transform/inputs/F_trip_start_hour/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

3transform/transform/inputs/F_trip_start_hour/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

4transform/transform/inputs/F_trip_start_hour/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ
|
3transform/transform/inputs/F_trip_start_month/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

4transform/transform/inputs/F_trip_start_month/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

5transform/transform/inputs/F_trip_start_month/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

7transform/transform/inputs/F_trip_start_timestamp/shapePlaceholder*
_output_shapes
:*
dtype0	*
shape:

8transform/transform/inputs/F_trip_start_timestamp/valuesPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

9transform/transform/inputs/F_trip_start_timestamp/indicesPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0	*
shape:џџџџџџџџџ

6transform/transform/inputs/inputs/company/indices_copyIdentityParseExample/ParseExampleV2*
T0	*'
_output_shapes
:џџџџџџџџџ

5transform/transform/inputs/inputs/company/values_copyIdentityParseExample/ParseExampleV2:18*
T0*#
_output_shapes
:џџџџџџџџџ

4transform/transform/inputs/inputs/company/shape_copyIdentityParseExample/ParseExampleV2:36*
T0	*
_output_shapes
:
Ђ
Etransform/transform/inputs/inputs/F_dropoff_census_tract/indices_copyIdentityParseExample/ParseExampleV2:1*
T0	*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/inputs/inputs/F_dropoff_census_tract/values_copyIdentityParseExample/ParseExampleV2:19*
T0	*#
_output_shapes
:џџџџџџџџџ

Ctransform/transform/inputs/inputs/F_dropoff_census_tract/shape_copyIdentityParseExample/ParseExampleV2:37*
T0	*
_output_shapes
:
Є
Gtransform/transform/inputs/inputs/F_dropoff_community_area/indices_copyIdentityParseExample/ParseExampleV2:2*
T0	*'
_output_shapes
:џџџџџџџџџ
 
Ftransform/transform/inputs/inputs/F_dropoff_community_area/values_copyIdentityParseExample/ParseExampleV2:20*
T0	*#
_output_shapes
:џџџџџџџџџ

Etransform/transform/inputs/inputs/F_dropoff_community_area/shape_copyIdentityParseExample/ParseExampleV2:38*
T0	*
_output_shapes
:

Atransform/transform/inputs/inputs/F_dropoff_latitude/indices_copyIdentityParseExample/ParseExampleV2:3*
T0	*'
_output_shapes
:џџџџџџџџџ

@transform/transform/inputs/inputs/F_dropoff_latitude/values_copyIdentityParseExample/ParseExampleV2:21*
T0*#
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_dropoff_latitude/shape_copyIdentityParseExample/ParseExampleV2:39*
T0	*
_output_shapes
:

Btransform/transform/inputs/inputs/F_dropoff_longitude/indices_copyIdentityParseExample/ParseExampleV2:4*
T0	*'
_output_shapes
:џџџџџџџџџ

Atransform/transform/inputs/inputs/F_dropoff_longitude/values_copyIdentityParseExample/ParseExampleV2:22*
T0*#
_output_shapes
:џџџџџџџџџ

@transform/transform/inputs/inputs/F_dropoff_longitude/shape_copyIdentityParseExample/ParseExampleV2:40*
T0	*
_output_shapes
:

3transform/transform/inputs/inputs/fare/indices_copyIdentityParseExample/ParseExampleV2:5*
T0	*'
_output_shapes
:џџџџџџџџџ

2transform/transform/inputs/inputs/fare/values_copyIdentityParseExample/ParseExampleV2:23*
T0*#
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/inputs/fare/shape_copyIdentityParseExample/ParseExampleV2:41*
T0	*
_output_shapes
:

=transform/transform/inputs/inputs/F_payment_type/indices_copyIdentityParseExample/ParseExampleV2:6*
T0	*'
_output_shapes
:џџџџџџџџџ

<transform/transform/inputs/inputs/F_payment_type/values_copyIdentityParseExample/ParseExampleV2:24*
T0*#
_output_shapes
:џџџџџџџџџ

;transform/transform/inputs/inputs/F_payment_type/shape_copyIdentityParseExample/ParseExampleV2:42*
T0	*
_output_shapes
:
Ё
Dtransform/transform/inputs/inputs/F_pickup_census_tract/indices_copyIdentityParseExample/ParseExampleV2:7*
T0	*'
_output_shapes
:џџџџџџџџџ

Ctransform/transform/inputs/inputs/F_pickup_census_tract/values_copyIdentityParseExample/ParseExampleV2:25*
T0	*#
_output_shapes
:џџџџџџџџџ

Btransform/transform/inputs/inputs/F_pickup_census_tract/shape_copyIdentityParseExample/ParseExampleV2:43*
T0	*
_output_shapes
:
Ѓ
Ftransform/transform/inputs/inputs/F_pickup_community_area/indices_copyIdentityParseExample/ParseExampleV2:8*
T0	*'
_output_shapes
:џџџџџџџџџ

Etransform/transform/inputs/inputs/F_pickup_community_area/values_copyIdentityParseExample/ParseExampleV2:26*
T0	*#
_output_shapes
:џџџџџџџџџ

Dtransform/transform/inputs/inputs/F_pickup_community_area/shape_copyIdentityParseExample/ParseExampleV2:44*
T0	*
_output_shapes
:

@transform/transform/inputs/inputs/F_pickup_latitude/indices_copyIdentityParseExample/ParseExampleV2:9*
T0	*'
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_pickup_latitude/values_copyIdentityParseExample/ParseExampleV2:27*
T0*#
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/F_pickup_latitude/shape_copyIdentityParseExample/ParseExampleV2:45*
T0	*
_output_shapes
:

Atransform/transform/inputs/inputs/F_pickup_longitude/indices_copyIdentityParseExample/ParseExampleV2:10*
T0	*'
_output_shapes
:џџџџџџџџџ

@transform/transform/inputs/inputs/F_pickup_longitude/values_copyIdentityParseExample/ParseExampleV2:28*
T0*#
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_pickup_longitude/shape_copyIdentityParseExample/ParseExampleV2:46*
T0	*
_output_shapes
:

3transform/transform/inputs/inputs/tips/indices_copyIdentityParseExample/ParseExampleV2:11*
T0	*'
_output_shapes
:џџџџџџџџџ

2transform/transform/inputs/inputs/tips/values_copyIdentityParseExample/ParseExampleV2:29*
T0*#
_output_shapes
:џџџџџџџџџ

1transform/transform/inputs/inputs/tips/shape_copyIdentityParseExample/ParseExampleV2:47*
T0	*
_output_shapes
:

;transform/transform/inputs/inputs/F_trip_miles/indices_copyIdentityParseExample/ParseExampleV2:12*
T0	*'
_output_shapes
:џџџџџџџџџ

:transform/transform/inputs/inputs/F_trip_miles/values_copyIdentityParseExample/ParseExampleV2:30*
T0*#
_output_shapes
:џџџџџџџџџ

9transform/transform/inputs/inputs/F_trip_miles/shape_copyIdentityParseExample/ParseExampleV2:48*
T0	*
_output_shapes
:

=transform/transform/inputs/inputs/F_trip_seconds/indices_copyIdentityParseExample/ParseExampleV2:13*
T0	*'
_output_shapes
:џџџџџџџџџ

<transform/transform/inputs/inputs/F_trip_seconds/values_copyIdentityParseExample/ParseExampleV2:31*
T0	*#
_output_shapes
:џџџџџџџџџ

;transform/transform/inputs/inputs/F_trip_seconds/shape_copyIdentityParseExample/ParseExampleV2:49*
T0	*
_output_shapes
:

?transform/transform/inputs/inputs/F_trip_start_day/indices_copyIdentityParseExample/ParseExampleV2:14*
T0	*'
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/F_trip_start_day/values_copyIdentityParseExample/ParseExampleV2:32*
T0	*#
_output_shapes
:џџџџџџџџџ

=transform/transform/inputs/inputs/F_trip_start_day/shape_copyIdentityParseExample/ParseExampleV2:50*
T0	*
_output_shapes
:

@transform/transform/inputs/inputs/F_trip_start_hour/indices_copyIdentityParseExample/ParseExampleV2:15*
T0	*'
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_trip_start_hour/values_copyIdentityParseExample/ParseExampleV2:33*
T0	*#
_output_shapes
:џџџџџџџџџ

>transform/transform/inputs/inputs/F_trip_start_hour/shape_copyIdentityParseExample/ParseExampleV2:51*
T0	*
_output_shapes
:

Atransform/transform/inputs/inputs/F_trip_start_month/indices_copyIdentityParseExample/ParseExampleV2:16*
T0	*'
_output_shapes
:џџџџџџџџџ

@transform/transform/inputs/inputs/F_trip_start_month/values_copyIdentityParseExample/ParseExampleV2:34*
T0	*#
_output_shapes
:џџџџџџџџџ

?transform/transform/inputs/inputs/F_trip_start_month/shape_copyIdentityParseExample/ParseExampleV2:52*
T0	*
_output_shapes
:
Ѓ
Etransform/transform/inputs/inputs/F_trip_start_timestamp/indices_copyIdentityParseExample/ParseExampleV2:17*
T0	*'
_output_shapes
:џџџџџџџџџ

Dtransform/transform/inputs/inputs/F_trip_start_timestamp/values_copyIdentityParseExample/ParseExampleV2:35*
T0	*#
_output_shapes
:џџџџџџџџџ

Ctransform/transform/inputs/inputs/F_trip_start_timestamp/shape_copyIdentityParseExample/ParseExampleV2:53*
T0	*
_output_shapes
:
q
'transform/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
s
)transform/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
s
)transform/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Б
!transform/transform/strided_sliceStridedSlice9transform/transform/inputs/inputs/F_trip_miles/shape_copy'transform/transform/strided_slice/stack)transform/transform/strided_slice/stack_1)transform/transform/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
p
.transform/transform/SparseTensor/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Е
,transform/transform/SparseTensor/dense_shapePack!transform/transform/strided_slice.transform/transform/SparseTensor/dense_shape/1*
N*
T0	*
_output_shapes
:
t
/transform/transform/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ь
!transform/transform/SparseToDenseSparseToDense;transform/transform/inputs/inputs/F_trip_miles/indices_copy,transform/transform/SparseTensor/dense_shape:transform/transform/inputs/inputs/F_trip_miles/values_copy/transform/transform/SparseToDense/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/SqueezeSqueeze!transform/transform/SparseToDense*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

|
6transform/transform/scale_to_z_score/mean_and_var/SizeSizetransform/transform/Squeeze*
T0*
_output_shapes
: 
І
6transform/transform/scale_to_z_score/mean_and_var/CastCast6transform/transform/scale_to_z_score/mean_and_var/Size*

DstT0*

SrcT0*
_output_shapes
: 

7transform/transform/scale_to_z_score/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Г
5transform/transform/scale_to_z_score/mean_and_var/SumSumtransform/transform/Squeeze7transform/transform/scale_to_z_score/mean_and_var/Const*
T0*
_output_shapes
: 
д
9transform/transform/scale_to_z_score/mean_and_var/truedivRealDiv5transform/transform/scale_to_z_score/mean_and_var/Sum6transform/transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
Т
5transform/transform/scale_to_z_score/mean_and_var/subSubtransform/transform/Squeeze9transform/transform/scale_to_z_score/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ї
8transform/transform/scale_to_z_score/mean_and_var/SquareSquare5transform/transform/scale_to_z_score/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

9transform/transform/scale_to_z_score/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
д
7transform/transform/scale_to_z_score/mean_and_var/Sum_1Sum8transform/transform/scale_to_z_score/mean_and_var/Square9transform/transform/scale_to_z_score/mean_and_var/Const_1*
T0*
_output_shapes
: 
и
;transform/transform/scale_to_z_score/mean_and_var/truediv_1RealDiv7transform/transform/scale_to_z_score/mean_and_var/Sum_16transform/transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
|
7transform/transform/scale_to_z_score/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
~
=transform/transform/scale_to_z_score/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

?transform/transform/scale_to_z_score/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 

(transform/transform/scale_to_z_score/subSubtransform/transform/Squeezetransform/Const*
T0*#
_output_shapes
:џџџџџџџџџ
e
)transform/transform/scale_to_z_score/SqrtSqrttransform/Const_1*
T0*
_output_shapes
: 
t
/transform/transform/scale_to_z_score/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Ж
-transform/transform/scale_to_z_score/NotEqualNotEqual)transform/transform/scale_to_z_score/Sqrt/transform/transform/scale_to_z_score/NotEqual/y*
T0*
_output_shapes
: 

/transform/transform/scale_to_z_score/zeros_like	ZerosLike(transform/transform/scale_to_z_score/sub*
T0*#
_output_shapes
:џџџџџџџџџ

)transform/transform/scale_to_z_score/CastCast-transform/transform/scale_to_z_score/NotEqual*

DstT0*

SrcT0
*
_output_shapes
: 
Л
(transform/transform/scale_to_z_score/addAddV2/transform/transform/scale_to_z_score/zeros_like)transform/transform/scale_to_z_score/Cast*
T0*#
_output_shapes
:џџџџџџџџџ

+transform/transform/scale_to_z_score/Cast_1Cast(transform/transform/scale_to_z_score/add*

DstT0
*

SrcT0*#
_output_shapes
:џџџџџџџџџ
К
,transform/transform/scale_to_z_score/truedivRealDiv(transform/transform/scale_to_z_score/sub)transform/transform/scale_to_z_score/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
ш
+transform/transform/scale_to_z_score/SelectSelect+transform/transform/scale_to_z_score/Cast_1,transform/transform/scale_to_z_score/truediv(transform/transform/scale_to_z_score/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Б
#transform/transform/strided_slice_1StridedSlice1transform/transform/inputs/inputs/fare/shape_copy)transform/transform/strided_slice_1/stack+transform/transform/strided_slice_1/stack_1+transform/transform/strided_slice_1/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_1/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Л
.transform/transform/SparseTensor_1/dense_shapePack#transform/transform/strided_slice_10transform/transform/SparseTensor_1/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_1/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Т
#transform/transform/SparseToDense_1SparseToDense3transform/transform/inputs/inputs/fare/indices_copy.transform/transform/SparseTensor_1/dense_shape2transform/transform/inputs/inputs/fare/values_copy1transform/transform/SparseToDense_1/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_1Squeeze#transform/transform/SparseToDense_1*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


8transform/transform/scale_to_z_score_1/mean_and_var/SizeSizetransform/transform/Squeeze_1*
T0*
_output_shapes
: 
Њ
8transform/transform/scale_to_z_score_1/mean_and_var/CastCast8transform/transform/scale_to_z_score_1/mean_and_var/Size*

DstT0*

SrcT0*
_output_shapes
: 

9transform/transform/scale_to_z_score_1/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Й
7transform/transform/scale_to_z_score_1/mean_and_var/SumSumtransform/transform/Squeeze_19transform/transform/scale_to_z_score_1/mean_and_var/Const*
T0*
_output_shapes
: 
к
;transform/transform/scale_to_z_score_1/mean_and_var/truedivRealDiv7transform/transform/scale_to_z_score_1/mean_and_var/Sum8transform/transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
Ш
7transform/transform/scale_to_z_score_1/mean_and_var/subSubtransform/transform/Squeeze_1;transform/transform/scale_to_z_score_1/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
:transform/transform/scale_to_z_score_1/mean_and_var/SquareSquare7transform/transform/scale_to_z_score_1/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

;transform/transform/scale_to_z_score_1/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
к
9transform/transform/scale_to_z_score_1/mean_and_var/Sum_1Sum:transform/transform/scale_to_z_score_1/mean_and_var/Square;transform/transform/scale_to_z_score_1/mean_and_var/Const_1*
T0*
_output_shapes
: 
о
=transform/transform/scale_to_z_score_1/mean_and_var/truediv_1RealDiv9transform/transform/scale_to_z_score_1/mean_and_var/Sum_18transform/transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
~
9transform/transform/scale_to_z_score_1/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    

?transform/transform/scale_to_z_score_1/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

Atransform/transform/scale_to_z_score_1/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 

*transform/transform/scale_to_z_score_1/subSubtransform/transform/Squeeze_1transform/Const_2*
T0*#
_output_shapes
:џџџџџџџџџ
g
+transform/transform/scale_to_z_score_1/SqrtSqrttransform/Const_3*
T0*
_output_shapes
: 
v
1transform/transform/scale_to_z_score_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
М
/transform/transform/scale_to_z_score_1/NotEqualNotEqual+transform/transform/scale_to_z_score_1/Sqrt1transform/transform/scale_to_z_score_1/NotEqual/y*
T0*
_output_shapes
: 

1transform/transform/scale_to_z_score_1/zeros_like	ZerosLike*transform/transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:џџџџџџџџџ

+transform/transform/scale_to_z_score_1/CastCast/transform/transform/scale_to_z_score_1/NotEqual*

DstT0*

SrcT0
*
_output_shapes
: 
С
*transform/transform/scale_to_z_score_1/addAddV21transform/transform/scale_to_z_score_1/zeros_like+transform/transform/scale_to_z_score_1/Cast*
T0*#
_output_shapes
:џџџџџџџџџ

-transform/transform/scale_to_z_score_1/Cast_1Cast*transform/transform/scale_to_z_score_1/add*

DstT0
*

SrcT0*#
_output_shapes
:џџџџџџџџџ
Р
.transform/transform/scale_to_z_score_1/truedivRealDiv*transform/transform/scale_to_z_score_1/sub+transform/transform/scale_to_z_score_1/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
№
-transform/transform/scale_to_z_score_1/SelectSelect-transform/transform/scale_to_z_score_1/Cast_1.transform/transform/scale_to_z_score_1/truediv*transform/transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Л
#transform/transform/strided_slice_2StridedSlice;transform/transform/inputs/inputs/F_trip_seconds/shape_copy)transform/transform/strided_slice_2/stack+transform/transform/strided_slice_2/stack_1+transform/transform/strided_slice_2/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_2/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Л
.transform/transform/SparseTensor_2/dense_shapePack#transform/transform/strided_slice_20transform/transform/SparseTensor_2/dense_shape/1*
N*
T0	*
_output_shapes
:
s
1transform/transform/SparseToDense_2/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ж
#transform/transform/SparseToDense_2SparseToDense=transform/transform/inputs/inputs/F_trip_seconds/indices_copy.transform/transform/SparseTensor_2/dense_shape<transform/transform/inputs/inputs/F_trip_seconds/values_copy1transform/transform/SparseToDense_2/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_2Squeeze#transform/transform/SparseToDense_2*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


8transform/transform/scale_to_z_score_2/mean_and_var/CastCasttransform/transform/Squeeze_2*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ

8transform/transform/scale_to_z_score_2/mean_and_var/SizeSize8transform/transform/scale_to_z_score_2/mean_and_var/Cast*
T0*
_output_shapes
: 
Ќ
:transform/transform/scale_to_z_score_2/mean_and_var/Cast_1Cast8transform/transform/scale_to_z_score_2/mean_and_var/Size*

DstT0*

SrcT0*
_output_shapes
: 

9transform/transform/scale_to_z_score_2/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
д
7transform/transform/scale_to_z_score_2/mean_and_var/SumSum8transform/transform/scale_to_z_score_2/mean_and_var/Cast9transform/transform/scale_to_z_score_2/mean_and_var/Const*
T0*
_output_shapes
: 
м
;transform/transform/scale_to_z_score_2/mean_and_var/truedivRealDiv7transform/transform/scale_to_z_score_2/mean_and_var/Sum:transform/transform/scale_to_z_score_2/mean_and_var/Cast_1*
T0*
_output_shapes
: 
у
7transform/transform/scale_to_z_score_2/mean_and_var/subSub8transform/transform/scale_to_z_score_2/mean_and_var/Cast;transform/transform/scale_to_z_score_2/mean_and_var/truediv*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
:transform/transform/scale_to_z_score_2/mean_and_var/SquareSquare7transform/transform/scale_to_z_score_2/mean_and_var/sub*
T0*#
_output_shapes
:џџџџџџџџџ

;transform/transform/scale_to_z_score_2/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
к
9transform/transform/scale_to_z_score_2/mean_and_var/Sum_1Sum:transform/transform/scale_to_z_score_2/mean_and_var/Square;transform/transform/scale_to_z_score_2/mean_and_var/Const_1*
T0*
_output_shapes
: 
р
=transform/transform/scale_to_z_score_2/mean_and_var/truediv_1RealDiv9transform/transform/scale_to_z_score_2/mean_and_var/Sum_1:transform/transform/scale_to_z_score_2/mean_and_var/Cast_1*
T0*
_output_shapes
: 
~
9transform/transform/scale_to_z_score_2/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    

?transform/transform/scale_to_z_score_2/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

Atransform/transform/scale_to_z_score_2/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 

+transform/transform/scale_to_z_score_2/CastCasttransform/transform/Squeeze_2*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ

*transform/transform/scale_to_z_score_2/subSub+transform/transform/scale_to_z_score_2/Casttransform/Const_4*
T0*#
_output_shapes
:џџџџџџџџџ
g
+transform/transform/scale_to_z_score_2/SqrtSqrttransform/Const_5*
T0*
_output_shapes
: 
v
1transform/transform/scale_to_z_score_2/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
М
/transform/transform/scale_to_z_score_2/NotEqualNotEqual+transform/transform/scale_to_z_score_2/Sqrt1transform/transform/scale_to_z_score_2/NotEqual/y*
T0*
_output_shapes
: 

1transform/transform/scale_to_z_score_2/zeros_like	ZerosLike*transform/transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:џџџџџџџџџ

-transform/transform/scale_to_z_score_2/Cast_1Cast/transform/transform/scale_to_z_score_2/NotEqual*

DstT0*

SrcT0
*
_output_shapes
: 
У
*transform/transform/scale_to_z_score_2/addAddV21transform/transform/scale_to_z_score_2/zeros_like-transform/transform/scale_to_z_score_2/Cast_1*
T0*#
_output_shapes
:џџџџџџџџџ

-transform/transform/scale_to_z_score_2/Cast_2Cast*transform/transform/scale_to_z_score_2/add*

DstT0
*

SrcT0*#
_output_shapes
:џџџџџџџџџ
Р
.transform/transform/scale_to_z_score_2/truedivRealDiv*transform/transform/scale_to_z_score_2/sub+transform/transform/scale_to_z_score_2/Sqrt*
T0*#
_output_shapes
:џџџџџџџџџ
№
-transform/transform/scale_to_z_score_2/SelectSelect-transform/transform/scale_to_z_score_2/Cast_2.transform/transform/scale_to_z_score_2/truediv*transform/transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:џџџџџџџџџ
s
)transform/transform/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Л
#transform/transform/strided_slice_3StridedSlice;transform/transform/inputs/inputs/F_payment_type/shape_copy)transform/transform/strided_slice_3/stack+transform/transform/strided_slice_3/stack_1+transform/transform/strided_slice_3/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_3/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Л
.transform/transform/SparseTensor_3/dense_shapePack#transform/transform/strided_slice_30transform/transform/SparseTensor_3/dense_shape/1*
N*
T0	*
_output_shapes
:
r
1transform/transform/SparseToDense_3/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
ж
#transform/transform/SparseToDense_3SparseToDense=transform/transform/inputs/inputs/F_payment_type/indices_copy.transform/transform/SparseTensor_3/dense_shape<transform/transform/inputs/inputs/F_payment_type/values_copy1transform/transform/SparseToDense_3/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_3Squeeze#transform/transform/SparseToDense_3*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
ц
Ctransform/transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/transform/Squeeze_3Itransform/transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*#
_output_shapes
:џџџџџџџџџ

Gtransform/transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџ

Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
value_dtype0	

itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst*
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџ
ф
ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 

Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

О
Ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2ntransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
Ы
Ztransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_3*#
_output_shapes
:џџџџџџџџџ*
num_buckets

я
rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_tabletransform/transform/Squeeze_3Btransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
ц
ptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Gtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
е
Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddZtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketptransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Щ
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Btransform/transform/compute_and_apply_vocabulary/apply_vocab/Const*
T0	*#
_output_shapes
:џџџџџџџџџ
В
Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Wtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualrtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Rtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:џџџџџџџџџ

Dtransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
ў
@transform/transform/compute_and_apply_vocabulary/apply_vocab/subSubPtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addBtransform/transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Д
#transform/transform/strided_slice_4StridedSlice4transform/transform/inputs/inputs/company/shape_copy)transform/transform/strided_slice_4/stack+transform/transform/strided_slice_4/stack_1+transform/transform/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_4/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Л
.transform/transform/SparseTensor_4/dense_shapePack#transform/transform/strided_slice_40transform/transform/SparseTensor_4/dense_shape/1*
N*
T0	*
_output_shapes
:
r
1transform/transform/SparseToDense_4/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
Ш
#transform/transform/SparseToDense_4SparseToDense6transform/transform/inputs/inputs/company/indices_copy.transform/transform/SparseTensor_4/dense_shape5transform/transform/inputs/inputs/company/values_copy1transform/transform/SparseToDense_4/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_4Squeeze#transform/transform/SparseToDense_4*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
ъ
Etransform/transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshapetransform/transform/Squeeze_4Ktransform/transform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*#
_output_shapes
:џџџџџџџџџ

Itransform/transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
џџџџџџџџџ

Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
value_dtype0	

ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_1*
	key_indexўџџџџџџџџ*
value_indexџџџџџџџџџ
ш
ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 

Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

Ф
Rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ptransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
Э
\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/transform/Squeeze_4*#
_output_shapes
:џџџџџџџџџ*
num_buckets

ѕ
ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tabletransform/transform/Squeeze_4Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:џџџџџџџџџ
ъ
rtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2Itransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
л
Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAdd\transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketrtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Я
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const*
T0	*#
_output_shapes
:џџџџџџџџџ
К
Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Ytransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Ttransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:џџџџџџџџџ

Ftransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 

Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

Btransform/transform/compute_and_apply_vocabulary_1/apply_vocab/subSubRtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addDtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
s
)transform/transform/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
О
#transform/transform/strided_slice_5StridedSlice>transform/transform/inputs/inputs/F_pickup_latitude/shape_copy)transform/transform/strided_slice_5/stack+transform/transform/strided_slice_5/stack_1+transform/transform/strided_slice_5/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_5/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Л
.transform/transform/SparseTensor_5/dense_shapePack#transform/transform/strided_slice_50transform/transform/SparseTensor_5/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_5/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
м
#transform/transform/SparseToDense_5SparseToDense@transform/transform/inputs/inputs/F_pickup_latitude/indices_copy.transform/transform/SparseTensor_5/dense_shape?transform/transform/inputs/inputs/F_pickup_latitude/values_copy1transform/transform/SparseToDense_5/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_5Squeeze#transform/transform/SparseToDense_5*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


3transform/transform/bucketize/quantiles/PlaceholderPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
|
1transform/transform/bucketize/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
o
0transform/transform/bucketize/quantiles/sort/NegNegtransform/Const_8*
T0*
_output_shapes
:	

2transform/transform/bucketize/quantiles/sort/ShapeShape0transform/transform/bucketize/quantiles/sort/Neg*
T0*
_output_shapes
:

@transform/transform/bucketize/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

:transform/transform/bucketize/quantiles/sort/strided_sliceStridedSlice2transform/transform/bucketize/quantiles/sort/Shape@transform/transform/bucketize/quantiles/sort/strided_slice/stackBtransform/transform/bucketize/quantiles/sort/strided_slice/stack_1Btransform/transform/bucketize/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/bucketize/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
ж
3transform/transform/bucketize/quantiles/sort/TopKV2TopKV20transform/transform/bucketize/quantiles/sort/Neg:transform/transform/bucketize/quantiles/sort/strided_slice*
T0* 
_output_shapes
:	:	

2transform/transform/bucketize/quantiles/sort/Neg_1Neg3transform/transform/bucketize/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
x
6transform/transform/bucketize/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
е
2transform/transform/bucketize/quantiles/ExpandDims
ExpandDims2transform/transform/bucketize/quantiles/sort/Neg_16transform/transform/bucketize/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	
~
3transform/transform/bucketize/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

2transform/transform/bucketize/quantiles/sort_1/NegNeg2transform/transform/bucketize/quantiles/ExpandDims*
T0*
_output_shapes

:	

4transform/transform/bucketize/quantiles/sort_1/ShapeShape2transform/transform/bucketize/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

<transform/transform/bucketize/quantiles/sort_1/strided_sliceStridedSlice4transform/transform/bucketize/quantiles/sort_1/ShapeBtransform/transform/bucketize/quantiles/sort_1/strided_slice/stackDtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_1Dtransform/transform/bucketize/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/bucketize/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
ф
5transform/transform/bucketize/quantiles/sort_1/TopKV2TopKV22transform/transform/bucketize/quantiles/sort_1/Neg<transform/transform/bucketize/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:	:	

4transform/transform/bucketize/quantiles/sort_1/Neg_1Neg5transform/transform/bucketize/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:	
p
.transform/transform/bucketize/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :

/transform/transform/bucketize/assert_rank/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
`
Xtransform/transform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
Q
Itransform/transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
О
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
В
htransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Д
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Д
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ж
btransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapehtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
ѕ
Ytransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastbtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
_output_shapes
: 
О
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:	
Ж
ctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
г
^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negctransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:	
Ў
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_5*
T0*#
_output_shapes
:џџџџџџџџџ
Є
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
И
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
і
ftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:

dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packftransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:
Ћ
`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
С
[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2^transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2dtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1`transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*
_output_shapes

:

Ў
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_5*
T0*#
_output_shapes
:џџџџџџџџџ
ѓ
\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:
*	
num
і
jtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeZtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2\transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:џџџџџџџџџ*
num_features

[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castjtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*#
_output_shapes
:џџџџџџџџџ
Х
Xtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubYtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast[transform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
s
1transform/transform/bucketize/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

1transform/transform/bucketize/apply_buckets/ShapeShape4transform/transform/bucketize/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

?transform/transform/bucketize/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

9transform/transform/bucketize/apply_buckets/strided_sliceStridedSlice1transform/transform/bucketize/apply_buckets/Shape?transform/transform/bucketize/apply_buckets/strided_slice/stackAtransform/transform/bucketize/apply_buckets/strided_slice/stack_1Atransform/transform/bucketize/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

9transform/transform/bucketize/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
д
3transform/transform/bucketize/apply_buckets/ReshapeReshape4transform/transform/bucketize/quantiles/sort_1/Neg_19transform/transform/bucketize/apply_buckets/Reshape/shape*
T0*
_output_shapes
:	
|
:transform/transform/bucketize/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
о
6transform/transform/bucketize/apply_buckets/ExpandDims
ExpandDims3transform/transform/bucketize/apply_buckets/Reshape:transform/transform/bucketize/apply_buckets/ExpandDims/dim*
T0*
_output_shapes

:	

3transform/transform/bucketize/apply_buckets/Shape_1Shape6transform/transform/bucketize/apply_buckets/ExpandDims*
T0*
_output_shapes
:

Atransform/transform/bucketize/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:

Ctransform/transform/bucketize/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Ctransform/transform/bucketize/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

;transform/transform/bucketize/apply_buckets/strided_slice_1StridedSlice3transform/transform/bucketize/apply_buckets/Shape_1Atransform/transform/bucketize/apply_buckets/strided_slice_1/stackCtransform/transform/bucketize/apply_buckets/strided_slice_1/stack_1Ctransform/transform/bucketize/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
В
?transform/transform/bucketize/apply_buckets/EncodeProto/sizes/0Pack;transform/transform/bucketize/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:
И
=transform/transform/bucketize/apply_buckets/EncodeProto/sizesPack?transform/transform/bucketize/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:
у
7transform/transform/bucketize/apply_buckets/EncodeProtoEncodeProto=transform/transform/bucketize/apply_buckets/EncodeProto/sizes6transform/transform/bucketize/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries

Atransform/transform/bucketize/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Ctransform/transform/bucketize/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Ctransform/transform/bucketize/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

;transform/transform/bucketize/apply_buckets/strided_slice_2StridedSlice7transform/transform/bucketize/apply_buckets/EncodeProtoAtransform/transform/bucketize/apply_buckets/strided_slice_2/stackCtransform/transform/bucketize/apply_buckets/strided_slice_2/stack_1Ctransform/transform/bucketize/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ш
3transform/transform/bucketize/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
s
)transform/transform/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
П
#transform/transform/strided_slice_6StridedSlice?transform/transform/inputs/inputs/F_pickup_longitude/shape_copy)transform/transform/strided_slice_6/stack+transform/transform/strided_slice_6/stack_1+transform/transform/strided_slice_6/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_6/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Л
.transform/transform/SparseTensor_6/dense_shapePack#transform/transform/strided_slice_60transform/transform/SparseTensor_6/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_6/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
о
#transform/transform/SparseToDense_6SparseToDenseAtransform/transform/inputs/inputs/F_pickup_longitude/indices_copy.transform/transform/SparseTensor_6/dense_shape@transform/transform/inputs/inputs/F_pickup_longitude/values_copy1transform/transform/SparseToDense_6/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_6Squeeze#transform/transform/SparseToDense_6*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


5transform/transform/bucketize_1/quantiles/PlaceholderPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
~
3transform/transform/bucketize_1/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
q
2transform/transform/bucketize_1/quantiles/sort/NegNegtransform/Const_9*
T0*
_output_shapes
:

4transform/transform/bucketize_1/quantiles/sort/ShapeShape2transform/transform/bucketize_1/quantiles/sort/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize_1/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

<transform/transform/bucketize_1/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_1/quantiles/sort/ShapeBtransform/transform/bucketize_1/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_1/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/bucketize_1/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
м
5transform/transform/bucketize_1/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_1/quantiles/sort/Neg<transform/transform/bucketize_1/quantiles/sort/strided_slice*
T0* 
_output_shapes
::

4transform/transform/bucketize_1/quantiles/sort/Neg_1Neg5transform/transform/bucketize_1/quantiles/sort/TopKV2*
T0*
_output_shapes
:
z
8transform/transform/bucketize_1/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
л
4transform/transform/bucketize_1/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_1/quantiles/sort/Neg_18transform/transform/bucketize_1/quantiles/ExpandDims/dim*
T0*
_output_shapes

:

5transform/transform/bucketize_1/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

4transform/transform/bucketize_1/quantiles/sort_1/NegNeg4transform/transform/bucketize_1/quantiles/ExpandDims*
T0*
_output_shapes

:

6transform/transform/bucketize_1/quantiles/sort_1/ShapeShape4transform/transform/bucketize_1/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ђ
>transform/transform/bucketize_1/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_1/quantiles/sort_1/ShapeDtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_1/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
w
5transform/transform/bucketize_1/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
ъ
7transform/transform/bucketize_1/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_1/quantiles/sort_1/Neg>transform/transform/bucketize_1/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
::

6transform/transform/bucketize_1/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_1/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
r
0transform/transform/bucketize_1/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :

1transform/transform/bucketize_1/assert_rank/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_1/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_1/assert_rank/static_checks_determined_all_okNoOp
Т
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
Д
jtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ж
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ж
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
р
dtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
љ
[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
_output_shapes
: 
Т
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
И
etransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
й
`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:
А
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_6*
T0*#
_output_shapes
:џџџџџџџџџ
І
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
О
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
њ
htransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:

ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:
­
btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Щ
]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*
_output_shapes

:
А
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_6*
T0*#
_output_shapes
:џџџџџџџџџ
ї
^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:*	
num
ќ
ltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:џџџџџџџџџ*
num_features

]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*#
_output_shapes
:џџџџџџџџџ
Ы
Ztransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_1/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

3transform/transform/bucketize_1/apply_buckets/ShapeShape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

Atransform/transform/bucketize_1/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

;transform/transform/bucketize_1/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_1/apply_buckets/ShapeAtransform/transform/bucketize_1/apply_buckets/strided_slice/stackCtransform/transform/bucketize_1/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_1/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

;transform/transform/bucketize_1/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
к
5transform/transform/bucketize_1/apply_buckets/ReshapeReshape6transform/transform/bucketize_1/quantiles/sort_1/Neg_1;transform/transform/bucketize_1/apply_buckets/Reshape/shape*
T0*
_output_shapes
:
~
<transform/transform/bucketize_1/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ф
8transform/transform/bucketize_1/apply_buckets/ExpandDims
ExpandDims5transform/transform/bucketize_1/apply_buckets/Reshape<transform/transform/bucketize_1/apply_buckets/ExpandDims/dim*
T0*
_output_shapes

:

5transform/transform/bucketize_1/apply_buckets/Shape_1Shape8transform/transform/bucketize_1/apply_buckets/ExpandDims*
T0*
_output_shapes
:

Ctransform/transform/bucketize_1/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:

Etransform/transform/bucketize_1/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Etransform/transform/bucketize_1/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

=transform/transform/bucketize_1/apply_buckets/strided_slice_1StridedSlice5transform/transform/bucketize_1/apply_buckets/Shape_1Ctransform/transform/bucketize_1/apply_buckets/strided_slice_1/stackEtransform/transform/bucketize_1/apply_buckets/strided_slice_1/stack_1Etransform/transform/bucketize_1/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ж
Atransform/transform/bucketize_1/apply_buckets/EncodeProto/sizes/0Pack=transform/transform/bucketize_1/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:
М
?transform/transform/bucketize_1/apply_buckets/EncodeProto/sizesPackAtransform/transform/bucketize_1/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:
щ
9transform/transform/bucketize_1/apply_buckets/EncodeProtoEncodeProto?transform/transform/bucketize_1/apply_buckets/EncodeProto/sizes8transform/transform/bucketize_1/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries

Ctransform/transform/bucketize_1/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Etransform/transform/bucketize_1/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Etransform/transform/bucketize_1/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ё
=transform/transform/bucketize_1/apply_buckets/strided_slice_2StridedSlice9transform/transform/bucketize_1/apply_buckets/EncodeProtoCtransform/transform/bucketize_1/apply_buckets/strided_slice_2/stackEtransform/transform/bucketize_1/apply_buckets/strided_slice_2/stack_1Etransform/transform/bucketize_1/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ъ
5transform/transform/bucketize_1/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
s
)transform/transform/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
П
#transform/transform/strided_slice_7StridedSlice?transform/transform/inputs/inputs/F_dropoff_latitude/shape_copy)transform/transform/strided_slice_7/stack+transform/transform/strided_slice_7/stack_1+transform/transform/strided_slice_7/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_7/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Л
.transform/transform/SparseTensor_7/dense_shapePack#transform/transform/strided_slice_70transform/transform/SparseTensor_7/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_7/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
о
#transform/transform/SparseToDense_7SparseToDenseAtransform/transform/inputs/inputs/F_dropoff_latitude/indices_copy.transform/transform/SparseTensor_7/dense_shape@transform/transform/inputs/inputs/F_dropoff_latitude/values_copy1transform/transform/SparseToDense_7/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_7Squeeze#transform/transform/SparseToDense_7*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


5transform/transform/bucketize_2/quantiles/PlaceholderPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
~
3transform/transform/bucketize_2/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
r
2transform/transform/bucketize_2/quantiles/sort/NegNegtransform/Const_10*
T0*
_output_shapes
:	

4transform/transform/bucketize_2/quantiles/sort/ShapeShape2transform/transform/bucketize_2/quantiles/sort/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize_2/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

<transform/transform/bucketize_2/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_2/quantiles/sort/ShapeBtransform/transform/bucketize_2/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_2/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/bucketize_2/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
м
5transform/transform/bucketize_2/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_2/quantiles/sort/Neg<transform/transform/bucketize_2/quantiles/sort/strided_slice*
T0* 
_output_shapes
:	:	

4transform/transform/bucketize_2/quantiles/sort/Neg_1Neg5transform/transform/bucketize_2/quantiles/sort/TopKV2*
T0*
_output_shapes
:	
z
8transform/transform/bucketize_2/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
л
4transform/transform/bucketize_2/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_2/quantiles/sort/Neg_18transform/transform/bucketize_2/quantiles/ExpandDims/dim*
T0*
_output_shapes

:	

5transform/transform/bucketize_2/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

4transform/transform/bucketize_2/quantiles/sort_1/NegNeg4transform/transform/bucketize_2/quantiles/ExpandDims*
T0*
_output_shapes

:	

6transform/transform/bucketize_2/quantiles/sort_1/ShapeShape4transform/transform/bucketize_2/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ђ
>transform/transform/bucketize_2/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_2/quantiles/sort_1/ShapeDtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_2/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
w
5transform/transform/bucketize_2/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
ъ
7transform/transform/bucketize_2/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_2/quantiles/sort_1/Neg>transform/transform/bucketize_2/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
:	:	

6transform/transform/bucketize_2/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_2/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:	
r
0transform/transform/bucketize_2/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :

1transform/transform/bucketize_2/assert_rank/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_2/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_2/assert_rank/static_checks_determined_all_okNoOp
Т
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
Д
jtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ж
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ж
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
р
dtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
љ
[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
_output_shapes
: 
Т
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:	
И
etransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
й
`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:	
А
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_7*
T0*#
_output_shapes
:џџџџџџџџџ
І
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
О
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
њ
htransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:

ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:
­
btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Щ
]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*
_output_shapes

:

А
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_7*
T0*#
_output_shapes
:џџџџџџџџџ
ї
^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:
*	
num
ќ
ltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:џџџџџџџџџ*
num_features

]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*#
_output_shapes
:џџџџџџџџџ
Ы
Ztransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_2/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

3transform/transform/bucketize_2/apply_buckets/ShapeShape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

Atransform/transform/bucketize_2/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

;transform/transform/bucketize_2/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_2/apply_buckets/ShapeAtransform/transform/bucketize_2/apply_buckets/strided_slice/stackCtransform/transform/bucketize_2/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_2/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

;transform/transform/bucketize_2/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
к
5transform/transform/bucketize_2/apply_buckets/ReshapeReshape6transform/transform/bucketize_2/quantiles/sort_1/Neg_1;transform/transform/bucketize_2/apply_buckets/Reshape/shape*
T0*
_output_shapes
:	
~
<transform/transform/bucketize_2/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ф
8transform/transform/bucketize_2/apply_buckets/ExpandDims
ExpandDims5transform/transform/bucketize_2/apply_buckets/Reshape<transform/transform/bucketize_2/apply_buckets/ExpandDims/dim*
T0*
_output_shapes

:	

5transform/transform/bucketize_2/apply_buckets/Shape_1Shape8transform/transform/bucketize_2/apply_buckets/ExpandDims*
T0*
_output_shapes
:

Ctransform/transform/bucketize_2/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:

Etransform/transform/bucketize_2/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Etransform/transform/bucketize_2/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

=transform/transform/bucketize_2/apply_buckets/strided_slice_1StridedSlice5transform/transform/bucketize_2/apply_buckets/Shape_1Ctransform/transform/bucketize_2/apply_buckets/strided_slice_1/stackEtransform/transform/bucketize_2/apply_buckets/strided_slice_1/stack_1Etransform/transform/bucketize_2/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ж
Atransform/transform/bucketize_2/apply_buckets/EncodeProto/sizes/0Pack=transform/transform/bucketize_2/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:
М
?transform/transform/bucketize_2/apply_buckets/EncodeProto/sizesPackAtransform/transform/bucketize_2/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:
щ
9transform/transform/bucketize_2/apply_buckets/EncodeProtoEncodeProto?transform/transform/bucketize_2/apply_buckets/EncodeProto/sizes8transform/transform/bucketize_2/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries

Ctransform/transform/bucketize_2/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Etransform/transform/bucketize_2/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Etransform/transform/bucketize_2/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ё
=transform/transform/bucketize_2/apply_buckets/strided_slice_2StridedSlice9transform/transform/bucketize_2/apply_buckets/EncodeProtoCtransform/transform/bucketize_2/apply_buckets/strided_slice_2/stackEtransform/transform/bucketize_2/apply_buckets/strided_slice_2/stack_1Etransform/transform/bucketize_2/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ъ
5transform/transform/bucketize_2/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
s
)transform/transform/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Р
#transform/transform/strided_slice_8StridedSlice@transform/transform/inputs/inputs/F_dropoff_longitude/shape_copy)transform/transform/strided_slice_8/stack+transform/transform/strided_slice_8/stack_1+transform/transform/strided_slice_8/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_8/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Л
.transform/transform/SparseTensor_8/dense_shapePack#transform/transform/strided_slice_80transform/transform/SparseTensor_8/dense_shape/1*
N*
T0	*
_output_shapes
:
v
1transform/transform/SparseToDense_8/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
р
#transform/transform/SparseToDense_8SparseToDenseBtransform/transform/inputs/inputs/F_dropoff_longitude/indices_copy.transform/transform/SparseTensor_8/dense_shapeAtransform/transform/inputs/inputs/F_dropoff_longitude/values_copy1transform/transform/SparseToDense_8/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_8Squeeze#transform/transform/SparseToDense_8*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims


5transform/transform/bucketize_3/quantiles/PlaceholderPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
~
3transform/transform/bucketize_3/quantiles/sort/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
r
2transform/transform/bucketize_3/quantiles/sort/NegNegtransform/Const_11*
T0*
_output_shapes
:

4transform/transform/bucketize_3/quantiles/sort/ShapeShape2transform/transform/bucketize_3/quantiles/sort/Neg*
T0*
_output_shapes
:

Btransform/transform/bucketize_3/quantiles/sort/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

<transform/transform/bucketize_3/quantiles/sort/strided_sliceStridedSlice4transform/transform/bucketize_3/quantiles/sort/ShapeBtransform/transform/bucketize_3/quantiles/sort/strided_slice/stackDtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_1Dtransform/transform/bucketize_3/quantiles/sort/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
3transform/transform/bucketize_3/quantiles/sort/RankConst*
_output_shapes
: *
dtype0*
value	B :
м
5transform/transform/bucketize_3/quantiles/sort/TopKV2TopKV22transform/transform/bucketize_3/quantiles/sort/Neg<transform/transform/bucketize_3/quantiles/sort/strided_slice*
T0* 
_output_shapes
::

4transform/transform/bucketize_3/quantiles/sort/Neg_1Neg5transform/transform/bucketize_3/quantiles/sort/TopKV2*
T0*
_output_shapes
:
z
8transform/transform/bucketize_3/quantiles/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
л
4transform/transform/bucketize_3/quantiles/ExpandDims
ExpandDims4transform/transform/bucketize_3/quantiles/sort/Neg_18transform/transform/bucketize_3/quantiles/ExpandDims/dim*
T0*
_output_shapes

:

5transform/transform/bucketize_3/quantiles/sort_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

4transform/transform/bucketize_3/quantiles/sort_1/NegNeg4transform/transform/bucketize_3/quantiles/ExpandDims*
T0*
_output_shapes

:

6transform/transform/bucketize_3/quantiles/sort_1/ShapeShape4transform/transform/bucketize_3/quantiles/sort_1/Neg*
T0*
_output_shapes
:

Dtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 

Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ђ
>transform/transform/bucketize_3/quantiles/sort_1/strided_sliceStridedSlice6transform/transform/bucketize_3/quantiles/sort_1/ShapeDtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stackFtransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_1Ftransform/transform/bucketize_3/quantiles/sort_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
w
5transform/transform/bucketize_3/quantiles/sort_1/RankConst*
_output_shapes
: *
dtype0*
value	B :
ъ
7transform/transform/bucketize_3/quantiles/sort_1/TopKV2TopKV24transform/transform/bucketize_3/quantiles/sort_1/Neg>transform/transform/bucketize_3/quantiles/sort_1/strided_slice*
T0*(
_output_shapes
::

6transform/transform/bucketize_3/quantiles/sort_1/Neg_1Neg7transform/transform/bucketize_3/quantiles/sort_1/TopKV2*
T0*
_output_shapes

:
r
0transform/transform/bucketize_3/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :

1transform/transform/bucketize_3/assert_rank/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
b
Ztransform/transform/bucketize_3/assert_rank/assert_type/statically_determined_correct_typeNoOp
S
Ktransform/transform/bucketize_3/assert_rank/static_checks_determined_all_okNoOp
Т
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:
Д
jtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ж
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ж
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
р
dtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlice\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shapejtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
љ
[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastdtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
_output_shapes
: 
Т
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNeg6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes

:
И
etransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
й
`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Negetransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*
_output_shapes

:
А
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/transform/Squeeze_8*
T0*#
_output_shapes
:џџџџџџџџџ
І
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
О
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMax\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*
_output_shapes
: 
њ
htransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:

ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Packhtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:
­
btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Щ
]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2`transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2ftransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1btransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*
_output_shapes

:
А
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/transform/Squeeze_8*
T0*#
_output_shapes
:џџџџџџџџџ
ї
^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpack]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:*	
num
ќ
ltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketize\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2^transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:џџџџџџџџџ*
num_features

]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castltransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*#
_output_shapes
:џџџџџџџџџ
Ы
Ztransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSub[transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast]transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
u
3transform/transform/bucketize_3/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

3transform/transform/bucketize_3/apply_buckets/ShapeShape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1*
T0*
_output_shapes
:

Atransform/transform/bucketize_3/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

;transform/transform/bucketize_3/apply_buckets/strided_sliceStridedSlice3transform/transform/bucketize_3/apply_buckets/ShapeAtransform/transform/bucketize_3/apply_buckets/strided_slice/stackCtransform/transform/bucketize_3/apply_buckets/strided_slice/stack_1Ctransform/transform/bucketize_3/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

;transform/transform/bucketize_3/apply_buckets/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
к
5transform/transform/bucketize_3/apply_buckets/ReshapeReshape6transform/transform/bucketize_3/quantiles/sort_1/Neg_1;transform/transform/bucketize_3/apply_buckets/Reshape/shape*
T0*
_output_shapes
:
~
<transform/transform/bucketize_3/apply_buckets/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
ф
8transform/transform/bucketize_3/apply_buckets/ExpandDims
ExpandDims5transform/transform/bucketize_3/apply_buckets/Reshape<transform/transform/bucketize_3/apply_buckets/ExpandDims/dim*
T0*
_output_shapes

:

5transform/transform/bucketize_3/apply_buckets/Shape_1Shape8transform/transform/bucketize_3/apply_buckets/ExpandDims*
T0*
_output_shapes
:

Ctransform/transform/bucketize_3/apply_buckets/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:

Etransform/transform/bucketize_3/apply_buckets/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Etransform/transform/bucketize_3/apply_buckets/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

=transform/transform/bucketize_3/apply_buckets/strided_slice_1StridedSlice5transform/transform/bucketize_3/apply_buckets/Shape_1Ctransform/transform/bucketize_3/apply_buckets/strided_slice_1/stackEtransform/transform/bucketize_3/apply_buckets/strided_slice_1/stack_1Etransform/transform/bucketize_3/apply_buckets/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ж
Atransform/transform/bucketize_3/apply_buckets/EncodeProto/sizes/0Pack=transform/transform/bucketize_3/apply_buckets/strided_slice_1*
N*
T0*
_output_shapes
:
М
?transform/transform/bucketize_3/apply_buckets/EncodeProto/sizesPackAtransform/transform/bucketize_3/apply_buckets/EncodeProto/sizes/0*
N*
T0*
_output_shapes

:
щ
9transform/transform/bucketize_3/apply_buckets/EncodeProtoEncodeProto?transform/transform/bucketize_3/apply_buckets/EncodeProto/sizes8transform/transform/bucketize_3/apply_buckets/ExpandDims*
Tinput_types
2*
_output_shapes
:*
field_names

boundaries*R
message_typeB@third_party.py.tensorflow_transform.annotations.BucketBoundaries

Ctransform/transform/bucketize_3/apply_buckets/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Etransform/transform/bucketize_3/apply_buckets/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Etransform/transform/bucketize_3/apply_buckets/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ё
=transform/transform/bucketize_3/apply_buckets/strided_slice_2StridedSlice9transform/transform/bucketize_3/apply_buckets/EncodeProtoCtransform/transform/bucketize_3/apply_buckets/strided_slice_2/stackEtransform/transform/bucketize_3/apply_buckets/strided_slice_2/stack_1Etransform/transform/bucketize_3/apply_buckets/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Ъ
5transform/transform/bucketize_3/apply_buckets/Const_1Const*
_output_shapes
: *
dtype0*e
value\BZ BTtype.googleapis.com/third_party.py.tensorflow_transform.annotations.BucketBoundaries
s
)transform/transform/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB: 
u
+transform/transform/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
u
+transform/transform/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
О
#transform/transform/strided_slice_9StridedSlice>transform/transform/inputs/inputs/F_trip_start_hour/shape_copy)transform/transform/strided_slice_9/stack+transform/transform/strided_slice_9/stack_1+transform/transform/strided_slice_9/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
r
0transform/transform/SparseTensor_9/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
Л
.transform/transform/SparseTensor_9/dense_shapePack#transform/transform/strided_slice_90transform/transform/SparseTensor_9/dense_shape/1*
N*
T0	*
_output_shapes
:
s
1transform/transform/SparseToDense_9/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
м
#transform/transform/SparseToDense_9SparseToDense@transform/transform/inputs/inputs/F_trip_start_hour/indices_copy.transform/transform/SparseTensor_9/dense_shape?transform/transform/inputs/inputs/F_trip_start_hour/values_copy1transform/transform/SparseToDense_9/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_9Squeeze#transform/transform/SparseToDense_9*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
С
$transform/transform/strided_slice_10StridedSlice=transform/transform/inputs/inputs/F_trip_start_day/shape_copy*transform/transform/strided_slice_10/stack,transform/transform/strided_slice_10/stack_1,transform/transform/strided_slice_10/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_10/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
О
/transform/transform/SparseTensor_10/dense_shapePack$transform/transform/strided_slice_101transform/transform/SparseTensor_10/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_10/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
н
$transform/transform/SparseToDense_10SparseToDense?transform/transform/inputs/inputs/F_trip_start_day/indices_copy/transform/transform/SparseTensor_10/dense_shape>transform/transform/inputs/inputs/F_trip_start_day/values_copy2transform/transform/SparseToDense_10/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_10Squeeze$transform/transform/SparseToDense_10*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
У
$transform/transform/strided_slice_11StridedSlice?transform/transform/inputs/inputs/F_trip_start_month/shape_copy*transform/transform/strided_slice_11/stack,transform/transform/strided_slice_11/stack_1,transform/transform/strided_slice_11/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_11/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
О
/transform/transform/SparseTensor_11/dense_shapePack$transform/transform/strided_slice_111transform/transform/SparseTensor_11/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_11/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
с
$transform/transform/SparseToDense_11SparseToDenseAtransform/transform/inputs/inputs/F_trip_start_month/indices_copy/transform/transform/SparseTensor_11/dense_shape@transform/transform/inputs/inputs/F_trip_start_month/values_copy2transform/transform/SparseToDense_11/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_11Squeeze$transform/transform/SparseToDense_11*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ц
$transform/transform/strided_slice_12StridedSliceBtransform/transform/inputs/inputs/F_pickup_census_tract/shape_copy*transform/transform/strided_slice_12/stack,transform/transform/strided_slice_12/stack_1,transform/transform/strided_slice_12/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_12/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
О
/transform/transform/SparseTensor_12/dense_shapePack$transform/transform/strided_slice_121transform/transform/SparseTensor_12/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_12/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ч
$transform/transform/SparseToDense_12SparseToDenseDtransform/transform/inputs/inputs/F_pickup_census_tract/indices_copy/transform/transform/SparseTensor_12/dense_shapeCtransform/transform/inputs/inputs/F_pickup_census_tract/values_copy2transform/transform/SparseToDense_12/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_12Squeeze$transform/transform/SparseToDense_12*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ч
$transform/transform/strided_slice_13StridedSliceCtransform/transform/inputs/inputs/F_dropoff_census_tract/shape_copy*transform/transform/strided_slice_13/stack,transform/transform/strided_slice_13/stack_1,transform/transform/strided_slice_13/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_13/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
О
/transform/transform/SparseTensor_13/dense_shapePack$transform/transform/strided_slice_131transform/transform/SparseTensor_13/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_13/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
щ
$transform/transform/SparseToDense_13SparseToDenseEtransform/transform/inputs/inputs/F_dropoff_census_tract/indices_copy/transform/transform/SparseTensor_13/dense_shapeDtransform/transform/inputs/inputs/F_dropoff_census_tract/values_copy2transform/transform/SparseToDense_13/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_13Squeeze$transform/transform/SparseToDense_13*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ш
$transform/transform/strided_slice_14StridedSliceDtransform/transform/inputs/inputs/F_pickup_community_area/shape_copy*transform/transform/strided_slice_14/stack,transform/transform/strided_slice_14/stack_1,transform/transform/strided_slice_14/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_14/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
О
/transform/transform/SparseTensor_14/dense_shapePack$transform/transform/strided_slice_141transform/transform/SparseTensor_14/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_14/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ы
$transform/transform/SparseToDense_14SparseToDenseFtransform/transform/inputs/inputs/F_pickup_community_area/indices_copy/transform/transform/SparseTensor_14/dense_shapeEtransform/transform/inputs/inputs/F_pickup_community_area/values_copy2transform/transform/SparseToDense_14/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_14Squeeze$transform/transform/SparseToDense_14*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Щ
$transform/transform/strided_slice_15StridedSliceEtransform/transform/inputs/inputs/F_dropoff_community_area/shape_copy*transform/transform/strided_slice_15/stack,transform/transform/strided_slice_15/stack_1,transform/transform/strided_slice_15/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_15/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
О
/transform/transform/SparseTensor_15/dense_shapePack$transform/transform/strided_slice_151transform/transform/SparseTensor_15/dense_shape/1*
N*
T0	*
_output_shapes
:
t
2transform/transform/SparseToDense_15/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
э
$transform/transform/SparseToDense_15SparseToDenseGtransform/transform/inputs/inputs/F_dropoff_community_area/indices_copy/transform/transform/SparseTensor_15/dense_shapeFtransform/transform/inputs/inputs/F_dropoff_community_area/values_copy2transform/transform/SparseToDense_15/default_value*
T0	*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_15Squeeze$transform/transform/SparseToDense_15*
T0	*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Е
$transform/transform/strided_slice_16StridedSlice1transform/transform/inputs/inputs/fare/shape_copy*transform/transform/strided_slice_16/stack,transform/transform/strided_slice_16/stack_1,transform/transform/strided_slice_16/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_16/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
О
/transform/transform/SparseTensor_16/dense_shapePack$transform/transform/strided_slice_161transform/transform/SparseTensor_16/dense_shape/1*
N*
T0	*
_output_shapes
:
w
2transform/transform/SparseToDense_16/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Х
$transform/transform/SparseToDense_16SparseToDense3transform/transform/inputs/inputs/fare/indices_copy/transform/transform/SparseTensor_16/dense_shape2transform/transform/inputs/inputs/fare/values_copy2transform/transform/SparseToDense_16/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_16Squeeze$transform/transform/SparseToDense_16*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

t
*transform/transform/strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB: 
v
,transform/transform/strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
v
,transform/transform/strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Е
$transform/transform/strided_slice_17StridedSlice1transform/transform/inputs/inputs/tips/shape_copy*transform/transform/strided_slice_17/stack,transform/transform/strided_slice_17/stack_1,transform/transform/strided_slice_17/stack_2*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask
s
1transform/transform/SparseTensor_17/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
О
/transform/transform/SparseTensor_17/dense_shapePack$transform/transform/strided_slice_171transform/transform/SparseTensor_17/dense_shape/1*
N*
T0	*
_output_shapes
:
w
2transform/transform/SparseToDense_17/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
Х
$transform/transform/SparseToDense_17SparseToDense3transform/transform/inputs/inputs/tips/indices_copy/transform/transform/SparseTensor_17/dense_shape2transform/transform/inputs/inputs/tips/values_copy2transform/transform/SparseToDense_17/default_value*
T0*
Tindices0	*'
_output_shapes
:џџџџџџџџџ

transform/transform/Squeeze_17Squeeze$transform/transform/SparseToDense_17*
T0*#
_output_shapes
:џџџџџџџџџ*
squeeze_dims

p
transform/transform/IsNanIsNantransform/transform/Squeeze_16*
T0*#
_output_shapes
:џџџџџџџџџ
y
transform/transform/zeros_like	ZerosLiketransform/transform/Squeeze_16*
T0*#
_output_shapes
:џџџџџџџџџ
}
transform/transform/CastCasttransform/transform/zeros_like*

DstT0	*

SrcT0*#
_output_shapes
:џџџџџџџџџ
^
transform/transform/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>

transform/transform/MulMultransform/transform/Squeeze_16transform/transform/Const*
T0*#
_output_shapes
:џџџџџџџџџ

transform/transform/GreaterGreatertransform/transform/Squeeze_17transform/transform/Mul*
T0*#
_output_shapes
:џџџџџџџџџ
|
transform/transform/Cast_1Casttransform/transform/Greater*

DstT0	*

SrcT0
*#
_output_shapes
:џџџџџџџџџ
Ѓ
transform/transform/SelectSelecttransform/transform/IsNantransform/transform/Casttransform/transform/Cast_1*
T0	*#
_output_shapes
:џџџџџџџџџ
 
transform/transform/initNoOp
"
transform/transform/init_1NoOp

transform/initNoOp
C
SizeSizeinput_example_tensor*
T0*
_output_shapes
: 
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : 
M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
S
rangeRangerange/startSizerange/delta*#
_output_shapes
:џџџџџџџџџ
Q
Const_2Const*
_output_shapes
: *
dtype0*
valueB B	0.16.0dev
c
IdentityIdentityParseExample/ParseExampleV2*
T0	*'
_output_shapes
:џџџџџџџџџ
d

Identity_1IdentityParseExample/ParseExampleV2:18*
T0*#
_output_shapes
:џџџџџџџџџ
[

Identity_2IdentityParseExample/ParseExampleV2:36*
T0	*
_output_shapes
:
g

Identity_3IdentityParseExample/ParseExampleV2:1*
T0	*'
_output_shapes
:џџџџџџџџџ
d

Identity_4IdentityParseExample/ParseExampleV2:19*
T0	*#
_output_shapes
:џџџџџџџџџ
[

Identity_5IdentityParseExample/ParseExampleV2:37*
T0	*
_output_shapes
:
g

Identity_6IdentityParseExample/ParseExampleV2:2*
T0	*'
_output_shapes
:џџџџџџџџџ
d

Identity_7IdentityParseExample/ParseExampleV2:20*
T0	*#
_output_shapes
:џџџџџџџџџ
[

Identity_8IdentityParseExample/ParseExampleV2:38*
T0	*
_output_shapes
:
g

Identity_9IdentityParseExample/ParseExampleV2:3*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_10IdentityParseExample/ParseExampleV2:21*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_11IdentityParseExample/ParseExampleV2:39*
T0	*
_output_shapes
:
h
Identity_12IdentityParseExample/ParseExampleV2:4*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_13IdentityParseExample/ParseExampleV2:22*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_14IdentityParseExample/ParseExampleV2:40*
T0	*
_output_shapes
:
h
Identity_15IdentityParseExample/ParseExampleV2:5*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_16IdentityParseExample/ParseExampleV2:23*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_17IdentityParseExample/ParseExampleV2:41*
T0	*
_output_shapes
:
h
Identity_18IdentityParseExample/ParseExampleV2:6*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_19IdentityParseExample/ParseExampleV2:24*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_20IdentityParseExample/ParseExampleV2:42*
T0	*
_output_shapes
:
h
Identity_21IdentityParseExample/ParseExampleV2:7*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_22IdentityParseExample/ParseExampleV2:25*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_23IdentityParseExample/ParseExampleV2:43*
T0	*
_output_shapes
:
h
Identity_24IdentityParseExample/ParseExampleV2:8*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_25IdentityParseExample/ParseExampleV2:26*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_26IdentityParseExample/ParseExampleV2:44*
T0	*
_output_shapes
:
h
Identity_27IdentityParseExample/ParseExampleV2:9*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_28IdentityParseExample/ParseExampleV2:27*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_29IdentityParseExample/ParseExampleV2:45*
T0	*
_output_shapes
:
i
Identity_30IdentityParseExample/ParseExampleV2:10*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_31IdentityParseExample/ParseExampleV2:28*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_32IdentityParseExample/ParseExampleV2:46*
T0	*
_output_shapes
:
i
Identity_33IdentityParseExample/ParseExampleV2:11*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_34IdentityParseExample/ParseExampleV2:29*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_35IdentityParseExample/ParseExampleV2:47*
T0	*
_output_shapes
:
i
Identity_36IdentityParseExample/ParseExampleV2:12*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_37IdentityParseExample/ParseExampleV2:30*
T0*#
_output_shapes
:џџџџџџџџџ
\
Identity_38IdentityParseExample/ParseExampleV2:48*
T0	*
_output_shapes
:
i
Identity_39IdentityParseExample/ParseExampleV2:13*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_40IdentityParseExample/ParseExampleV2:31*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_41IdentityParseExample/ParseExampleV2:49*
T0	*
_output_shapes
:
i
Identity_42IdentityParseExample/ParseExampleV2:14*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_43IdentityParseExample/ParseExampleV2:32*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_44IdentityParseExample/ParseExampleV2:50*
T0	*
_output_shapes
:
i
Identity_45IdentityParseExample/ParseExampleV2:15*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_46IdentityParseExample/ParseExampleV2:33*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_47IdentityParseExample/ParseExampleV2:51*
T0	*
_output_shapes
:
i
Identity_48IdentityParseExample/ParseExampleV2:16*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_49IdentityParseExample/ParseExampleV2:34*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_50IdentityParseExample/ParseExampleV2:52*
T0	*
_output_shapes
:
i
Identity_51IdentityParseExample/ParseExampleV2:17*
T0	*'
_output_shapes
:џџџџџџџџџ
e
Identity_52IdentityParseExample/ParseExampleV2:35*
T0	*#
_output_shapes
:џџџџџџџџџ
\
Identity_53IdentityParseExample/ParseExampleV2:53*
T0	*
_output_shapes
:
e
Identity_54Identitytransform/transform/Squeeze_10*
T0	*#
_output_shapes
:џџџџџџџџџ
e
Identity_55Identitytransform/transform/Squeeze_11*
T0	*#
_output_shapes
:џџџџџџџџџ
t
Identity_56Identity-transform/transform/scale_to_z_score_1/Select*
T0*#
_output_shapes
:џџџџџџџџџ
Ё
Identity_57IdentityZtransform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:џџџџџџџџџ
e
Identity_58Identitytransform/transform/Squeeze_12*
T0	*#
_output_shapes
:џџџџџџџџџ
 
Identity_59IdentityYtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
t
Identity_60Identity-transform/transform/scale_to_z_score_2/Select*
T0*#
_output_shapes
:џџџџџџџџџ
r
Identity_61Identity+transform/transform/scale_to_z_score/Select*
T0*#
_output_shapes
:џџџџџџџџџ
e
Identity_62Identitytransform/transform/Squeeze_13*
T0	*#
_output_shapes
:џџџџџџџџџ
e
Identity_63Identitytransform/transform/Squeeze_15*
T0	*#
_output_shapes
:џџџџџџџџџ
d
Identity_64Identitytransform/transform/Squeeze_9*
T0	*#
_output_shapes
:џџџџџџџџџ
a
Identity_65Identitytransform/transform/Select*
T0	*#
_output_shapes
:џџџџџџџџџ
Ё
Identity_66IdentityZtransform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:џџџџџџџџџ
e
Identity_67Identitytransform/transform/Squeeze_14*
T0	*#
_output_shapes
:џџџџџџџџџ

Identity_68IdentityWtransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ

Identity_69IdentityXtransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:џџџџџџџџџ
Ё
Identity_70IdentityZtransform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub*
T0	*#
_output_shapes
:џџџџџџџџџ
a
Identity_71Identitytransform/transform/Select*
T0	*#
_output_shapes
:џџџџџџџџџ

Adnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Э
=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims
ExpandDimsIdentity_56Adnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Ѕ
8dnn/input_from_feature_columns/input_layer/fare_xf/ShapeShape=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims*
T0*
_output_shapes
:

Fdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ќ
@dnn/input_from_feature_columns/input_layer/fare_xf/strided_sliceStridedSlice8dnn/input_from_feature_columns/input_layer/fare_xf/ShapeFdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stackHdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_1Hdnn/input_from_feature_columns/input_layer/fare_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Bdnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
ќ
@dnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shapePack@dnn/input_from_feature_columns/input_layer/fare_xf/strided_sliceBdnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape/1*
N*
T0*
_output_shapes
:
ј
:dnn/input_from_feature_columns/input_layer/fare_xf/ReshapeReshape=dnn/input_from_feature_columns/input_layer/fare_xf/ExpandDims@dnn/input_from_feature_columns/input_layer/fare_xf/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

Gdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
й
Cdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims
ExpandDimsIdentity_61Gdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Б
>dnn/input_from_feature_columns/input_layer/trip_miles_xf/ShapeShapeCdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDims*
T0*
_output_shapes
:

Ldnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ъ
Fdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_sliceStridedSlice>dnn/input_from_feature_columns/input_layer/trip_miles_xf/ShapeLdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stackNdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_1Ndnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Hdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Fdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shapePackFdnn/input_from_feature_columns/input_layer/trip_miles_xf/strided_sliceHdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape/1*
N*
T0*
_output_shapes
:

@dnn/input_from_feature_columns/input_layer/trip_miles_xf/ReshapeReshapeCdnn/input_from_feature_columns/input_layer/trip_miles_xf/ExpandDimsFdnn/input_from_feature_columns/input_layer/trip_miles_xf/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

Idnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
н
Ednn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims
ExpandDimsIdentity_60Idnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims/dim*
T0*'
_output_shapes
:џџџџџџџџџ
Е
@dnn/input_from_feature_columns/input_layer/trip_seconds_xf/ShapeShapeEdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDims*
T0*
_output_shapes
:

Ndnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
д
Hdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_sliceStridedSlice@dnn/input_from_feature_columns/input_layer/trip_seconds_xf/ShapeNdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stackPdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_1Pdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Jdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Hdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shapePackHdnn/input_from_feature_columns/input_layer/trip_seconds_xf/strided_sliceJdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape/1*
N*
T0*
_output_shapes
:

Bdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ReshapeReshapeEdnn/input_from_feature_columns/input_layer/trip_seconds_xf/ExpandDimsHdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

6dnn/input_from_feature_columns/input_layer/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ђ
1dnn/input_from_feature_columns/input_layer/concatConcatV2:dnn/input_from_feature_columns/input_layer/fare_xf/Reshape@dnn/input_from_feature_columns/input_layer/trip_miles_xf/ReshapeBdnn/input_from_feature_columns/input_layer/trip_seconds_xf/Reshape6dnn/input_from_feature_columns/input_layer/concat/axis*
N*
T0*'
_output_shapes
:џџџџџџџџџ
Х
@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
:*
dtype0*
valueB"   d   
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *о%wО
З
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *о%w>

Hdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d*
dtype0

>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d

:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d
Ю
dnn/hiddenlayer_0/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: *
dtype0*
shape
:d*0
shared_name!dnn/hiddenlayer_0/kernel/part_0

@dnn/hiddenlayer_0/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes
: 
Є
&dnn/hiddenlayer_0/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/kernel/part_0:dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform*
dtype0

3dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d*
dtype0
Ў
/dnn/hiddenlayer_0/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d*
dtype0*
valueBd*    
Ф
dnn/hiddenlayer_0/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_0/bias/part_0*
_output_shapes
: *
dtype0*
shape:d*.
shared_namednn/hiddenlayer_0/bias/part_0

>dnn/hiddenlayer_0/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
: 

$dnn/hiddenlayer_0/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_0/bias/part_0/dnn/hiddenlayer_0/bias/part_0/Initializer/zeros*
dtype0

1dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d*
dtype0

'dnn/hiddenlayer_0/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d*
dtype0
v
dnn/hiddenlayer_0/kernelIdentity'dnn/hiddenlayer_0/kernel/ReadVariableOp*
T0*
_output_shapes

:d
Ё
dnn/hiddenlayer_0/MatMulMatMul1dnn/input_from_feature_columns/input_layer/concatdnn/hiddenlayer_0/kernel*
T0*'
_output_shapes
:џџџџџџџџџd

%dnn/hiddenlayer_0/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d*
dtype0
n
dnn/hiddenlayer_0/biasIdentity%dnn/hiddenlayer_0/bias/ReadVariableOp*
T0*
_output_shapes
:d

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/bias*
T0*'
_output_shapes
:џџџџџџџџџd
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџd
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
T0*
_output_shapes
: *
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction/cond/SwitchSwitchdnn/zero_fraction/LessEqualdnn/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
m
dnn/zero_fraction/cond/switch_tIdentitydnn/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
k
dnn/zero_fraction/cond/switch_fIdentitydnn/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
h
dnn/zero_fraction/cond/pred_idIdentitydnn/zero_fraction/LessEqual*
T0
*
_output_shapes
: 

*dnn/zero_fraction/cond/count_nonzero/zerosConst ^dnn/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
Я
-dnn/zero_fraction/cond/count_nonzero/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1*dnn/zero_fraction/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџd
ц
4dnn/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_0/Relu*:
_output_shapes(
&:џџџџџџџџџd:џџџџџџџџџd
Ё
)dnn/zero_fraction/cond/count_nonzero/CastCast-dnn/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџd

*dnn/zero_fraction/cond/count_nonzero/ConstConst ^dnn/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Б
2dnn/zero_fraction/cond/count_nonzero/nonzero_countSum)dnn/zero_fraction/cond/count_nonzero/Cast*dnn/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 

dnn/zero_fraction/cond/CastCast2dnn/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 

,dnn/zero_fraction/cond/count_nonzero_1/zerosConst ^dnn/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
г
/dnn/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch,dnn/zero_fraction/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:џџџџџџџџџd
ш
6dnn/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_0/Reludnn/zero_fraction/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_0/Relu*:
_output_shapes(
&:џџџџџџџџџd:џџџџџџџџџd
Ѕ
+dnn/zero_fraction/cond/count_nonzero_1/CastCast/dnn/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџd

,dnn/zero_fraction/cond/count_nonzero_1/ConstConst ^dnn/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
З
4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countSum+dnn/zero_fraction/cond/count_nonzero_1/Cast,dnn/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
Є
dnn/zero_fraction/cond/MergeMerge4dnn/zero_fraction/cond/count_nonzero_1/nonzero_countdnn/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 

(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 

)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
А
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values
Џ
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *
dtype0*1
value(B& B dnn/dnn/hiddenlayer_0/activation

 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
Х
@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
:*
dtype0*
valueB"d   F   
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *H`@О
З
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *H`@>

Hdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF*
dtype0

>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF

:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF
Ю
dnn/hiddenlayer_1/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: *
dtype0*
shape
:dF*0
shared_name!dnn/hiddenlayer_1/kernel/part_0

@dnn/hiddenlayer_1/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes
: 
Є
&dnn/hiddenlayer_1/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/kernel/part_0:dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform*
dtype0

3dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF*
dtype0
Ў
/dnn/hiddenlayer_1/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F*
dtype0*
valueBF*    
Ф
dnn/hiddenlayer_1/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_1/bias/part_0*
_output_shapes
: *
dtype0*
shape:F*.
shared_namednn/hiddenlayer_1/bias/part_0

>dnn/hiddenlayer_1/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
: 

$dnn/hiddenlayer_1/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_1/bias/part_0/dnn/hiddenlayer_1/bias/part_0/Initializer/zeros*
dtype0

1dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F*
dtype0

'dnn/hiddenlayer_1/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF*
dtype0
v
dnn/hiddenlayer_1/kernelIdentity'dnn/hiddenlayer_1/kernel/ReadVariableOp*
T0*
_output_shapes

:dF

dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Reludnn/hiddenlayer_1/kernel*
T0*'
_output_shapes
:џџџџџџџџџF

%dnn/hiddenlayer_1/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F*
dtype0
n
dnn/hiddenlayer_1/biasIdentity%dnn/hiddenlayer_1/bias/ReadVariableOp*
T0*
_output_shapes
:F

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/bias*
T0*'
_output_shapes
:џџџџџџџџџF
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџF
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_1/cond/SwitchSwitchdnn/zero_fraction_1/LessEqualdnn/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_1/cond/switch_tIdentity!dnn/zero_fraction_1/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_1/cond/switch_fIdentitydnn/zero_fraction_1/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_1/cond/pred_idIdentitydnn/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: 

,dnn/zero_fraction_1/cond/count_nonzero/zerosConst"^dnn/zero_fraction_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
е
/dnn/zero_fraction_1/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_1/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџF
ъ
6dnn/zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_1/Relu*:
_output_shapes(
&:џџџџџџџџџF:џџџџџџџџџF
Ѕ
+dnn/zero_fraction_1/cond/count_nonzero/CastCast/dnn/zero_fraction_1/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџF
Ё
,dnn/zero_fraction_1/cond/count_nonzero/ConstConst"^dnn/zero_fraction_1/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
З
4dnn/zero_fraction_1/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_1/cond/count_nonzero/Cast,dnn/zero_fraction_1/cond/count_nonzero/Const*
T0*
_output_shapes
: 

dnn/zero_fraction_1/cond/CastCast4dnn/zero_fraction_1/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 

.dnn/zero_fraction_1/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_1/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
й
1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_1/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:џџџџџџџџџF
ь
8dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_1/Relu dnn/zero_fraction_1/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_1/Relu*:
_output_shapes(
&:џџџџџџџџџF:џџџџџџџџџF
Љ
-dnn/zero_fraction_1/cond/count_nonzero_1/CastCast1dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџF
Ѓ
.dnn/zero_fraction_1/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_1/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
Н
6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_1/cond/count_nonzero_1/Cast.dnn/zero_fraction_1/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
Њ
dnn/zero_fraction_1/cond/MergeMerge6dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_1/cond/Cast*
N*
T0	*
_output_shapes
: : 

*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Sizednn/zero_fraction_1/cond/Merge*
T0	*
_output_shapes
: 

+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values
Б
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_1/activation/tagConst*
_output_shapes
: *
dtype0*1
value(B& B dnn/dnn/hiddenlayer_1/activation

 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
Х
@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
:*
dtype0*
valueB"F   0   
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *йчfО
З
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *йчf>

Hdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0*
dtype0

>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0

:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0
Ю
dnn/hiddenlayer_2/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: *
dtype0*
shape
:F0*0
shared_name!dnn/hiddenlayer_2/kernel/part_0

@dnn/hiddenlayer_2/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes
: 
Є
&dnn/hiddenlayer_2/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/kernel/part_0:dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform*
dtype0

3dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0*
dtype0
Ў
/dnn/hiddenlayer_2/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
:0*
dtype0*
valueB0*    
Ф
dnn/hiddenlayer_2/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_2/bias/part_0*
_output_shapes
: *
dtype0*
shape:0*.
shared_namednn/hiddenlayer_2/bias/part_0

>dnn/hiddenlayer_2/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
: 

$dnn/hiddenlayer_2/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_2/bias/part_0/dnn/hiddenlayer_2/bias/part_0/Initializer/zeros*
dtype0

1dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
:0*
dtype0

'dnn/hiddenlayer_2/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0*
dtype0
v
dnn/hiddenlayer_2/kernelIdentity'dnn/hiddenlayer_2/kernel/ReadVariableOp*
T0*
_output_shapes

:F0

dnn/hiddenlayer_2/MatMulMatMuldnn/hiddenlayer_1/Reludnn/hiddenlayer_2/kernel*
T0*'
_output_shapes
:џџџџџџџџџ0

%dnn/hiddenlayer_2/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
:0*
dtype0
n
dnn/hiddenlayer_2/biasIdentity%dnn/hiddenlayer_2/bias/ReadVariableOp*
T0*
_output_shapes
:0

dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/bias*
T0*'
_output_shapes
:џџџџџџџџџ0
k
dnn/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ0
i
dnn/zero_fraction_2/SizeSizednn/hiddenlayer_2/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_2/cond/SwitchSwitchdnn/zero_fraction_2/LessEqualdnn/zero_fraction_2/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_2/cond/switch_tIdentity!dnn/zero_fraction_2/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_2/cond/switch_fIdentitydnn/zero_fraction_2/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_2/cond/pred_idIdentitydnn/zero_fraction_2/LessEqual*
T0
*
_output_shapes
: 

,dnn/zero_fraction_2/cond/count_nonzero/zerosConst"^dnn/zero_fraction_2/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
е
/dnn/zero_fraction_2/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_2/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџ0
ъ
6dnn/zero_fraction_2/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_2/Relu dnn/zero_fraction_2/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_2/Relu*:
_output_shapes(
&:џџџџџџџџџ0:џџџџџџџџџ0
Ѕ
+dnn/zero_fraction_2/cond/count_nonzero/CastCast/dnn/zero_fraction_2/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0
Ё
,dnn/zero_fraction_2/cond/count_nonzero/ConstConst"^dnn/zero_fraction_2/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
З
4dnn/zero_fraction_2/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_2/cond/count_nonzero/Cast,dnn/zero_fraction_2/cond/count_nonzero/Const*
T0*
_output_shapes
: 

dnn/zero_fraction_2/cond/CastCast4dnn/zero_fraction_2/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 

.dnn/zero_fraction_2/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_2/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
й
1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_2/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:џџџџџџџџџ0
ь
8dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_2/Relu dnn/zero_fraction_2/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_2/Relu*:
_output_shapes(
&:џџџџџџџџџ0:џџџџџџџџџ0
Љ
-dnn/zero_fraction_2/cond/count_nonzero_1/CastCast1dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџ0
Ѓ
.dnn/zero_fraction_2/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_2/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
Н
6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_2/cond/count_nonzero_1/Cast.dnn/zero_fraction_2/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
Њ
dnn/zero_fraction_2/cond/MergeMerge6dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_2/cond/Cast*
N*
T0	*
_output_shapes
: : 

*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Sizednn/zero_fraction_2/cond/Merge*
T0	*
_output_shapes
: 

+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values
Б
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_2/activation/tagConst*
_output_shapes
: *
dtype0*1
value(B& B dnn/dnn/hiddenlayer_2/activation

 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tagdnn/hiddenlayer_2/Relu*
_output_shapes
: 
Х
@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
:*
dtype0*
valueB"0   "   
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/minConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *О
З
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/maxConst*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *>

Hdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform@dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"*
dtype0

>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/subSub>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/max>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
Ќ
>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mulMulHdnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/RandomUniform>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"

:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniformAdd>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/mul>dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"
Ю
dnn/hiddenlayer_3/kernel/part_0VarHandleOp*2
_class(
&$loc:@dnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: *
dtype0*
shape
:0"*0
shared_name!dnn/hiddenlayer_3/kernel/part_0

@dnn/hiddenlayer_3/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/kernel/part_0*
_output_shapes
: 
Є
&dnn/hiddenlayer_3/kernel/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/kernel/part_0:dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform*
dtype0

3dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"*
dtype0
Ў
/dnn/hiddenlayer_3/bias/part_0/Initializer/zerosConst*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
_output_shapes
:"*
dtype0*
valueB"*    
Ф
dnn/hiddenlayer_3/bias/part_0VarHandleOp*0
_class&
$"loc:@dnn/hiddenlayer_3/bias/part_0*
_output_shapes
: *
dtype0*
shape:"*.
shared_namednn/hiddenlayer_3/bias/part_0

>dnn/hiddenlayer_3/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_3/bias/part_0*
_output_shapes
: 

$dnn/hiddenlayer_3/bias/part_0/AssignAssignVariableOpdnn/hiddenlayer_3/bias/part_0/dnn/hiddenlayer_3/bias/part_0/Initializer/zeros*
dtype0

1dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
_output_shapes
:"*
dtype0

'dnn/hiddenlayer_3/kernel/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"*
dtype0
v
dnn/hiddenlayer_3/kernelIdentity'dnn/hiddenlayer_3/kernel/ReadVariableOp*
T0*
_output_shapes

:0"

dnn/hiddenlayer_3/MatMulMatMuldnn/hiddenlayer_2/Reludnn/hiddenlayer_3/kernel*
T0*'
_output_shapes
:џџџџџџџџџ"

%dnn/hiddenlayer_3/bias/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
_output_shapes
:"*
dtype0
n
dnn/hiddenlayer_3/biasIdentity%dnn/hiddenlayer_3/bias/ReadVariableOp*
T0*
_output_shapes
:"

dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/bias*
T0*'
_output_shapes
:џџџџџџџџџ"
k
dnn/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ"
i
dnn/zero_fraction_3/SizeSizednn/hiddenlayer_3/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_3/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_3/LessEqual	LessEqualdnn/zero_fraction_3/Sizednn/zero_fraction_3/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_3/cond/SwitchSwitchdnn/zero_fraction_3/LessEqualdnn/zero_fraction_3/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_3/cond/switch_tIdentity!dnn/zero_fraction_3/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_3/cond/switch_fIdentitydnn/zero_fraction_3/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_3/cond/pred_idIdentitydnn/zero_fraction_3/LessEqual*
T0
*
_output_shapes
: 

,dnn/zero_fraction_3/cond/count_nonzero/zerosConst"^dnn/zero_fraction_3/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
е
/dnn/zero_fraction_3/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_3/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџ"
ъ
6dnn/zero_fraction_3/cond/count_nonzero/NotEqual/SwitchSwitchdnn/hiddenlayer_3/Relu dnn/zero_fraction_3/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_3/Relu*:
_output_shapes(
&:џџџџџџџџџ":џџџџџџџџџ"
Ѕ
+dnn/zero_fraction_3/cond/count_nonzero/CastCast/dnn/zero_fraction_3/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ"
Ё
,dnn/zero_fraction_3/cond/count_nonzero/ConstConst"^dnn/zero_fraction_3/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
З
4dnn/zero_fraction_3/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_3/cond/count_nonzero/Cast,dnn/zero_fraction_3/cond/count_nonzero/Const*
T0*
_output_shapes
: 

dnn/zero_fraction_3/cond/CastCast4dnn/zero_fraction_3/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 

.dnn/zero_fraction_3/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_3/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
й
1dnn/zero_fraction_3/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_3/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:џџџџџџџџџ"
ь
8dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/hiddenlayer_3/Relu dnn/zero_fraction_3/cond/pred_id*
T0*)
_class
loc:@dnn/hiddenlayer_3/Relu*:
_output_shapes(
&:џџџџџџџџџ":џџџџџџџџџ"
Љ
-dnn/zero_fraction_3/cond/count_nonzero_1/CastCast1dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџ"
Ѓ
.dnn/zero_fraction_3/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_3/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
Н
6dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_3/cond/count_nonzero_1/Cast.dnn/zero_fraction_3/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
Њ
dnn/zero_fraction_3/cond/MergeMerge6dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_3/cond/Cast*
N*
T0	*
_output_shapes
: : 

*dnn/zero_fraction_3/counts_to_fraction/subSubdnn/zero_fraction_3/Sizednn/zero_fraction_3/cond/Merge*
T0	*
_output_shapes
: 

+dnn/zero_fraction_3/counts_to_fraction/CastCast*dnn/zero_fraction_3/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_3/counts_to_fraction/Cast_1Castdnn/zero_fraction_3/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_3/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_3/counts_to_fraction/Cast-dnn/zero_fraction_3/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_3/fractionIdentity.dnn/zero_fraction_3/counts_to_fraction/truediv*
T0*
_output_shapes
: 
 
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values
Б
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/fraction*
T0*
_output_shapes
: 

$dnn/dnn/hiddenlayer_3/activation/tagConst*
_output_shapes
: *
dtype0*1
value(B& B dnn/dnn/hiddenlayer_3/activation

 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tagdnn/hiddenlayer_3/Relu*
_output_shapes
: 
З
9dnn/logits/kernel/part_0/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
:*
dtype0*
valueB""      
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *їќгО
Љ
7dnn/logits/kernel/part_0/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: *
dtype0*
valueB
 *їќг>
№
Adnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniformRandomUniform9dnn/logits/kernel/part_0/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:"*
dtype0
ў
7dnn/logits/kernel/part_0/Initializer/random_uniform/subSub7dnn/logits/kernel/part_0/Initializer/random_uniform/max7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: 

7dnn/logits/kernel/part_0/Initializer/random_uniform/mulMulAdnn/logits/kernel/part_0/Initializer/random_uniform/RandomUniform7dnn/logits/kernel/part_0/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:"

3dnn/logits/kernel/part_0/Initializer/random_uniformAdd7dnn/logits/kernel/part_0/Initializer/random_uniform/mul7dnn/logits/kernel/part_0/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes

:"
Й
dnn/logits/kernel/part_0VarHandleOp*+
_class!
loc:@dnn/logits/kernel/part_0*
_output_shapes
: *
dtype0*
shape
:"*)
shared_namednn/logits/kernel/part_0

9dnn/logits/kernel/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel/part_0*
_output_shapes
: 

dnn/logits/kernel/part_0/AssignAssignVariableOpdnn/logits/kernel/part_03dnn/logits/kernel/part_0/Initializer/random_uniform*
dtype0

,dnn/logits/kernel/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
_output_shapes

:"*
dtype0
 
(dnn/logits/bias/part_0/Initializer/zerosConst*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
:*
dtype0*
valueB*    
Џ
dnn/logits/bias/part_0VarHandleOp*)
_class
loc:@dnn/logits/bias/part_0*
_output_shapes
: *
dtype0*
shape:*'
shared_namednn/logits/bias/part_0
}
7dnn/logits/bias/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias/part_0*
_output_shapes
: 

dnn/logits/bias/part_0/AssignAssignVariableOpdnn/logits/bias/part_0(dnn/logits/bias/part_0/Initializer/zeros*
dtype0
}
*dnn/logits/bias/part_0/Read/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
_output_shapes
:*
dtype0
y
 dnn/logits/kernel/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
_output_shapes

:"*
dtype0
h
dnn/logits/kernelIdentity dnn/logits/kernel/ReadVariableOp*
T0*
_output_shapes

:"
x
dnn/logits/MatMulMatMuldnn/hiddenlayer_3/Reludnn/logits/kernel*
T0*'
_output_shapes
:џџџџџџџџџ
q
dnn/logits/bias/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
_output_shapes
:*
dtype0
`
dnn/logits/biasIdentitydnn/logits/bias/ReadVariableOp*
T0*
_output_shapes
:
s
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/bias*
T0*'
_output_shapes
:џџџџџџџџџ
e
dnn/zero_fraction_4/SizeSizednn/logits/BiasAdd*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_4/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_4/LessEqual	LessEqualdnn/zero_fraction_4/Sizednn/zero_fraction_4/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_4/cond/SwitchSwitchdnn/zero_fraction_4/LessEqualdnn/zero_fraction_4/LessEqual*
T0
*
_output_shapes
: : 
q
!dnn/zero_fraction_4/cond/switch_tIdentity!dnn/zero_fraction_4/cond/Switch:1*
T0
*
_output_shapes
: 
o
!dnn/zero_fraction_4/cond/switch_fIdentitydnn/zero_fraction_4/cond/Switch*
T0
*
_output_shapes
: 
l
 dnn/zero_fraction_4/cond/pred_idIdentitydnn/zero_fraction_4/LessEqual*
T0
*
_output_shapes
: 

,dnn/zero_fraction_4/cond/count_nonzero/zerosConst"^dnn/zero_fraction_4/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
е
/dnn/zero_fraction_4/cond/count_nonzero/NotEqualNotEqual8dnn/zero_fraction_4/cond/count_nonzero/NotEqual/Switch:1,dnn/zero_fraction_4/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
т
6dnn/zero_fraction_4/cond/count_nonzero/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_4/cond/pred_id*
T0*%
_class
loc:@dnn/logits/BiasAdd*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Ѕ
+dnn/zero_fraction_4/cond/count_nonzero/CastCast/dnn/zero_fraction_4/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
Ё
,dnn/zero_fraction_4/cond/count_nonzero/ConstConst"^dnn/zero_fraction_4/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
З
4dnn/zero_fraction_4/cond/count_nonzero/nonzero_countSum+dnn/zero_fraction_4/cond/count_nonzero/Cast,dnn/zero_fraction_4/cond/count_nonzero/Const*
T0*
_output_shapes
: 

dnn/zero_fraction_4/cond/CastCast4dnn/zero_fraction_4/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 

.dnn/zero_fraction_4/cond/count_nonzero_1/zerosConst"^dnn/zero_fraction_4/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
й
1dnn/zero_fraction_4/cond/count_nonzero_1/NotEqualNotEqual8dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual/Switch.dnn/zero_fraction_4/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
ф
8dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual/SwitchSwitchdnn/logits/BiasAdd dnn/zero_fraction_4/cond/pred_id*
T0*%
_class
loc:@dnn/logits/BiasAdd*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Љ
-dnn/zero_fraction_4/cond/count_nonzero_1/CastCast1dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
Ѓ
.dnn/zero_fraction_4/cond/count_nonzero_1/ConstConst"^dnn/zero_fraction_4/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
Н
6dnn/zero_fraction_4/cond/count_nonzero_1/nonzero_countSum-dnn/zero_fraction_4/cond/count_nonzero_1/Cast.dnn/zero_fraction_4/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
Њ
dnn/zero_fraction_4/cond/MergeMerge6dnn/zero_fraction_4/cond/count_nonzero_1/nonzero_countdnn/zero_fraction_4/cond/Cast*
N*
T0	*
_output_shapes
: : 

*dnn/zero_fraction_4/counts_to_fraction/subSubdnn/zero_fraction_4/Sizednn/zero_fraction_4/cond/Merge*
T0	*
_output_shapes
: 

+dnn/zero_fraction_4/counts_to_fraction/CastCast*dnn/zero_fraction_4/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_4/counts_to_fraction/Cast_1Castdnn/zero_fraction_4/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_4/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_4/counts_to_fraction/Cast-dnn/zero_fraction_4/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_4/fractionIdentity.dnn/zero_fraction_4/counts_to_fraction/truediv*
T0*
_output_shapes
: 

+dnn/dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values
Ѓ
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/fraction*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst*
_output_shapes
: *
dtype0**
value!B Bdnn/dnn/logits/activation
x
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
т
Olinear/linear_model/company_xf/weights/part_0/Initializer/zeros/shape_as_tensorConst*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
_output_shapes
:*
dtype0*
valueB"ђ     
Ь
Elinear/linear_model/company_xf/weights/part_0/Initializer/zeros/ConstConst*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
_output_shapes
: *
dtype0*
valueB
 *    
Ы
?linear/linear_model/company_xf/weights/part_0/Initializer/zerosFillOlinear/linear_model/company_xf/weights/part_0/Initializer/zeros/shape_as_tensorElinear/linear_model/company_xf/weights/part_0/Initializer/zeros/Const*
T0*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
_output_shapes
:	ђ
љ
-linear/linear_model/company_xf/weights/part_0VarHandleOp*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
_output_shapes
: *
dtype0*
shape:	ђ*>
shared_name/-linear/linear_model/company_xf/weights/part_0
Ћ
Nlinear/linear_model/company_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp-linear/linear_model/company_xf/weights/part_0*
_output_shapes
: 
Х
4linear/linear_model/company_xf/weights/part_0/AssignAssignVariableOp-linear/linear_model/company_xf/weights/part_0?linear/linear_model/company_xf/weights/part_0/Initializer/zeros*
dtype0
А
Alinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
_output_shapes
:	ђ*
dtype0
ш
Hlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes

:
*
dtype0*
valueB
*    

6linear/linear_model/dropoff_latitude_xf/weights/part_0VarHandleOp*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes
: *
dtype0*
shape
:
*G
shared_name86linear/linear_model/dropoff_latitude_xf/weights/part_0
Н
Wlinear/linear_model/dropoff_latitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes
: 
р
=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0Hlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros*
dtype0
С
Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
ъ
Ilinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zerosConst*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes

:
*
dtype0*
valueB
*    

7linear/linear_model/dropoff_longitude_xf/weights/part_0VarHandleOp*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes
: *
dtype0*
shape
:
*H
shared_name97linear/linear_model/dropoff_longitude_xf/weights/part_0
П
Xlinear/linear_model/dropoff_longitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes
: 
у
>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignAssignVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0Ilinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros*
dtype0
У
Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
ь
Tlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/shape_as_tensorConst*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
:*
dtype0*
valueB"ђ     
ж
Jlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/ConstConst*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
: *
dtype0*
valueB
 *    
п
Dlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zerosFillTlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/shape_as_tensorJlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros/Const*
T0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
:	ђ

2linear/linear_model/payment_type_xf/weights/part_0VarHandleOp*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
: *
dtype0*
shape:	ђ*C
shared_name42linear/linear_model/payment_type_xf/weights/part_0
Е
Slinear/linear_model/payment_type_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp2linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
: 
д
9linear/linear_model/payment_type_xf/weights/part_0/AssignAssignVariableOp2linear/linear_model/payment_type_xf/weights/part_0Dlinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros*
dtype0
К
Flinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
:	ђ*
dtype0
ц
Glinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zerosConst*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes

:
*
dtype0*
valueB
*    

5linear/linear_model/pickup_latitude_xf/weights/part_0VarHandleOp*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes
: *
dtype0*
shape
:
*F
shared_name75linear/linear_model/pickup_latitude_xf/weights/part_0
Л
Vlinear/linear_model/pickup_latitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes
: 
н
<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignAssignVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0Glinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros*
dtype0
П
Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
ш
Hlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes

:
*
dtype0*
valueB
*    

6linear/linear_model/pickup_longitude_xf/weights/part_0VarHandleOp*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes
: *
dtype0*
shape
:
*G
shared_name86linear/linear_model/pickup_longitude_xf/weights/part_0
Н
Wlinear/linear_model/pickup_longitude_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes
: 
р
=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0Hlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros*
dtype0
С
Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
ф
Flinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zerosConst*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    

4linear/linear_model/trip_start_day_xf/weights/part_0VarHandleOp*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*E
shared_name64linear/linear_model/trip_start_day_xf/weights/part_0
Й
Ulinear/linear_model/trip_start_day_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp4linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes
: 
к
;linear/linear_model/trip_start_day_xf/weights/part_0/AssignAssignVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0Flinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros*
dtype0
Н
Hlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes

:*
dtype0
ц
Glinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zerosConst*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    

5linear/linear_model/trip_start_hour_xf/weights/part_0VarHandleOp*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75linear/linear_model/trip_start_hour_xf/weights/part_0
Л
Vlinear/linear_model/trip_start_hour_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes
: 
н
<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignAssignVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0Glinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros*
dtype0
П
Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes

:*
dtype0
ш
Hlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zerosConst*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes

:*
dtype0*
valueB*    

6linear/linear_model/trip_start_month_xf/weights/part_0VarHandleOp*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes
: *
dtype0*
shape
:*G
shared_name86linear/linear_model/trip_start_month_xf/weights/part_0
Н
Wlinear/linear_model/trip_start_month_xf/weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp6linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes
: 
р
=linear/linear_model/trip_start_month_xf/weights/part_0/AssignAssignVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0Hlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros*
dtype0
С
Jlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes

:*
dtype0
Т
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0*
valueB*    
т
'linear/linear_model/bias_weights/part_0VarHandleOp*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'linear/linear_model/bias_weights/part_0

Hlinear/linear_model/bias_weights/part_0/IsInitialized/VarIsInitializedOpVarIsInitializedOp'linear/linear_model/bias_weights/part_0*
_output_shapes
: 
Г
.linear/linear_model/bias_weights/part_0/AssignAssignVariableOp'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
dtype0

;linear/linear_model/bias_weights/part_0/Read/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0

Glinear/linear_model/linear_model/linear_model/company_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
й
Clinear/linear_model/linear_model/linear_model/company_xf/ExpandDims
ExpandDimsIdentity_59Glinear/linear_model/linear_model/linear_model/company_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Ђ
Wlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ц
Ulinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/ignore_valueCastWlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ћ
Qlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/NotEqualNotEqualClinear/linear_model/linear_model/linear_model/company_xf/ExpandDimsUlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
е
Plinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/indicesWhereQlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ж
Olinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/valuesGatherNdClinear/linear_model/linear_model/linear_model/company_xf/ExpandDimsPlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
з
Tlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/dense_shapeShapeClinear/linear_model/linear_model/linear_model/company_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Flinear/linear_model/linear_model/linear_model/company_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value
B :ђ
Ф
Dlinear/linear_model/linear_model/linear_model/company_xf/num_bucketsCastFlinear/linear_model/linear_model/linear_model/company_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

?linear/linear_model/linear_model/linear_model/company_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ж
=linear/linear_model/linear_model/linear_model/company_xf/zeroCast?linear/linear_model/linear_model/linear_model/company_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 

=linear/linear_model/linear_model/linear_model/company_xf/LessLessOlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/values=linear/linear_model/linear_model/linear_model/company_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ

Elinear/linear_model/linear_model/linear_model/company_xf/GreaterEqualGreaterEqualOlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/valuesDlinear/linear_model/linear_model/linear_model/company_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ
§
Elinear/linear_model/linear_model/linear_model/company_xf/out_of_range	LogicalOr=linear/linear_model/linear_model/linear_model/company_xf/LessElinear/linear_model/linear_model/linear_model/company_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Н
>linear/linear_model/linear_model/linear_model/company_xf/ShapeShapeOlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/values*
T0	*
_output_shapes
:

?linear/linear_model/linear_model/linear_model/company_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ж
=linear/linear_model/linear_model/linear_model/company_xf/CastCast?linear/linear_model/linear_model/linear_model/company_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 
ќ
Glinear/linear_model/linear_model/linear_model/company_xf/default_valuesFill>linear/linear_model/linear_model/linear_model/company_xf/Shape=linear/linear_model/linear_model/linear_model/company_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
м
Alinear/linear_model/linear_model/linear_model/company_xf/SelectV2SelectV2Elinear/linear_model/linear_model/linear_model/company_xf/out_of_rangeGlinear/linear_model/linear_model/linear_model/company_xf/default_valuesOlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
з
Elinear/linear_model/linear_model/linear_model/company_xf/Shape_1/CastCastTlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:

Llinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Nlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Nlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
б
Flinear/linear_model/linear_model/linear_model/company_xf/strided_sliceStridedSliceElinear/linear_model/linear_model/linear_model/company_xf/Shape_1/CastLlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stackNlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stack_1Nlinear/linear_model/linear_model/linear_model/company_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Clinear/linear_model/linear_model/linear_model/company_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Alinear/linear_model/linear_model/linear_model/company_xf/Cast_1/xPackFlinear/linear_model/linear_model/linear_model/company_xf/strided_sliceClinear/linear_model/linear_model/linear_model/company_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
О
?linear/linear_model/linear_model/linear_model/company_xf/Cast_1CastAlinear/linear_model/linear_model/linear_model/company_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:
я
Flinear/linear_model/linear_model/linear_model/company_xf/SparseReshapeSparseReshapePlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/indicesTlinear/linear_model/linear_model/linear_model/company_xf/to_sparse_input/dense_shape?linear/linear_model/linear_model/linear_model/company_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
Ь
Olinear/linear_model/linear_model/linear_model/company_xf/SparseReshape/IdentityIdentityAlinear/linear_model/linear_model/linear_model/company_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 

Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
ѕ
Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SliceSliceHlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape:1Qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice/beginPlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

Jlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ProdProdKlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SliceKlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

Vlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Nlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2GatherV2Hlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape:1Vlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2/indicesSlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Llinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Cast/xPackJlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ProdNlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:
ѓ
Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshapeSparseReshapeFlinear/linear_model/linear_model/linear_model/company_xf/SparseReshapeHlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape:1Llinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ч
\linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityIdentityOlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Tlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
Ф
Rlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GreaterEqualGreaterEqual\linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityTlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
б
Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/WhereWhereRlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
І
Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Ј
Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ReshapeReshapeKlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/WhereSlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Ulinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ќ
Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1GatherV2Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshapeMlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ReshapeUlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

Ulinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Б
Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2GatherV2\linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshape/IdentityMlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ReshapeUlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ж
Nlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/IdentityIdentityUlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ё
_linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
И
mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_1Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/GatherV2_2Nlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Identity_linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Т
qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ф
slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ф
slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
М
klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicemlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsqlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackslinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask

blinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/CastCastklinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ

dlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueolinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

nlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather-linear/linear_model/company_xf/weights/part_0dlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
dtype0
ч
wlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitynlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
А
ylinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitywlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
ъ
]linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumylinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1flinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Unique:1blinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
І
Ulinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
д
Olinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_1Reshapeolinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Ulinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
и
Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ShapeShape]linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ѓ
Ylinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ѕ
[linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ѕ
[linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_sliceStridedSliceKlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/ShapeYlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack[linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_1[linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Ѕ
Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/stackPackMlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/stack/0Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
Ћ
Jlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/TileTileOlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_1Klinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ю
Plinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/zeros_like	ZerosLike]linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ў
Elinear/linear_model/linear_model/linear_model/company_xf/weighted_sumSelectJlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/TilePlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/zeros_like]linear/linear_model/linear_model/linear_model/company_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
в
Llinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Cast_1CastHlinear/linear_model/linear_model/linear_model/company_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 

Rlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џ
Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1SliceLlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Cast_1Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1/beginRlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Т
Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Shape_1ShapeElinear/linear_model/linear_model/linear_model/company_xf/weighted_sum*
T0*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Ѕ
Rlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2SliceMlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Shape_1Slinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2/beginRlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ї
Llinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/concatConcatV2Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_1Mlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Slice_2Qlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
Ё
Olinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_2ReshapeElinear/linear_model/linear_model/linear_model/company_xf/weighted_sumLlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ы
Llinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims
ExpandDimsIdentity_66Plinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Ћ
`linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ј
^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_valueCast`linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ц
Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqualNotEqualLlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ч
Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indicesWhereZlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
б
Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/valuesGatherNdLlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDimsYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
щ
]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeShapeLlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Olinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

ж
Mlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/num_bucketsCastOlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Hlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ш
Flinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/zeroCastHlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 

Flinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/LessLessXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/valuesFlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
Е
Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/valuesMlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/out_of_range	LogicalOrFlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/LessNlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Я
Glinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ShapeShapeXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Hlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ш
Flinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/CastCastHlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 

Plinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/default_valuesFillGlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/ShapeFlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SelectV2SelectV2Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/out_of_rangePlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/default_valuesXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
щ
Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Shape_1/CastCast]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ё
Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ё
Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ў
Olinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_sliceStridedSliceNlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Shape_1/CastUlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stackWlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_1Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Llinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1/xPackOlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/strided_sliceLlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
а
Hlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1CastJlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:

Olinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshapeSparseReshapeYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/indices]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/to_sparse_input/dense_shapeHlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
о
Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Є
Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ѓ
Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SliceSliceQlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/beginYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ј
Slinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ProdProdTlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SliceTlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ё
_linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Й
Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2GatherV2Qlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1_linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/indices\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Й
Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast/xPackSlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ProdWlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:

\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeSparseReshapeOlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshapeQlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
љ
elinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
п
[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqualGreaterEqualelinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/Identity]linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
у
Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/WhereWhere[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Џ
\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
У
Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ReshapeReshapeTlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Where\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
а
Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1GatherV2\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshapeVlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
е
Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2GatherV2elinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape/IdentityVlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ш
Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/IdentityIdentity^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Њ
hlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
х
vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_1Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/GatherV2_2Wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Identityhlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ы
zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Э
|linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Э
|linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
щ
tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicevlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowszlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack|linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1|linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
І
klinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCasttlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
Ў
mlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquexlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
С
wlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather6linear/linear_model/dropoff_latitude_xf/weights/part_0mlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitywlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Ф
linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1olinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1klinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
я
Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Reshapexlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2^linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ъ
Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/ShapeShapeflinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ќ
blinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ў
dlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ў
dlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
И
\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_sliceStridedSliceTlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shapeblinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stackdlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_1dlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Р
Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stackPackVlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack/0\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
Ц
Slinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/TileTileXlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_1Tlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Ylinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/zeros_like	ZerosLikeflinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Nlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sumSelectSlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/TileYlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/zeros_likeflinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1CastQlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
І
\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ѕ
[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Ѓ
Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1SliceUlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Cast_1\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/begin[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
д
Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1ShapeNlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum*
T0*
_output_shapes
:
І
\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Ў
[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Є
Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2SliceVlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Shape_1\linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/begin[linear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Ulinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concatConcatV2Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_1Vlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Slice_2Zlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
М
Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2ReshapeNlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sumUlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Qlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
э
Mlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims
ExpandDimsIdentity_57Qlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Ќ
alinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
њ
_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_valueCastalinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
Щ
[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqualNotEqualMlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
щ
Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indicesWhere[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
д
Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGatherNdMlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDimsZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ы
^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeShapeMlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Plinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

и
Nlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/num_bucketsCastPlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Ilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ъ
Glinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/zeroCastIlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ё
Glinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/LessLessYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesGlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
И
Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/GreaterEqualGreaterEqualYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/valuesNlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/out_of_range	LogicalOrGlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/LessOlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
б
Hlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ShapeShapeYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Ilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ъ
Glinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/CastCastIlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 

Qlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/default_valuesFillHlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/ShapeGlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ

Klinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SelectV2SelectV2Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/out_of_rangeQlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/default_valuesYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
ы
Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Shape_1/CastCast^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
 
Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ђ
Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ђ
Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

Plinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_sliceStridedSliceOlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Shape_1/CastVlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stackXlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_1Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Mlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Ђ
Klinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1/xPackPlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/strided_sliceMlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
в
Ilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1CastKlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:

Plinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshapeSparseReshapeZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/indices^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/to_sparse_input/dense_shapeIlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
р
Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape/IdentityIdentityKlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѕ
[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Є
Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SliceSliceRlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/beginZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ћ
Tlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ProdProdUlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SliceUlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ђ
`linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Н
Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2GatherV2Rlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1`linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/indices]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
М
Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast/xPackTlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ProdXlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:

]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeSparseReshapePlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshapeRlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ћ
flinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
т
\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqualGreaterEqualflinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/Identity^linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
х
Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/WhereWhere\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
А
]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Ц
Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ReshapeReshapeUlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Where]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
Ё
_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
д
Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1GatherV2]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshapeWlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
Ё
_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
й
Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2GatherV2flinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape/IdentityWlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ъ
Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/IdentityIdentity_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ћ
ilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ъ
wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_1Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/GatherV2_2Xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Identityilinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ь
{linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ю
}linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ю
}linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
ю
ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicewlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows{linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack}linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1}linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Ј
llinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCastulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
А
nlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniqueylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Х
xlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather7linear/linear_model/dropoff_longitude_xf/weights/part_0nlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityxlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Ц
linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

glinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1plinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1llinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
А
_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ђ
Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Reshapeylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2_linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ь
Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/ShapeShapeglinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
­
clinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Џ
elinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Џ
elinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Н
]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_sliceStridedSliceUlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shapeclinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stackelinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_1elinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
У
Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stackPackWlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack/0]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
Щ
Tlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/TileTileYlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_1Ulinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Zlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/zeros_like	ZerosLikeglinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
І
Olinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sumSelectTlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/TileZlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/zeros_likeglinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ц
Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1CastRlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Ї
]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
І
\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Ї
Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1SliceVlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Cast_1]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/begin\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
ж
Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1ShapeOlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum*
T0*
_output_shapes
:
Ї
]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Џ
\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Ј
Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2SliceWlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Shape_1]linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/begin\linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Vlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concatConcatV2Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_1Wlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Slice_2[linear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
П
Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2ReshapeOlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sumVlinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Llinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
у
Hlinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDims
ExpandDimsIdentity_68Llinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Ї
\linear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
№
Zlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_valueCast\linear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
К
Vlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/NotEqualNotEqualHlinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDimsZlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
п
Ulinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/indicesWhereVlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Х
Tlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/valuesGatherNdHlinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDimsUlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
с
Ylinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shapeShapeHlinear/linear_model/linear_model/linear_model/payment_type_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Klinear/linear_model/linear_model/linear_model/payment_type_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value
B :ђ
Ю
Ilinear/linear_model/linear_model/linear_model/payment_type_xf/num_bucketsCastKlinear/linear_model/linear_model/linear_model/payment_type_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Dlinear/linear_model/linear_model/linear_model/payment_type_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
Р
Blinear/linear_model/linear_model/linear_model/payment_type_xf/zeroCastDlinear/linear_model/linear_model/linear_model/payment_type_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 

Blinear/linear_model/linear_model/linear_model/payment_type_xf/LessLessTlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/valuesBlinear/linear_model/linear_model/linear_model/payment_type_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
Љ
Jlinear/linear_model/linear_model/linear_model/payment_type_xf/GreaterEqualGreaterEqualTlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/valuesIlinear/linear_model/linear_model/linear_model/payment_type_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/payment_type_xf/out_of_range	LogicalOrBlinear/linear_model/linear_model/linear_model/payment_type_xf/LessJlinear/linear_model/linear_model/linear_model/payment_type_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Ч
Clinear/linear_model/linear_model/linear_model/payment_type_xf/ShapeShapeTlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Dlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
Р
Blinear/linear_model/linear_model/linear_model/payment_type_xf/CastCastDlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 

Llinear/linear_model/linear_model/linear_model/payment_type_xf/default_valuesFillClinear/linear_model/linear_model/linear_model/payment_type_xf/ShapeBlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
№
Flinear/linear_model/linear_model/linear_model/payment_type_xf/SelectV2SelectV2Jlinear/linear_model/linear_model/linear_model/payment_type_xf/out_of_rangeLlinear/linear_model/linear_model/linear_model/payment_type_xf/default_valuesTlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
с
Jlinear/linear_model/linear_model/linear_model/payment_type_xf/Shape_1/CastCastYlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:

Qlinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Slinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Slinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ъ
Klinear/linear_model/linear_model/linear_model/payment_type_xf/strided_sliceStridedSliceJlinear/linear_model/linear_model/linear_model/payment_type_xf/Shape_1/CastQlinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stackSlinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stack_1Slinear/linear_model/linear_model/linear_model/payment_type_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Hlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Flinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1/xPackKlinear/linear_model/linear_model/linear_model/payment_type_xf/strided_sliceHlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
Ш
Dlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1CastFlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:

Klinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshapeSparseReshapeUlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/indicesYlinear/linear_model/linear_model/linear_model/payment_type_xf/to_sparse_input/dense_shapeDlinear/linear_model/linear_model/linear_model/payment_type_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
ж
Tlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape/IdentityIdentityFlinear/linear_model/linear_model/linear_model/payment_type_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
 
Vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 

Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SliceSliceMlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape:1Vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/beginUlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 

Olinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ProdProdPlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SlicePlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

[linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Љ
Slinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2GatherV2Mlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape:1[linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/indicesXlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
­
Qlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Cast/xPackOlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ProdSlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:

Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshapeSparseReshapeKlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshapeMlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape:1Qlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ё
alinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityIdentityTlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

Ylinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
г
Wlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqualGreaterEqualalinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityYlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
л
Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/WhereWhereWlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ћ
Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
З
Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeReshapePlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/WhereXlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

Zlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Р
Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1GatherV2Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshapeRlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeZlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

Zlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Х
Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2GatherV2alinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape/IdentityRlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ReshapeZlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
р
Slinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/IdentityIdentityZlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
І
dlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
б
rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsUlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_1Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/GatherV2_2Slinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Identitydlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ч
vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Щ
xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Щ
xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
е
plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicerlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsvlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackxlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask

glinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/CastCastplinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
І
ilinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquetlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Б
slinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather2linear/linear_model/payment_type_xf/weights/part_0ilinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
dtype0
і
|linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityslinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
К
~linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity|linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
ў
blinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSum~linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1klinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Unique:1glinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ћ
Zlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
у
Tlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1Reshapetlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2Zlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
т
Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/ShapeShapeblinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ј
^linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Њ
`linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Њ
`linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Є
Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_sliceStridedSlicePlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Shape^linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack`linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_1`linear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Д
Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/stackPackRlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/stack/0Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
К
Olinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/TileTileTlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_1Plinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ј
Ulinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/zeros_like	ZerosLikeblinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sumSelectOlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/TileUlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/zeros_likeblinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
м
Qlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Cast_1CastMlinear/linear_model/linear_model/linear_model/payment_type_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ё
Wlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1SliceQlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Cast_1Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/beginWlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ь
Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Shape_1ShapeJlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum*
T0*
_output_shapes
:
Ђ
Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Њ
Wlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2SliceRlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Shape_1Xlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/beginWlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Qlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/concatConcatV2Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_1Rlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Slice_2Vlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
А
Tlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_2ReshapeJlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sumQlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
щ
Klinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims
ExpandDimsIdentity_69Olinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Њ
_linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
і
]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_valueCast_linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
У
Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/NotEqualNotEqualKlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
х
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indicesWhereYlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ю
Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/valuesGatherNdKlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDimsXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ч
\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeShapeKlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Nlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

д
Llinear/linear_model/linear_model/linear_model/pickup_latitude_xf/num_bucketsCastNlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Glinear/linear_model/linear_model/linear_model/pickup_latitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ц
Elinear/linear_model/linear_model/linear_model/pickup_latitude_xf/zeroCastGlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 

Elinear/linear_model/linear_model/linear_model/pickup_latitude_xf/LessLessWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/valuesElinear/linear_model/linear_model/linear_model/pickup_latitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
В
Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/valuesLlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/out_of_range	LogicalOrElinear/linear_model/linear_model/linear_model/pickup_latitude_xf/LessMlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Э
Flinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ShapeShapeWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ц
Elinear/linear_model/linear_model/linear_model/pickup_latitude_xf/CastCastGlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 

Olinear/linear_model/linear_model/linear_model/pickup_latitude_xf/default_valuesFillFlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/ShapeElinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
ќ
Ilinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SelectV2SelectV2Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/out_of_rangeOlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/default_valuesWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
ч
Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Shape_1/CastCast\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
 
Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
 
Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
љ
Nlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_sliceStridedSliceMlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Shape_1/CastTlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stackVlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Klinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Ilinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1/xPackNlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/strided_sliceKlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
Ю
Glinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1CastIlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:

Nlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshapeSparseReshapeXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/indices\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/to_sparse_input/dense_shapeGlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
м
Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape/IdentityIdentityIlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѓ
Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ђ
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SliceSlicePlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/beginXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ѕ
Rlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ProdProdSlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SliceSlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
 
^linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Е
Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2GatherV2Plinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1^linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/indices[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Ж
Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast/xPackRlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ProdVlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:

[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeSparseReshapeNlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshapePlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ї
dlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityIdentityWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
м
Zlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqualGreaterEqualdlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/Identity\linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
с
Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/WhereWhereZlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ў
[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Р
Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ReshapeReshapeSlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Where[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ь
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1GatherV2[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshapeUlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
б
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2GatherV2dlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape/IdentityUlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ц
Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/IdentityIdentity]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Љ
glinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
р
ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_1Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/GatherV2_2Vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Identityglinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ъ
ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ь
{linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ь
{linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
ф
slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack{linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1{linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Є
jlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/CastCastslinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
Ќ
llinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquewlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Н
vlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather5linear/linear_model/pickup_latitude_xf/weights/part_0llinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
dtype0
џ
linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityvlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
С
linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

elinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1nlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1jlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ў
]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ь
Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Reshapewlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2]linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ш
Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/ShapeShapeelinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ћ
alinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
­
clinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
­
clinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Г
[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_sliceStridedSliceSlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shapealinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stackclinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_1clinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Н
Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stackPackUlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack/0[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
У
Rlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/TileTileWlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_1Slinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ў
Xlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/zeros_like	ZerosLikeelinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

Mlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sumSelectRlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/TileXlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/zeros_likeelinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
т
Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast_1CastPlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Ѕ
[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Є
Zlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1SliceTlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Cast_1[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/beginZlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
в
Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shape_1ShapeMlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum*
T0*
_output_shapes
:
Ѕ
[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
­
Zlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
 
Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2SliceUlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Shape_1[linear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/beginZlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Tlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concatConcatV2Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_1Ulinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Slice_2Ylinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
Й
Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2ReshapeMlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sumTlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ы
Llinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims
ExpandDimsIdentity_70Plinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Ћ
`linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ј
^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_valueCast`linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ц
Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/NotEqualNotEqualLlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ч
Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indicesWhereZlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
б
Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/valuesGatherNdLlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDimsYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
щ
]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeShapeLlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Olinear/linear_model/linear_model/linear_model/pickup_longitude_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :

ж
Mlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/num_bucketsCastOlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Hlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ш
Flinear/linear_model/linear_model/linear_model/pickup_longitude_xf/zeroCastHlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 

Flinear/linear_model/linear_model/linear_model/pickup_longitude_xf/LessLessXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/valuesFlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
Е
Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/valuesMlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/out_of_range	LogicalOrFlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/LessNlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Я
Glinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ShapeShapeXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Hlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ш
Flinear/linear_model/linear_model/linear_model/pickup_longitude_xf/CastCastHlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 

Plinear/linear_model/linear_model/linear_model/pickup_longitude_xf/default_valuesFillGlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/ShapeFlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SelectV2SelectV2Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/out_of_rangePlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/default_valuesXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
щ
Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Shape_1/CastCast]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ё
Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ё
Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ў
Olinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_sliceStridedSliceNlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Shape_1/CastUlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stackWlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_1Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Llinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1/xPackOlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/strided_sliceLlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
а
Hlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1CastJlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:

Olinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshapeSparseReshapeYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/indices]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/to_sparse_input/dense_shapeHlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
о
Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Є
Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ѓ
Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SliceSliceQlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/beginYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ј
Slinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ProdProdTlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SliceTlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ё
_linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Й
Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2GatherV2Qlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1_linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/indices\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Й
Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast/xPackSlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ProdWlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:

\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeSparseReshapeOlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshapeQlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
љ
elinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityIdentityXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
п
[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqualGreaterEqualelinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/Identity]linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
у
Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/WhereWhere[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Џ
\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
У
Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ReshapeReshapeTlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Where\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
а
Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1GatherV2\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshapeVlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
е
Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2GatherV2elinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape/IdentityVlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ш
Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/IdentityIdentity^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Њ
hlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
х
vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_1Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/GatherV2_2Wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Identityhlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ы
zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Э
|linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Э
|linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
щ
tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicevlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowszlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack|linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1|linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
І
klinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/CastCasttlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
Ў
mlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquexlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
С
wlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather6linear/linear_model/pickup_longitude_xf/weights/part_0mlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitywlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Ф
linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1olinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Unique:1klinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
я
Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Reshapexlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2^linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ъ
Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/ShapeShapeflinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ќ
blinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ў
dlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ў
dlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
И
\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_sliceStridedSliceTlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shapeblinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stackdlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_1dlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Р
Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stackPackVlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack/0\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
Ц
Slinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/TileTileXlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_1Tlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Ylinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/zeros_like	ZerosLikeflinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Nlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sumSelectSlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/TileYlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/zeros_likeflinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast_1CastQlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
І
\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ѕ
[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Ѓ
Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1SliceUlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Cast_1\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/begin[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
д
Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shape_1ShapeNlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum*
T0*
_output_shapes
:
І
\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Ў
[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Є
Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2SliceVlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Shape_1\linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/begin[linear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Ulinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concatConcatV2Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_1Vlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Slice_2Zlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
М
Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2ReshapeNlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sumUlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ч
Jlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims
ExpandDimsIdentity_54Nlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Љ
^linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
є
\linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_valueCast^linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
Р
Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/NotEqualNotEqualJlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims\linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
у
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indicesWhereXlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ы
Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/valuesGatherNdJlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDimsWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
х
[linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeShapeJlinear/linear_model/linear_model/linear_model/trip_start_day_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Mlinear/linear_model/linear_model/linear_model/trip_start_day_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
в
Klinear/linear_model/linear_model/linear_model/trip_start_day_xf/num_bucketsCastMlinear/linear_model/linear_model/linear_model/trip_start_day_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Flinear/linear_model/linear_model/linear_model/trip_start_day_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ф
Dlinear/linear_model/linear_model/linear_model/trip_start_day_xf/zeroCastFlinear/linear_model/linear_model/linear_model/trip_start_day_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 

Dlinear/linear_model/linear_model/linear_model/trip_start_day_xf/LessLessVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/valuesDlinear/linear_model/linear_model/linear_model/trip_start_day_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
Џ
Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/GreaterEqualGreaterEqualVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/valuesKlinear/linear_model/linear_model/linear_model/trip_start_day_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/out_of_range	LogicalOrDlinear/linear_model/linear_model/linear_model/trip_start_day_xf/LessLlinear/linear_model/linear_model/linear_model/trip_start_day_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Ы
Elinear/linear_model/linear_model/linear_model/trip_start_day_xf/ShapeShapeVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Flinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ф
Dlinear/linear_model/linear_model/linear_model/trip_start_day_xf/CastCastFlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 

Nlinear/linear_model/linear_model/linear_model/trip_start_day_xf/default_valuesFillElinear/linear_model/linear_model/linear_model/trip_start_day_xf/ShapeDlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
ј
Hlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SelectV2SelectV2Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/out_of_rangeNlinear/linear_model/linear_model/linear_model/trip_start_day_xf/default_valuesVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
х
Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/Shape_1/CastCast[linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
є
Mlinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_sliceStridedSliceLlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Shape_1/CastSlinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stackUlinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_1Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Jlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Hlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1/xPackMlinear/linear_model/linear_model/linear_model/trip_start_day_xf/strided_sliceJlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
Ь
Flinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1CastHlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:

Mlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshapeSparseReshapeWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/indices[linear/linear_model/linear_model/linear_model/trip_start_day_xf/to_sparse_input/dense_shapeFlinear/linear_model/linear_model/linear_model/trip_start_day_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
к
Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape/IdentityIdentityHlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ђ
Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ё
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SliceSliceOlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/beginWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ђ
Qlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ProdProdRlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SliceRlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Const*
T0	*
_output_shapes
: 

]linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Б
Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2GatherV2Olinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape:1]linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/indicesZlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Г
Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast/xPackQlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ProdUlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:

Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeSparseReshapeMlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshapeOlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape:1Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ѕ
clinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityIdentityVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

[linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
й
Ylinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqualGreaterEqualclinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/Identity[linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
п
Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/WhereWhereYlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
­
Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Н
Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ReshapeReshapeRlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/WhereZlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ш
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1GatherV2Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshapeTlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Э
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2GatherV2clinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape/IdentityTlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ф
Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/IdentityIdentity\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Ј
flinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
л
tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_1Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/GatherV2_2Ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Identityflinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Щ
xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ы
zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ы
zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
п
rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicetlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsxlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackzlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Ђ
ilinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/CastCastrlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
Њ
klinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquevlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Й
ulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather4linear/linear_model/trip_start_day_xf/weights/part_0klinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
dtype0
ќ
~linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityulinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
П
linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identity~linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

dlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1mlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Unique:1ilinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
­
\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
щ
Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Reshapevlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2\linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ц
Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/ShapeShapedlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Њ
`linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ќ
blinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ќ
blinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ў
Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_sliceStridedSliceRlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape`linear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stackblinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_1blinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
К
Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/stackPackTlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack/0Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
Р
Qlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/TileTileVlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_1Rlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ќ
Wlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/zeros_like	ZerosLikedlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

Llinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sumSelectQlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/TileWlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/zeros_likedlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
р
Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast_1CastOlinear/linear_model/linear_model/linear_model/trip_start_day_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Є
Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ѓ
Ylinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1SliceSlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Cast_1Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/beginYlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
а
Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape_1ShapeLlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum*
T0*
_output_shapes
:
Є
Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Ќ
Ylinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ

Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2SliceTlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Shape_1Zlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/beginYlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Slinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/concatConcatV2Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_1Tlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Slice_2Xlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
Ж
Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_2ReshapeLlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sumSlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Olinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
щ
Klinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims
ExpandDimsIdentity_64Olinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Њ
_linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
і
]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_valueCast_linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
У
Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/NotEqualNotEqualKlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
х
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indicesWhereYlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
Ю
Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/valuesGatherNdKlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDimsXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ч
\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeShapeKlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Nlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
д
Llinear/linear_model/linear_model/linear_model/trip_start_hour_xf/num_bucketsCastNlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Glinear/linear_model/linear_model/linear_model/trip_start_hour_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ц
Elinear/linear_model/linear_model/linear_model/trip_start_hour_xf/zeroCastGlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 

Elinear/linear_model/linear_model/linear_model/trip_start_hour_xf/LessLessWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/valuesElinear/linear_model/linear_model/linear_model/trip_start_hour_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
В
Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/GreaterEqualGreaterEqualWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/valuesLlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/out_of_range	LogicalOrElinear/linear_model/linear_model/linear_model/trip_start_hour_xf/LessMlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Э
Flinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ShapeShapeWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Glinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ц
Elinear/linear_model/linear_model/linear_model/trip_start_hour_xf/CastCastGlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 

Olinear/linear_model/linear_model/linear_model/trip_start_hour_xf/default_valuesFillFlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/ShapeElinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ
ќ
Ilinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SelectV2SelectV2Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/out_of_rangeOlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/default_valuesWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
ч
Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Shape_1/CastCast\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
 
Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
 
Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
љ
Nlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_sliceStridedSliceMlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Shape_1/CastTlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stackVlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_1Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Klinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Ilinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1/xPackNlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/strided_sliceKlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
Ю
Glinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1CastIlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:

Nlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshapeSparseReshapeXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/indices\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/to_sparse_input/dense_shapeGlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
м
Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape/IdentityIdentityIlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѓ
Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ђ
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SliceSlicePlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/beginXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ѕ
Rlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ProdProdSlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SliceSlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
 
^linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Е
Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2GatherV2Plinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1^linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/indices[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Ж
Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast/xPackRlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ProdVlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:

[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeSparseReshapeNlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshapePlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ї
dlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityIdentityWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
м
Zlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqualGreaterEqualdlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/Identity\linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
с
Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/WhereWhereZlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Ў
[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Р
Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ReshapeReshapeSlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Where[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Ь
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1GatherV2[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshapeUlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
б
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2GatherV2dlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape/IdentityUlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ц
Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/IdentityIdentity]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Љ
glinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
р
ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_1Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/GatherV2_2Vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Identityglinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ъ
ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Ь
{linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Ь
{linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
ф
slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSliceulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack{linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1{linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
Є
jlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/CastCastslinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
Ќ
llinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquewlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Н
vlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather5linear/linear_model/trip_start_hour_xf/weights/part_0llinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
dtype0
џ
linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentityvlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
С
linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

elinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1nlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Unique:1jlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Ў
]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ь
Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Reshapewlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2]linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ш
Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/ShapeShapeelinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ћ
alinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
­
clinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
­
clinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Г
[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_sliceStridedSliceSlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shapealinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stackclinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_1clinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Н
Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stackPackUlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack/0[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
У
Rlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/TileTileWlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_1Slinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
ў
Xlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/zeros_like	ZerosLikeelinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ

Mlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sumSelectRlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/TileXlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/zeros_likeelinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
т
Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast_1CastPlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Ѕ
[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Є
Zlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1SliceTlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Cast_1[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/beginZlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
в
Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shape_1ShapeMlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum*
T0*
_output_shapes
:
Ѕ
[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
­
Zlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
 
Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2SliceUlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Shape_1[linear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/beginZlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Tlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concatConcatV2Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_1Ulinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Slice_2Ylinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
Й
Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2ReshapeMlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sumTlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Plinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ы
Llinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims
ExpandDimsIdentity_55Plinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
Ћ
`linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ј
^linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_valueCast`linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value/x*

DstT0	*

SrcT0*
_output_shapes
: 
Ц
Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/NotEqualNotEqualLlinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims^linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:џџџџџџџџџ
ч
Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indicesWhereZlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ
б
Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/valuesGatherNdLlinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDimsYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indices*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
щ
]linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeShapeLlinear/linear_model/linear_model/linear_model/trip_start_month_xf/ExpandDims*
T0	*
_output_shapes
:*
out_type0	

Olinear/linear_model/linear_model/linear_model/trip_start_month_xf/num_buckets/xConst*
_output_shapes
: *
dtype0*
value	B :
ж
Mlinear/linear_model/linear_model/linear_model/trip_start_month_xf/num_bucketsCastOlinear/linear_model/linear_model/linear_model/trip_start_month_xf/num_buckets/x*

DstT0	*

SrcT0*
_output_shapes
: 

Hlinear/linear_model/linear_model/linear_model/trip_start_month_xf/zero/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ш
Flinear/linear_model/linear_model/linear_model/trip_start_month_xf/zeroCastHlinear/linear_model/linear_model/linear_model/trip_start_month_xf/zero/x*

DstT0	*

SrcT0*
_output_shapes
: 

Flinear/linear_model/linear_model/linear_model/trip_start_month_xf/LessLessXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/valuesFlinear/linear_model/linear_model/linear_model/trip_start_month_xf/zero*
T0	*#
_output_shapes
:џџџџџџџџџ
Е
Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/GreaterEqualGreaterEqualXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/valuesMlinear/linear_model/linear_model/linear_model/trip_start_month_xf/num_buckets*
T0	*#
_output_shapes
:џџџџџџџџџ

Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/out_of_range	LogicalOrFlinear/linear_model/linear_model/linear_model/trip_start_month_xf/LessNlinear/linear_model/linear_model/linear_model/trip_start_month_xf/GreaterEqual*#
_output_shapes
:џџџџџџџџџ
Я
Glinear/linear_model/linear_model/linear_model/trip_start_month_xf/ShapeShapeXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*
_output_shapes
:

Hlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast/xConst*
_output_shapes
: *
dtype0*
value	B : 
Ш
Flinear/linear_model/linear_model/linear_model/trip_start_month_xf/CastCastHlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast/x*

DstT0	*

SrcT0*
_output_shapes
: 

Plinear/linear_model/linear_model/linear_model/trip_start_month_xf/default_valuesFillGlinear/linear_model/linear_model/linear_model/trip_start_month_xf/ShapeFlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast*
T0	*#
_output_shapes
:џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SelectV2SelectV2Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/out_of_rangePlinear/linear_model/linear_model/linear_model/trip_start_month_xf/default_valuesXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/values*
T0	*#
_output_shapes
:џџџџџџџџџ
щ
Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Shape_1/CastCast]linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:

Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Ё
Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ё
Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ў
Olinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_sliceStridedSliceNlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Shape_1/CastUlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stackWlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_1Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Llinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1/x/1Const*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

Jlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1/xPackOlinear/linear_model/linear_model/linear_model/trip_start_month_xf/strided_sliceLlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1/x/1*
N*
T0*
_output_shapes
:
а
Hlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1CastJlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1/x*

DstT0	*

SrcT0*
_output_shapes
:

Olinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshapeSparseReshapeYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/indices]linear/linear_model/linear_model/linear_model/trip_start_month_xf/to_sparse_input/dense_shapeHlinear/linear_model/linear_model/linear_model/trip_start_month_xf/Cast_1*-
_output_shapes
:џџџџџџџџџ:
о
Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape/IdentityIdentityJlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SelectV2*
T0	*#
_output_shapes
:џџџџџџџџџ
Є
Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ѓ
Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:

Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SliceSliceQlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/beginYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice/size*
Index0*
T0	*
_output_shapes
:

Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Ј
Slinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ProdProdTlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SliceTlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Const*
T0	*
_output_shapes
: 
Ё
_linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :

\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Й
Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2GatherV2Qlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape:1_linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/indices\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Й
Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast/xPackSlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ProdWlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2*
N*
T0	*
_output_shapes
:

\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeSparseReshapeOlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshapeQlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape:1Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast/x*-
_output_shapes
:џџџџџџџџџ:
љ
elinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityIdentityXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape/Identity*
T0	*#
_output_shapes
:џџџџџџџџџ

]linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
п
[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqualGreaterEqualelinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/Identity]linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
у
Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/WhereWhere[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Џ
\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
У
Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ReshapeReshapeTlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Where\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
а
Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1GatherV2\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshapeVlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
 
^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
е
Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2GatherV2elinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape/IdentityVlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
ш
Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/IdentityIdentity^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseReshape:1*
T0	*
_output_shapes
:
Њ
hlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
х
vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_1Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/GatherV2_2Wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Identityhlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
Ы
zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Э
|linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
Э
|linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
щ
tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_sliceStridedSlicevlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRowszlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack|linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_1|linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
І
klinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/CastCasttlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
Ў
mlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/UniqueUniquexlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
С
wlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookupResourceGather6linear/linear_model/trip_start_month_xf/weights/part_0mlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique*
Tindices0	*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ*
dtype0

linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/IdentityIdentitywlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup*
T0*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*'
_output_shapes
:џџџџџџџџџ
Ф
linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1Identitylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

flinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparseSparseSegmentSumlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/embedding_lookup/Identity_1olinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Unique:1klinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
я
Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Reshapexlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/SparseFillEmptyRows/SparseFillEmptyRows:2^linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
ъ
Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/ShapeShapeflinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*
_output_shapes
:
Ќ
blinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Ў
dlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Ў
dlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
И
\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_sliceStridedSliceTlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shapeblinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stackdlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_1dlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Р
Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/stackPackVlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack/0\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/strided_slice*
N*
T0*
_output_shapes
:
Ц
Slinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/TileTileXlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_1Tlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

Ylinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/zeros_like	ZerosLikeflinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
Nlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sumSelectSlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/TileYlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/zeros_likeflinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ф
Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast_1CastQlinear/linear_model/linear_model/linear_model/trip_start_month_xf/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
І
\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ѕ
[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Ѓ
Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1SliceUlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Cast_1\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/begin[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1/size*
Index0*
T0*
_output_shapes
:
д
Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shape_1ShapeNlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum*
T0*
_output_shapes
:
І
\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Ў
[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Є
Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2SliceVlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Shape_1\linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/begin[linear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2/size*
Index0*
T0*
_output_shapes
:

Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 

Ulinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/concatConcatV2Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_1Vlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Slice_2Zlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat/axis*
N*
T0*
_output_shapes
:
М
Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_2ReshapeNlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sumUlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/concat*
T0*'
_output_shapes
:џџџџџџџџџ

Blinear/linear_model/linear_model/linear_model/weighted_sum_no_biasAddNOlinear/linear_model/linear_model/linear_model/company_xf/weighted_sum/Reshape_2Xlinear/linear_model/linear_model/linear_model/dropoff_latitude_xf/weighted_sum/Reshape_2Ylinear/linear_model/linear_model/linear_model/dropoff_longitude_xf/weighted_sum/Reshape_2Tlinear/linear_model/linear_model/linear_model/payment_type_xf/weighted_sum/Reshape_2Wlinear/linear_model/linear_model/linear_model/pickup_latitude_xf/weighted_sum/Reshape_2Xlinear/linear_model/linear_model/linear_model/pickup_longitude_xf/weighted_sum/Reshape_2Vlinear/linear_model/linear_model/linear_model/trip_start_day_xf/weighted_sum/Reshape_2Wlinear/linear_model/linear_model/linear_model/trip_start_hour_xf/weighted_sum/Reshape_2Xlinear/linear_model/linear_model/linear_model/trip_start_month_xf/weighted_sum/Reshape_2*
N	*
T0*'
_output_shapes
:џџџџџџџџџ

/linear/linear_model/bias_weights/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0

 linear/linear_model/bias_weightsIdentity/linear/linear_model/bias_weights/ReadVariableOp*
T0*
_output_shapes
:
н
:linear/linear_model/linear_model/linear_model/weighted_sumBiasAddBlinear/linear_model/linear_model/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
T0*'
_output_shapes
:џџџџџџџџџ
y
linear/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0
d
linear/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
f
linear/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
f
linear/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
й
linear/strided_sliceStridedSlicelinear/ReadVariableOplinear/strided_slice/stacklinear/strided_slice/stack_1linear/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
\
linear/bias/tagsConst*
_output_shapes
: *
dtype0*
valueB Blinear/bias
e
linear/biasScalarSummarylinear/bias/tagslinear/strided_slice*
T0*
_output_shapes
: 
Ђ
3linear/zero_fraction/total_size/Size/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
_output_shapes
:	ђ*
dtype0
g
$linear/zero_fraction/total_size/SizeConst*
_output_shapes
: *
dtype0	*
value
B	 Rђ
Ќ
5linear/zero_fraction/total_size/Size_1/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
h
&linear/zero_fraction/total_size/Size_1Const*
_output_shapes
: *
dtype0	*
value	B	 R

­
5linear/zero_fraction/total_size/Size_2/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
h
&linear/zero_fraction/total_size/Size_2Const*
_output_shapes
: *
dtype0	*
value	B	 R

Љ
5linear/zero_fraction/total_size/Size_3/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
:	ђ*
dtype0
i
&linear/zero_fraction/total_size/Size_3Const*
_output_shapes
: *
dtype0	*
value
B	 Rђ
Ћ
5linear/zero_fraction/total_size/Size_4/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
h
&linear/zero_fraction/total_size/Size_4Const*
_output_shapes
: *
dtype0	*
value	B	 R

Ќ
5linear/zero_fraction/total_size/Size_5/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
h
&linear/zero_fraction/total_size/Size_5Const*
_output_shapes
: *
dtype0	*
value	B	 R

Њ
5linear/zero_fraction/total_size/Size_6/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_6Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ћ
5linear/zero_fraction/total_size/Size_7/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_7Const*
_output_shapes
: *
dtype0	*
value	B	 R
Ќ
5linear/zero_fraction/total_size/Size_8/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes

:*
dtype0
h
&linear/zero_fraction/total_size/Size_8Const*
_output_shapes
: *
dtype0	*
value	B	 R
М
$linear/zero_fraction/total_size/AddNAddN$linear/zero_fraction/total_size/Size&linear/zero_fraction/total_size/Size_1&linear/zero_fraction/total_size/Size_2&linear/zero_fraction/total_size/Size_3&linear/zero_fraction/total_size/Size_4&linear/zero_fraction/total_size/Size_5&linear/zero_fraction/total_size/Size_6&linear/zero_fraction/total_size/Size_7&linear/zero_fraction/total_size/Size_8*
N	*
T0	*
_output_shapes
: 
g
%linear/zero_fraction/total_zero/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

%linear/zero_fraction/total_zero/EqualEqual$linear/zero_fraction/total_size/Size%linear/zero_fraction/total_zero/Const*
T0	*
_output_shapes
: 
Ќ
1linear/zero_fraction/total_zero/zero_count/SwitchSwitch%linear/zero_fraction/total_zero/Equal%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: : 

3linear/zero_fraction/total_zero/zero_count/switch_tIdentity3linear/zero_fraction/total_zero/zero_count/Switch:1*
T0
*
_output_shapes
: 

3linear/zero_fraction/total_zero/zero_count/switch_fIdentity1linear/zero_fraction/total_zero/zero_count/Switch*
T0
*
_output_shapes
: 

2linear/zero_fraction/total_zero/zero_count/pred_idIdentity%linear/zero_fraction/total_zero/Equal*
T0
*
_output_shapes
: 
Ћ
0linear/zero_fraction/total_zero/zero_count/ConstConst4^linear/zero_fraction/total_zero/zero_count/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
з
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpReadVariableOpNlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch*
_output_shapes
:	ђ*
dtype0
 
Nlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/SwitchSwitch-linear/linear_model/company_xf/weights/part_02linear/zero_fraction/total_zero/zero_count/pred_id*
T0*@
_class6
42loc:@linear/linear_model/company_xf/weights/part_0*
_output_shapes
: : 
Ж
=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
_output_shapes
: *
dtype0	*
value
B	 Rђ
Р
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/yConst4^linear/zero_fraction/total_zero/zero_count/switch_f*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
ѕ
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual	LessEqual=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeDlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
љ
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/SwitchSwitchBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqualBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
Л
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_tIdentityFlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Й
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_fIdentityDlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
Ж
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_idIdentityBlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
п
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
М
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes
:	ђ

[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp**
_output_shapes
:	ђ:	ђ
ч
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastCastTlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes
:	ђ
ы
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
І
Ylinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_countSumPlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/CastQlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
е
Blinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/CastCastYlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
с
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zerosConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
Р
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes
:	ђ

]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchGlinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOpElinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id*
T0*Z
_classP
NLloc:@linear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp**
_output_shapes
:	ђ:	ђ
ы
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastCastVlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*
_output_shapes
:	ђ
э
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/ConstConstG^linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
Ќ
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/CastSlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Clinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/MergeMerge[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_countBlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 
ћ
Olinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/subSub=linear/zero_fraction/total_zero/zero_count/zero_fraction/SizeClinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
й
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastCastOlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
Щ
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1Cast=linear/zero_fraction/total_zero/zero_count/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ѕ
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truedivRealDivPlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/CastRlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
У
Alinear/zero_fraction/total_zero/zero_count/zero_fraction/fractionIdentitySlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 

/linear/zero_fraction/total_zero/zero_count/CastCast6linear/zero_fraction/total_zero/zero_count/Cast/Switch*

DstT0*

SrcT0	*
_output_shapes
: 
і
6linear/zero_fraction/total_zero/zero_count/Cast/SwitchSwitch$linear/zero_fraction/total_size/Size2linear/zero_fraction/total_zero/zero_count/pred_id*
T0	*7
_class-
+)loc:@linear/zero_fraction/total_size/Size*
_output_shapes
: : 
Ъ
.linear/zero_fraction/total_zero/zero_count/mulMulAlinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction/linear/zero_fraction/total_zero/zero_count/Cast*
T0*
_output_shapes
: 
Ч
0linear/zero_fraction/total_zero/zero_count/MergeMerge.linear/zero_fraction/total_zero/zero_count/mul0linear/zero_fraction/total_zero/zero_count/Const*
N*
T0*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Ђ
'linear/zero_fraction/total_zero/Equal_1Equal&linear/zero_fraction/total_size/Size_1'linear/zero_fraction/total_zero/Const_1*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_1/SwitchSwitch'linear/zero_fraction/total_zero/Equal_1'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_1/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_1/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_1/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_1/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_1/pred_idIdentity'linear/zero_fraction/total_zero/Equal_1*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_1/ConstConst6^linear/zero_fraction/total_zero/zero_count_1/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
к
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:
*
dtype0
Ж
Plinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/SwitchSwitch6linear/linear_model/dropoff_latitude_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0*I
_class?
=;loc:@linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
_output_shapes
: *
dtype0	*
value	B	 R

Ф
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_1/switch_f*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
ћ
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
С
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:


]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ъ
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes

:

я
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Ќ
[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
х
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
Х
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:


_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ю
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*
_output_shapes

:

ё
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
В
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
Э
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ћ
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Ѓ
1linear/zero_fraction/total_zero/zero_count_1/CastCast8linear/zero_fraction/total_zero/zero_count_1/Cast/Switch*

DstT0*

SrcT0	*
_output_shapes
: 
ў
8linear/zero_fraction/total_zero/zero_count_1/Cast/SwitchSwitch&linear/zero_fraction/total_size/Size_14linear/zero_fraction/total_zero/zero_count_1/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_1*
_output_shapes
: : 
а
0linear/zero_fraction/total_zero/zero_count_1/mulMulClinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction1linear/zero_fraction/total_zero/zero_count_1/Cast*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_1/MergeMerge0linear/zero_fraction/total_zero/zero_count_1/mul2linear/zero_fraction/total_zero/zero_count_1/Const*
N*
T0*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Ђ
'linear/zero_fraction/total_zero/Equal_2Equal&linear/zero_fraction/total_size/Size_2'linear/zero_fraction/total_zero/Const_2*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_2/SwitchSwitch'linear/zero_fraction/total_zero/Equal_2'linear/zero_fraction/total_zero/Equal_2*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_2/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_2/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_2/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_2/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_2/pred_idIdentity'linear/zero_fraction/total_zero/Equal_2*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_2/ConstConst6^linear/zero_fraction/total_zero/zero_count_2/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
к
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:
*
dtype0
И
Plinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/SwitchSwitch7linear/linear_model/dropoff_longitude_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_2/pred_id*
T0*J
_class@
><loc:@linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
_output_shapes
: *
dtype0	*
value	B	 R

Ф
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_2/switch_f*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
ћ
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
С
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:


]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ъ
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes

:

я
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Ќ
[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
х
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
Х
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:


_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ю
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*
_output_shapes

:

ё
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
В
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
Э
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ћ
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Ѓ
1linear/zero_fraction/total_zero/zero_count_2/CastCast8linear/zero_fraction/total_zero/zero_count_2/Cast/Switch*

DstT0*

SrcT0	*
_output_shapes
: 
ў
8linear/zero_fraction/total_zero/zero_count_2/Cast/SwitchSwitch&linear/zero_fraction/total_size/Size_24linear/zero_fraction/total_zero/zero_count_2/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_2*
_output_shapes
: : 
а
0linear/zero_fraction/total_zero/zero_count_2/mulMulClinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction1linear/zero_fraction/total_zero/zero_count_2/Cast*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_2/MergeMerge0linear/zero_fraction/total_zero/zero_count_2/mul2linear/zero_fraction/total_zero/zero_count_2/Const*
N*
T0*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Ђ
'linear/zero_fraction/total_zero/Equal_3Equal&linear/zero_fraction/total_size/Size_3'linear/zero_fraction/total_zero/Const_3*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_3/SwitchSwitch'linear/zero_fraction/total_zero/Equal_3'linear/zero_fraction/total_zero/Equal_3*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_3/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_3/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_3/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_3/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_3/pred_idIdentity'linear/zero_fraction/total_zero/Equal_3*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_3/ConstConst6^linear/zero_fraction/total_zero/zero_count_3/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
л
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch*
_output_shapes
:	ђ*
dtype0
Ў
Plinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/SwitchSwitch2linear/linear_model/payment_type_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_3/pred_id*
T0*E
_class;
97loc:@linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
: : 
К
?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
_output_shapes
: *
dtype0	*
value
B	 Rђ
Ф
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_3/switch_f*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
ћ
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
Т
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes
:	ђ

]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp**
_output_shapes
:	ђ:	ђ
ы
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes
:	ђ
я
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Ќ
[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
х
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
Ц
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes
:	ђ

_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp**
_output_shapes
:	ђ:	ђ
я
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*
_output_shapes
:	ђ
ё
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
В
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
Э
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ћ
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Ѓ
1linear/zero_fraction/total_zero/zero_count_3/CastCast8linear/zero_fraction/total_zero/zero_count_3/Cast/Switch*

DstT0*

SrcT0	*
_output_shapes
: 
ў
8linear/zero_fraction/total_zero/zero_count_3/Cast/SwitchSwitch&linear/zero_fraction/total_size/Size_34linear/zero_fraction/total_zero/zero_count_3/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_3*
_output_shapes
: : 
а
0linear/zero_fraction/total_zero/zero_count_3/mulMulClinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction1linear/zero_fraction/total_zero/zero_count_3/Cast*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_3/MergeMerge0linear/zero_fraction/total_zero/zero_count_3/mul2linear/zero_fraction/total_zero/zero_count_3/Const*
N*
T0*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_4Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Ђ
'linear/zero_fraction/total_zero/Equal_4Equal&linear/zero_fraction/total_size/Size_4'linear/zero_fraction/total_zero/Const_4*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_4/SwitchSwitch'linear/zero_fraction/total_zero/Equal_4'linear/zero_fraction/total_zero/Equal_4*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_4/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_4/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_4/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_4/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_4/pred_idIdentity'linear/zero_fraction/total_zero/Equal_4*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_4/ConstConst6^linear/zero_fraction/total_zero/zero_count_4/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
к
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:
*
dtype0
Д
Plinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/SwitchSwitch5linear/linear_model/pickup_latitude_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_4/pred_id*
T0*H
_class>
<:loc:@linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_4/switch_f*
_output_shapes
: *
dtype0	*
value	B	 R

Ф
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_4/switch_f*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
ћ
Dlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
С
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:


]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ъ
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes

:

я
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Ќ
[linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
х
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
Х
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:


_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ю
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*
_output_shapes

:

ё
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
В
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
Э
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_4/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ћ
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Ѓ
1linear/zero_fraction/total_zero/zero_count_4/CastCast8linear/zero_fraction/total_zero/zero_count_4/Cast/Switch*

DstT0*

SrcT0	*
_output_shapes
: 
ў
8linear/zero_fraction/total_zero/zero_count_4/Cast/SwitchSwitch&linear/zero_fraction/total_size/Size_44linear/zero_fraction/total_zero/zero_count_4/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_4*
_output_shapes
: : 
а
0linear/zero_fraction/total_zero/zero_count_4/mulMulClinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fraction1linear/zero_fraction/total_zero/zero_count_4/Cast*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_4/MergeMerge0linear/zero_fraction/total_zero/zero_count_4/mul2linear/zero_fraction/total_zero/zero_count_4/Const*
N*
T0*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_5Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Ђ
'linear/zero_fraction/total_zero/Equal_5Equal&linear/zero_fraction/total_size/Size_5'linear/zero_fraction/total_zero/Const_5*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_5/SwitchSwitch'linear/zero_fraction/total_zero/Equal_5'linear/zero_fraction/total_zero/Equal_5*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_5/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_5/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_5/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_5/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_5/pred_idIdentity'linear/zero_fraction/total_zero/Equal_5*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_5/ConstConst6^linear/zero_fraction/total_zero/zero_count_5/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
к
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:
*
dtype0
Ж
Plinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/SwitchSwitch6linear/linear_model/pickup_longitude_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_5/pred_id*
T0*I
_class?
=;loc:@linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_5/switch_f*
_output_shapes
: *
dtype0	*
value	B	 R

Ф
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_5/switch_f*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
ћ
Dlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
С
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:


]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ъ
Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes

:

я
Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Ќ
[linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
х
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
Х
Xlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:


_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp*(
_output_shapes
:
:

ю
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*
_output_shapes

:

ё
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
В
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
Э
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_5/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ћ
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_5/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Ѓ
1linear/zero_fraction/total_zero/zero_count_5/CastCast8linear/zero_fraction/total_zero/zero_count_5/Cast/Switch*

DstT0*

SrcT0	*
_output_shapes
: 
ў
8linear/zero_fraction/total_zero/zero_count_5/Cast/SwitchSwitch&linear/zero_fraction/total_size/Size_54linear/zero_fraction/total_zero/zero_count_5/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_5*
_output_shapes
: : 
а
0linear/zero_fraction/total_zero/zero_count_5/mulMulClinear/zero_fraction/total_zero/zero_count_5/zero_fraction/fraction1linear/zero_fraction/total_zero/zero_count_5/Cast*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_5/MergeMerge0linear/zero_fraction/total_zero/zero_count_5/mul2linear/zero_fraction/total_zero/zero_count_5/Const*
N*
T0*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_6Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Ђ
'linear/zero_fraction/total_zero/Equal_6Equal&linear/zero_fraction/total_size/Size_6'linear/zero_fraction/total_zero/Const_6*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_6/SwitchSwitch'linear/zero_fraction/total_zero/Equal_6'linear/zero_fraction/total_zero/Equal_6*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_6/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_6/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_6/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_6/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_6/pred_idIdentity'linear/zero_fraction/total_zero/Equal_6*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_6/ConstConst6^linear/zero_fraction/total_zero/zero_count_6/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
к
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:*
dtype0
В
Plinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/SwitchSwitch4linear/linear_model/trip_start_day_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_6/pred_id*
T0*G
_class=
;9loc:@linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_6/switch_f*
_output_shapes
: *
dtype0	*
value	B	 R
Ф
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_6/switch_f*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
ћ
Dlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
С
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp*(
_output_shapes
::
ъ
Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes

:
я
Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Ќ
[linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
х
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
Х
Xlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:

_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp*(
_output_shapes
::
ю
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*
_output_shapes

:
ё
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
В
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
Э
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_6/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ћ
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_6/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Ѓ
1linear/zero_fraction/total_zero/zero_count_6/CastCast8linear/zero_fraction/total_zero/zero_count_6/Cast/Switch*

DstT0*

SrcT0	*
_output_shapes
: 
ў
8linear/zero_fraction/total_zero/zero_count_6/Cast/SwitchSwitch&linear/zero_fraction/total_size/Size_64linear/zero_fraction/total_zero/zero_count_6/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_6*
_output_shapes
: : 
а
0linear/zero_fraction/total_zero/zero_count_6/mulMulClinear/zero_fraction/total_zero/zero_count_6/zero_fraction/fraction1linear/zero_fraction/total_zero/zero_count_6/Cast*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_6/MergeMerge0linear/zero_fraction/total_zero/zero_count_6/mul2linear/zero_fraction/total_zero/zero_count_6/Const*
N*
T0*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_7Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Ђ
'linear/zero_fraction/total_zero/Equal_7Equal&linear/zero_fraction/total_size/Size_7'linear/zero_fraction/total_zero/Const_7*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_7/SwitchSwitch'linear/zero_fraction/total_zero/Equal_7'linear/zero_fraction/total_zero/Equal_7*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_7/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_7/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_7/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_7/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_7/pred_idIdentity'linear/zero_fraction/total_zero/Equal_7*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_7/ConstConst6^linear/zero_fraction/total_zero/zero_count_7/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
к
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:*
dtype0
Д
Plinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/SwitchSwitch5linear/linear_model/trip_start_hour_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_7/pred_id*
T0*H
_class>
<:loc:@linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_7/switch_f*
_output_shapes
: *
dtype0	*
value	B	 R
Ф
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_7/switch_f*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
ћ
Dlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
С
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp*(
_output_shapes
::
ъ
Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes

:
я
Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Ќ
[linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
х
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
Х
Xlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:

_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp*(
_output_shapes
::
ю
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*
_output_shapes

:
ё
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
В
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
Э
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_7/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ћ
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_7/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Ѓ
1linear/zero_fraction/total_zero/zero_count_7/CastCast8linear/zero_fraction/total_zero/zero_count_7/Cast/Switch*

DstT0*

SrcT0	*
_output_shapes
: 
ў
8linear/zero_fraction/total_zero/zero_count_7/Cast/SwitchSwitch&linear/zero_fraction/total_size/Size_74linear/zero_fraction/total_zero/zero_count_7/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_7*
_output_shapes
: : 
а
0linear/zero_fraction/total_zero/zero_count_7/mulMulClinear/zero_fraction/total_zero/zero_count_7/zero_fraction/fraction1linear/zero_fraction/total_zero/zero_count_7/Cast*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_7/MergeMerge0linear/zero_fraction/total_zero/zero_count_7/mul2linear/zero_fraction/total_zero/zero_count_7/Const*
N*
T0*
_output_shapes
: : 
i
'linear/zero_fraction/total_zero/Const_8Const*
_output_shapes
: *
dtype0	*
value	B	 R 
Ђ
'linear/zero_fraction/total_zero/Equal_8Equal&linear/zero_fraction/total_size/Size_8'linear/zero_fraction/total_zero/Const_8*
T0	*
_output_shapes
: 
В
3linear/zero_fraction/total_zero/zero_count_8/SwitchSwitch'linear/zero_fraction/total_zero/Equal_8'linear/zero_fraction/total_zero/Equal_8*
T0
*
_output_shapes
: : 

5linear/zero_fraction/total_zero/zero_count_8/switch_tIdentity5linear/zero_fraction/total_zero/zero_count_8/Switch:1*
T0
*
_output_shapes
: 

5linear/zero_fraction/total_zero/zero_count_8/switch_fIdentity3linear/zero_fraction/total_zero/zero_count_8/Switch*
T0
*
_output_shapes
: 

4linear/zero_fraction/total_zero/zero_count_8/pred_idIdentity'linear/zero_fraction/total_zero/Equal_8*
T0
*
_output_shapes
: 
Џ
2linear/zero_fraction/total_zero/zero_count_8/ConstConst6^linear/zero_fraction/total_zero/zero_count_8/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
к
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOpReadVariableOpPlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/Switch*
_output_shapes

:*
dtype0
Ж
Plinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/SwitchSwitch6linear/linear_model/trip_start_month_xf/weights/part_04linear/zero_fraction/total_zero/zero_count_8/pred_id*
T0*I
_class?
=;loc:@linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes
: : 
Й
?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/SizeConst6^linear/zero_fraction/total_zero/zero_count_8/switch_f*
_output_shapes
: *
dtype0	*
value	B	 R
Ф
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual/yConst6^linear/zero_fraction/total_zero/zero_count_8/switch_f*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ
ћ
Dlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual	LessEqual?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/SizeFlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
џ
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/SwitchSwitchDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqualDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual*
T0
*
_output_shapes
: : 
П
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_tIdentityHlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch:1*
T0
*
_output_shapes
: 
Н
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_fIdentityFlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch*
T0
*
_output_shapes
: 
К
Glinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_idIdentityDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual*
T0
*
_output_shapes
: 
у
Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zerosConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
С
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zeros*
T0*
_output_shapes

:

]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp*(
_output_shapes
::
ъ
Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/CastCastVlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*
_output_shapes

:
я
Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/ConstConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Ќ
[linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_countSumRlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/CastSlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Const*
T0*
_output_shapes
: 
й
Dlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/CastCast[linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 
х
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zerosConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
Х
Xlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqualNotEqual_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchUlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zeros*
T0*
_output_shapes

:

_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/SwitchSwitchIlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOpGlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id*
T0*\
_classR
PNloc:@linear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp*(
_output_shapes
::
ю
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/CastCastXlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*
_output_shapes

:
ё
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/ConstConstI^linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
В
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_countSumTlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/CastUlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 

Elinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/MergeMerge]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_countDlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Cast*
N*
T0	*
_output_shapes
: : 

Qlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/subSub?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/SizeElinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Merge*
T0	*
_output_shapes
: 
н
Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/CastCastQlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
Э
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast_1Cast?linear/zero_fraction/total_zero/zero_count_8/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ћ
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/truedivRealDivRlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/CastTlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
Ч
Clinear/zero_fraction/total_zero/zero_count_8/zero_fraction/fractionIdentityUlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 
Ѓ
1linear/zero_fraction/total_zero/zero_count_8/CastCast8linear/zero_fraction/total_zero/zero_count_8/Cast/Switch*

DstT0*

SrcT0	*
_output_shapes
: 
ў
8linear/zero_fraction/total_zero/zero_count_8/Cast/SwitchSwitch&linear/zero_fraction/total_size/Size_84linear/zero_fraction/total_zero/zero_count_8/pred_id*
T0	*9
_class/
-+loc:@linear/zero_fraction/total_size/Size_8*
_output_shapes
: : 
а
0linear/zero_fraction/total_zero/zero_count_8/mulMulClinear/zero_fraction/total_zero/zero_count_8/zero_fraction/fraction1linear/zero_fraction/total_zero/zero_count_8/Cast*
T0*
_output_shapes
: 
Э
2linear/zero_fraction/total_zero/zero_count_8/MergeMerge0linear/zero_fraction/total_zero/zero_count_8/mul2linear/zero_fraction/total_zero/zero_count_8/Const*
N*
T0*
_output_shapes
: : 
Ј
$linear/zero_fraction/total_zero/AddNAddN0linear/zero_fraction/total_zero/zero_count/Merge2linear/zero_fraction/total_zero/zero_count_1/Merge2linear/zero_fraction/total_zero/zero_count_2/Merge2linear/zero_fraction/total_zero/zero_count_3/Merge2linear/zero_fraction/total_zero/zero_count_4/Merge2linear/zero_fraction/total_zero/zero_count_5/Merge2linear/zero_fraction/total_zero/zero_count_6/Merge2linear/zero_fraction/total_zero/zero_count_7/Merge2linear/zero_fraction/total_zero/zero_count_8/Merge*
N	*
T0*
_output_shapes
: 

)linear/zero_fraction/compute/float32_sizeCast$linear/zero_fraction/total_size/AddN*

DstT0*

SrcT0	*
_output_shapes
: 
Ё
$linear/zero_fraction/compute/truedivRealDiv$linear/zero_fraction/total_zero/AddN)linear/zero_fraction/compute/float32_size*
T0*
_output_shapes
: 
|
)linear/zero_fraction/zero_fraction_or_nanIdentity$linear/zero_fraction/compute/truediv*
T0*
_output_shapes
: 

$linear/fraction_of_zero_weights/tagsConst*
_output_shapes
: *
dtype0*0
value'B% Blinear/fraction_of_zero_weights
Ђ
linear/fraction_of_zero_weightsScalarSummary$linear/fraction_of_zero_weights/tags)linear/zero_fraction/zero_fraction_or_nan*
T0*
_output_shapes
: 

linear/zero_fraction_1/SizeSize:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*
_output_shapes
: *
out_type0	
h
"linear/zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

 linear/zero_fraction_1/LessEqual	LessEquallinear/zero_fraction_1/Size"linear/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 

"linear/zero_fraction_1/cond/SwitchSwitch linear/zero_fraction_1/LessEqual linear/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: : 
w
$linear/zero_fraction_1/cond/switch_tIdentity$linear/zero_fraction_1/cond/Switch:1*
T0
*
_output_shapes
: 
u
$linear/zero_fraction_1/cond/switch_fIdentity"linear/zero_fraction_1/cond/Switch*
T0
*
_output_shapes
: 
r
#linear/zero_fraction_1/cond/pred_idIdentity linear/zero_fraction_1/LessEqual*
T0
*
_output_shapes
: 

/linear/zero_fraction_1/cond/count_nonzero/zerosConst%^linear/zero_fraction_1/cond/switch_t*
_output_shapes
: *
dtype0*
valueB
 *    
о
2linear/zero_fraction_1/cond/count_nonzero/NotEqualNotEqual;linear/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1/linear/zero_fraction_1/cond/count_nonzero/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
И
9linear/zero_fraction_1/cond/count_nonzero/NotEqual/SwitchSwitch:linear/linear_model/linear_model/linear_model/weighted_sum#linear/zero_fraction_1/cond/pred_id*
T0*M
_classC
A?loc:@linear/linear_model/linear_model/linear_model/weighted_sum*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Ћ
.linear/zero_fraction_1/cond/count_nonzero/CastCast2linear/zero_fraction_1/cond/count_nonzero/NotEqual*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
Ї
/linear/zero_fraction_1/cond/count_nonzero/ConstConst%^linear/zero_fraction_1/cond/switch_t*
_output_shapes
:*
dtype0*
valueB"       
Р
7linear/zero_fraction_1/cond/count_nonzero/nonzero_countSum.linear/zero_fraction_1/cond/count_nonzero/Cast/linear/zero_fraction_1/cond/count_nonzero/Const*
T0*
_output_shapes
: 

 linear/zero_fraction_1/cond/CastCast7linear/zero_fraction_1/cond/count_nonzero/nonzero_count*

DstT0	*

SrcT0*
_output_shapes
: 

1linear/zero_fraction_1/cond/count_nonzero_1/zerosConst%^linear/zero_fraction_1/cond/switch_f*
_output_shapes
: *
dtype0*
valueB
 *    
т
4linear/zero_fraction_1/cond/count_nonzero_1/NotEqualNotEqual;linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch1linear/zero_fraction_1/cond/count_nonzero_1/zeros*
T0*'
_output_shapes
:џџџџџџџџџ
К
;linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/SwitchSwitch:linear/linear_model/linear_model/linear_model/weighted_sum#linear/zero_fraction_1/cond/pred_id*
T0*M
_classC
A?loc:@linear/linear_model/linear_model/linear_model/weighted_sum*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Џ
0linear/zero_fraction_1/cond/count_nonzero_1/CastCast4linear/zero_fraction_1/cond/count_nonzero_1/NotEqual*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
Љ
1linear/zero_fraction_1/cond/count_nonzero_1/ConstConst%^linear/zero_fraction_1/cond/switch_f*
_output_shapes
:*
dtype0*
valueB"       
Ц
9linear/zero_fraction_1/cond/count_nonzero_1/nonzero_countSum0linear/zero_fraction_1/cond/count_nonzero_1/Cast1linear/zero_fraction_1/cond/count_nonzero_1/Const*
T0	*
_output_shapes
: 
Г
!linear/zero_fraction_1/cond/MergeMerge9linear/zero_fraction_1/cond/count_nonzero_1/nonzero_count linear/zero_fraction_1/cond/Cast*
N*
T0	*
_output_shapes
: : 

-linear/zero_fraction_1/counts_to_fraction/subSublinear/zero_fraction_1/Size!linear/zero_fraction_1/cond/Merge*
T0	*
_output_shapes
: 

.linear/zero_fraction_1/counts_to_fraction/CastCast-linear/zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

0linear/zero_fraction_1/counts_to_fraction/Cast_1Castlinear/zero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
П
1linear/zero_fraction_1/counts_to_fraction/truedivRealDiv.linear/zero_fraction_1/counts_to_fraction/Cast0linear/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 

linear/zero_fraction_1/fractionIdentity1linear/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 

*linear/linear/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*6
value-B+ B%linear/linear/fraction_of_zero_values
Є
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction_1/fraction*
T0*
_output_shapes
: 
u
linear/linear/activation/tagConst*
_output_shapes
: *
dtype0*)
value B Blinear/linear/activation

linear/linear/activationHistogramSummarylinear/linear/activation/tag:linear/linear_model/linear_model/linear_model/weighted_sum*
_output_shapes
: 

addAddV2dnn/logits/BiasAdd:linear/linear_model/linear_model/linear_model/weighted_sum*
T0*'
_output_shapes
:џџџџџџџџџ
P
head/predictions/logits/ShapeShapeadd*
T0*
_output_shapes
:
s
1head/predictions/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
c
[head/predictions/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
T
Lhead/predictions/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
[
head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:џџџџџџџџџ
_
head/predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ
q
&head/predictions/two_class_logits/axisConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
В
!head/predictions/two_class_logitsConcatV2head/predictions/zeros_likeadd&head/predictions/two_class_logits/axis*
N*
T0*'
_output_shapes
:џџџџџџџџџ
~
head/predictions/probabilitiesSoftmax!head/predictions/two_class_logits*
T0*'
_output_shapes
:џџџџџџџџџ
o
$head/predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

head/predictions/class_idsArgMax!head/predictions/two_class_logits$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:џџџџџџџџџ
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
I
head/predictions/ShapeShapeadd*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
^
head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
^
head/predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 

head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:

head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
K
head/predictions/Shape_1Shapeadd*
T0*
_output_shapes
:
p
&head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
head/predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
`
head/predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
`
head/predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :

head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
d
head/predictions/AsStringAsStringhead/predictions/range_1*
T0*
_output_shapes
:
c
!head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 

head/predictions/ExpandDims_2
ExpandDimshead/predictions/AsString!head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
e
#head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:

head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*'
_output_shapes
:џџџџџџџџџ
e
head/labels/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

head/labels/ExpandDims
ExpandDimsIdentity_71head/labels/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
W
head/labels/ShapeShapehead/labels/ExpandDims*
T0	*
_output_shapes
:
F
head/labels/Shape_1Shapeadd*
T0*
_output_shapes
:
g
%head/labels/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
l
&head/labels/assert_rank_at_least/ShapeShapehead/labels/ExpandDims*
T0	*
_output_shapes
:
W
Ohead/labels/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/labels/assert_rank_at_least/static_checks_determined_all_okNoOp
Ќ
head/labels/strided_slice/stackConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 
З
!head/labels/strided_slice/stack_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
Ў
!head/labels/strided_slice/stack_2ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:
щ
head/labels/strided_sliceStridedSlicehead/labels/Shape_1head/labels/strided_slice/stack!head/labels/strided_slice/stack_1!head/labels/strided_slice/stack_2*
Index0*
T0*
_output_shapes
:*

begin_mask
Ј
head/labels/concat/values_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB:

head/labels/concat/axisConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
value	B : 

head/labels/concatConcatV2head/labels/strided_slicehead/labels/concat/values_1head/labels/concat/axis*
N*
T0*
_output_shapes
:
u
 head/labels/assert_equal_1/EqualEqualhead/labels/concathead/labels/Shape*
T0*
_output_shapes
:
­
 head/labels/assert_equal_1/ConstConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
:*
dtype0*
valueB: 

head/labels/assert_equal_1/AllAll head/labels/assert_equal_1/Equal head/labels/assert_equal_1/Const*
_output_shapes
: 
Ж
'head/labels/assert_equal_1/Assert/ConstConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the estimator and/or the shape of your label.
Ф
)head/labels/assert_equal_1/Assert/Const_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
Л
)head/labels/assert_equal_1/Assert/Const_2ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 
О
/head/labels/assert_equal_1/Assert/Assert/data_0ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels shape must be [D0, D1, ... DN, 1]. Suggested Fix: check your n_classes argument to the estimator and/or the shape of your label.
Ъ
/head/labels/assert_equal_1/Assert/Assert/data_1ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*(
valueB Bexpected_labels_shape: 
С
/head/labels/assert_equal_1/Assert/Assert/data_3ConstA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
_output_shapes
: *
dtype0*
valueB Blabels_shape: 

(head/labels/assert_equal_1/Assert/AssertAsserthead/labels/assert_equal_1/All/head/labels/assert_equal_1/Assert/Assert/data_0/head/labels/assert_equal_1/Assert/Assert/data_1head/labels/concat/head/labels/assert_equal_1/Assert/Assert/data_3head/labels/Shape*
T	
2
Я
head/labelsIdentityhead/labels/ExpandDims)^head/labels/assert_equal_1/Assert/AssertA^head/labels/assert_rank_at_least/static_checks_determined_all_ok*
T0	*'
_output_shapes
:џџџџџџџџџ
_
	head/CastCasthead/labels*

DstT0*

SrcT0	*'
_output_shapes
:џџџџџџџџџ
\
head/assert_range/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

-head/assert_range/assert_less_equal/LessEqual	LessEqual	head/Casthead/assert_range/Const*
T0*'
_output_shapes
:џџџџџџџџџ
z
)head/assert_range/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 
'head/assert_range/assert_less_equal/AllAll-head/assert_range/assert_less_equal/LessEqual)head/assert_range/assert_less_equal/Const*
_output_shapes
: 

0head/assert_range/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*-
value$B" BLabels must <= n_classes - 1

2head/assert_range/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:

2head/assert_range/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*#
valueB Bx (head/Cast:0) = 

2head/assert_range/assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*1
value(B& B y (head/assert_range/Const:0) = 
М
=head/assert_range/assert_less_equal/Assert/AssertGuard/SwitchSwitch'head/assert_range/assert_less_equal/All'head/assert_range/assert_less_equal/All*
T0
*
_output_shapes
: : 
­
?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_tIdentity?head/assert_range/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ћ
?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_fIdentity=head/assert_range/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 

>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_idIdentity'head/assert_range/assert_less_equal/All*
T0
*
_output_shapes
: 

;head/assert_range/assert_less_equal/Assert/AssertGuard/NoOpNoOp@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_t
Щ
Ihead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_t<^head/assert_range/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*R
_classH
FDloc:@head/assert_range/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
у
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_0Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*-
value$B" BLabels must <= n_classes - 1
ђ
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_1Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
й
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_2Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*#
valueB Bx (head/Cast:0) = 
ч
Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_4Const@^head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*1
value(B& B y (head/assert_range/Const:0) = 
Ц
=head/assert_range/assert_less_equal/Assert/AssertGuard/AssertAssertDhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/SwitchDhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_0Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_1Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_2Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_4Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T

2

Dhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch'head/assert_range/assert_less_equal/All>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*:
_class0
.,loc:@head/assert_range/assert_less_equal/All*
_output_shapes
: : 
ў
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch	head/Cast>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@head/Cast*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
ј
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchhead/assert_range/Const>head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id*
T0**
_class 
loc:@head/assert_range/Const*
_output_shapes
: : 
Э
Khead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity?head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f>^head/assert_range/assert_less_equal/Assert/AssertGuard/Assert*
T0
*R
_classH
FDloc:@head/assert_range/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 

<head/assert_range/assert_less_equal/Assert/AssertGuard/MergeMergeKhead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency_1Ihead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
p
+head/assert_range/assert_non_negative/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
И
Ahead/assert_range/assert_non_negative/assert_less_equal/LessEqual	LessEqual+head/assert_range/assert_non_negative/Const	head/Cast*
T0*'
_output_shapes
:џџџџџџџџџ

=head/assert_range/assert_non_negative/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
м
;head/assert_range/assert_non_negative/assert_less_equal/AllAllAhead/assert_range/assert_non_negative/assert_less_equal/LessEqual=head/assert_range/assert_non_negative/assert_less_equal/Const*
_output_shapes
: 

Dhead/assert_range/assert_non_negative/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*!
valueB BLabels must >= 0
В
Fhead/assert_range/assert_non_negative/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:

Fhead/assert_range/assert_non_negative/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*#
valueB Bx (head/Cast:0) = 
ј
Qhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/SwitchSwitch;head/assert_range/assert_non_negative/assert_less_equal/All;head/assert_range/assert_non_negative/assert_less_equal/All*
T0
*
_output_shapes
: : 
е
Shead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tIdentityShead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
г
Shead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fIdentityQhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
М
Rhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_idIdentity;head/assert_range/assert_non_negative/assert_less_equal/All*
T0
*
_output_shapes
: 
­
Ohead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t

]head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityShead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tP^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*f
_class\
ZXloc:@head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
џ
Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0ConstT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*!
valueB BLabels must >= 0

Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1ConstT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= 0 did not hold element-wise:

Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2ConstT^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*#
valueB Bx (head/Cast:0) = 
Ў
Qhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssertXhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchXhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1*
T
2
ц
Xhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch;head/assert_range/assert_non_negative/assert_less_equal/AllRhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*N
_classD
B@loc:@head/assert_range/assert_non_negative/assert_less_equal/All*
_output_shapes
: : 
І
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch	head/CastRhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id*
T0*
_class
loc:@head/Cast*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ

_head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityShead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fR^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert*
T0
*f
_class\
ZXloc:@head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Х
Phead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/MergeMerge_head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1]head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
ѕ
head/assert_range/IdentityIdentity	head/Cast=^head/assert_range/assert_less_equal/Assert/AssertGuard/MergeQ^head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Merge*
T0*'
_output_shapes
:џџџџџџџџџ
a
head/logistic_loss/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/GreaterEqualGreaterEqualaddhead/logistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/SelectSelecthead/logistic_loss/GreaterEqualaddhead/logistic_loss/zeros_like*
T0*'
_output_shapes
:џџџџџџџџџ
T
head/logistic_loss/NegNegadd*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/Select_1Selecthead/logistic_loss/GreaterEqualhead/logistic_loss/Negadd*
T0*'
_output_shapes
:џџџџџџџџџ
p
head/logistic_loss/mulMuladdhead/assert_range/Identity*
T0*'
_output_shapes
:џџџџџџџџџ

head/logistic_loss/subSubhead/logistic_loss/Selecthead/logistic_loss/mul*
T0*'
_output_shapes
:џџџџџџџџџ
l
head/logistic_loss/ExpExphead/logistic_loss/Select_1*
T0*'
_output_shapes
:џџџџџџџџџ
k
head/logistic_loss/Log1pLog1phead/logistic_loss/Exp*
T0*'
_output_shapes
:џџџџџџџџџ
}
head/logistic_lossAddhead/logistic_loss/subhead/logistic_loss/Log1p*
T0*'
_output_shapes
:џџџџџџџџџ
t
/head/weighted_loss/assert_broadcastable/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
x
5head/weighted_loss/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
v
4head/weighted_loss/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
v
4head/weighted_loss/assert_broadcastable/values/shapeShapehead/logistic_loss*
T0*
_output_shapes
:
u
3head/weighted_loss/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
K
Chead/weighted_loss/assert_broadcastable/static_scalar_check_successNoOp
Є
head/weighted_loss/Cast/xConstD^head/weighted_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
~
head/weighted_loss/MulMulhead/logistic_losshead/weighted_loss/Cast/x*
T0*'
_output_shapes
:џџџџџџџџџ
Џ
head/weighted_loss/ConstConstD^head/weighted_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
dtype0*
valueB"       
p
head/weighted_loss/SumSumhead/weighted_loss/Mulhead/weighted_loss/Const*
T0*
_output_shapes
: 
q
,metrics/label/mean/broadcast_weights/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Gmetrics/label/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 

Fmetrics/label/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 

Fmetrics/label/mean/broadcast_weights/assert_broadcastable/values/shapeShapehead/assert_range/Identity*
T0*
_output_shapes
:

Emetrics/label/mean/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
]
Umetrics/label/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
ж
4metrics/label/mean/broadcast_weights/ones_like/ShapeShapehead/assert_range/IdentityV^metrics/label/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
б
4metrics/label/mean/broadcast_weights/ones_like/ConstConstV^metrics/label/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
д
.metrics/label/mean/broadcast_weights/ones_likeFill4metrics/label/mean/broadcast_weights/ones_like/Shape4metrics/label/mean/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Л
$metrics/label/mean/broadcast_weightsMul,metrics/label/mean/broadcast_weights/weights.metrics/label/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

*metrics/label/mean/total/Initializer/zerosConst*+
_class!
loc:@metrics/label/mean/total*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/label/mean/total
VariableV2*+
_class!
loc:@metrics/label/mean/total*
_output_shapes
: *
dtype0*
shape: 
Н
metrics/label/mean/total/AssignAssignmetrics/label/mean/total*metrics/label/mean/total/Initializer/zeros*
T0*+
_class!
loc:@metrics/label/mean/total*
_output_shapes
: 

metrics/label/mean/total/readIdentitymetrics/label/mean/total*
T0*+
_class!
loc:@metrics/label/mean/total*
_output_shapes
: 

*metrics/label/mean/count/Initializer/zerosConst*+
_class!
loc:@metrics/label/mean/count*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/label/mean/count
VariableV2*+
_class!
loc:@metrics/label/mean/count*
_output_shapes
: *
dtype0*
shape: 
Н
metrics/label/mean/count/AssignAssignmetrics/label/mean/count*metrics/label/mean/count/Initializer/zeros*
T0*+
_class!
loc:@metrics/label/mean/count*
_output_shapes
: 

metrics/label/mean/count/readIdentitymetrics/label/mean/count*
T0*+
_class!
loc:@metrics/label/mean/count*
_output_shapes
: 

Imetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shapeShape$metrics/label/mean/broadcast_weights*
T0*
_output_shapes
:

Hmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :

Hmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/assert_range/Identity*
T0*
_output_shapes
:

Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :

Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 

Emetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarEqualGmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
е
Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentitySmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
г
Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityQmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ц
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
ѕ
Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*X
_classN
LJloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 

qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualxmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchzmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

xmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchGmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rankRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*Z
_classP
NLloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : 
Ђ
zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rankRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 
ў
kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitymmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitykmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Р
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Э
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:
И
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shapeRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::

metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchlmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
Ч
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
:*
dtype0*
valueB"      
И
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B :
Р
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapemetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*
_output_shapes

:
Д
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B :
Т
|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
T0*
_output_shapes

:
Т
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
г
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
М
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchImetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shapeRmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*\
_classR
PNloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchlmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*\
_classR
PNloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
У
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
_output_shapes
: 
Љ
wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstn^metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B : 
Ё
umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualwmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 

mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchqmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranklmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classz
xvloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 

jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergemmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
T0
*
_output_shapes
: : 
Ш
Pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergejmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeUmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
T0
*
_output_shapes
: : 
Љ
Ametrics/label/mean/broadcast_weights_1/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=
Њ
Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*7
value.B, B&metrics/label/mean/broadcast_weights:0

Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=
 
Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*-
value$B" Bhead/assert_range/Identity:0

Cmetrics/label/mean/broadcast_weights_1/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=

Nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergePmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
Я
Pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Э
Pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityNmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Ю
Ometrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Ї
Lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t

Zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tM^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*c
_classY
WUloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.
ї
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB Bweights.shape=

Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*7
value.B, B&metrics/label/mean/broadcast_weights:0
і
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=

Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*-
value$B" Bhead/assert_range/Identity:0
ѓ
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstQ^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
и
Nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertUmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchUmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	


Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*c
_classY
WUloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchImetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shapeOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*\
_classR
PNloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchHmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shapeOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*[
_classQ
OMloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
і
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchEmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalarOmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*X
_classN
LJloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 

\metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityPmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fO^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*c
_classY
WUloc:@metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
М
Mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMerge\metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1Zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
а
6metrics/label/mean/broadcast_weights_1/ones_like/ShapeShapehead/assert_range/IdentityN^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
Ы
6metrics/label/mean/broadcast_weights_1/ones_like/ConstConstN^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
_output_shapes
: *
dtype0*
valueB
 *  ?
к
0metrics/label/mean/broadcast_weights_1/ones_likeFill6metrics/label/mean/broadcast_weights_1/ones_like/Shape6metrics/label/mean/broadcast_weights_1/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
З
&metrics/label/mean/broadcast_weights_1Mul$metrics/label/mean/broadcast_weights0metrics/label/mean/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/label/mean/MulMulhead/assert_range/Identity&metrics/label/mean/broadcast_weights_1*
T0*'
_output_shapes
:џџџџџџџџџ
i
metrics/label/mean/ConstConst*
_output_shapes
:*
dtype0*
valueB"       

metrics/label/mean/SumSum&metrics/label/mean/broadcast_weights_1metrics/label/mean/Const*
T0*
_output_shapes
: 
k
metrics/label/mean/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
t
metrics/label/mean/Sum_1Summetrics/label/mean/Mulmetrics/label/mean/Const_1*
T0*
_output_shapes
: 
Ћ
metrics/label/mean/AssignAdd	AssignAddmetrics/label/mean/totalmetrics/label/mean/Sum_1*
T0*+
_class!
loc:@metrics/label/mean/total*
_output_shapes
: 
Ф
metrics/label/mean/AssignAdd_1	AssignAddmetrics/label/mean/countmetrics/label/mean/Sum^metrics/label/mean/Mul*
T0*+
_class!
loc:@metrics/label/mean/count*
_output_shapes
: 
a
metrics/label/mean/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/label/mean/MaximumMaximummetrics/label/mean/count/readmetrics/label/mean/Maximum/y*
T0*
_output_shapes
: 

metrics/label/mean/valueDivNoNanmetrics/label/mean/total/readmetrics/label/mean/Maximum*
T0*
_output_shapes
: 
c
metrics/label/mean/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/label/mean/Maximum_1Maximummetrics/label/mean/AssignAdd_1metrics/label/mean/Maximum_1/y*
T0*
_output_shapes
: 

metrics/label/mean/update_opDivNoNanmetrics/label/mean/AssignAddmetrics/label/mean/Maximum_1*
T0*
_output_shapes
: 
 
,metrics/average_loss/total/Initializer/zerosConst*-
_class#
!loc:@metrics/average_loss/total*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/average_loss/total
VariableV2*-
_class#
!loc:@metrics/average_loss/total*
_output_shapes
: *
dtype0*
shape: 
Х
!metrics/average_loss/total/AssignAssignmetrics/average_loss/total,metrics/average_loss/total/Initializer/zeros*
T0*-
_class#
!loc:@metrics/average_loss/total*
_output_shapes
: 

metrics/average_loss/total/readIdentitymetrics/average_loss/total*
T0*-
_class#
!loc:@metrics/average_loss/total*
_output_shapes
: 
 
,metrics/average_loss/count/Initializer/zerosConst*-
_class#
!loc:@metrics/average_loss/count*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/average_loss/count
VariableV2*-
_class#
!loc:@metrics/average_loss/count*
_output_shapes
: *
dtype0*
shape: 
Х
!metrics/average_loss/count/AssignAssignmetrics/average_loss/count,metrics/average_loss/count/Initializer/zeros*
T0*-
_class#
!loc:@metrics/average_loss/count*
_output_shapes
: 

metrics/average_loss/count/readIdentitymetrics/average_loss/count*
T0*-
_class#
!loc:@metrics/average_loss/count*
_output_shapes
: 
_
metrics/average_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Imetrics/average_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 

Hmetrics/average_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 

Hmetrics/average_loss/broadcast_weights/assert_broadcastable/values/shapeShapehead/logistic_loss*
T0*
_output_shapes
:

Gmetrics/average_loss/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
_
Wmetrics/average_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
в
6metrics/average_loss/broadcast_weights/ones_like/ShapeShapehead/logistic_lossX^metrics/average_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
е
6metrics/average_loss/broadcast_weights/ones_like/ConstConstX^metrics/average_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
к
0metrics/average_loss/broadcast_weights/ones_likeFill6metrics/average_loss/broadcast_weights/ones_like/Shape6metrics/average_loss/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
­
&metrics/average_loss/broadcast_weightsMulmetrics/average_loss/Const0metrics/average_loss/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/average_loss/MulMulhead/logistic_loss&metrics/average_loss/broadcast_weights*
T0*'
_output_shapes
:џџџџџџџџџ
m
metrics/average_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       

metrics/average_loss/SumSum&metrics/average_loss/broadcast_weightsmetrics/average_loss/Const_1*
T0*
_output_shapes
: 
m
metrics/average_loss/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       
z
metrics/average_loss/Sum_1Summetrics/average_loss/Mulmetrics/average_loss/Const_2*
T0*
_output_shapes
: 
Г
metrics/average_loss/AssignAdd	AssignAddmetrics/average_loss/totalmetrics/average_loss/Sum_1*
T0*-
_class#
!loc:@metrics/average_loss/total*
_output_shapes
: 
Ю
 metrics/average_loss/AssignAdd_1	AssignAddmetrics/average_loss/countmetrics/average_loss/Sum^metrics/average_loss/Mul*
T0*-
_class#
!loc:@metrics/average_loss/count*
_output_shapes
: 
c
metrics/average_loss/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/average_loss/MaximumMaximummetrics/average_loss/count/readmetrics/average_loss/Maximum/y*
T0*
_output_shapes
: 

metrics/average_loss/valueDivNoNanmetrics/average_loss/total/readmetrics/average_loss/Maximum*
T0*
_output_shapes
: 
e
 metrics/average_loss/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/average_loss/Maximum_1Maximum metrics/average_loss/AssignAdd_1 metrics/average_loss/Maximum_1/y*
T0*
_output_shapes
: 

metrics/average_loss/update_opDivNoNanmetrics/average_loss/AssignAddmetrics/average_loss/Maximum_1*
T0*
_output_shapes
: 
R
metrics/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
r
metrics/CastCasthead/predictions/ExpandDims*

DstT0*

SrcT0	*'
_output_shapes
:џџџџџџџџџ
r
metrics/EqualEqualmetrics/Casthead/assert_range/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
f
metrics/Cast_1Castmetrics/Equal*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ

(metrics/accuracy/total/Initializer/zerosConst*)
_class
loc:@metrics/accuracy/total*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/accuracy/total
VariableV2*)
_class
loc:@metrics/accuracy/total*
_output_shapes
: *
dtype0*
shape: 
Е
metrics/accuracy/total/AssignAssignmetrics/accuracy/total(metrics/accuracy/total/Initializer/zeros*
T0*)
_class
loc:@metrics/accuracy/total*
_output_shapes
: 

metrics/accuracy/total/readIdentitymetrics/accuracy/total*
T0*)
_class
loc:@metrics/accuracy/total*
_output_shapes
: 

(metrics/accuracy/count/Initializer/zerosConst*)
_class
loc:@metrics/accuracy/count*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/accuracy/count
VariableV2*)
_class
loc:@metrics/accuracy/count*
_output_shapes
: *
dtype0*
shape: 
Е
metrics/accuracy/count/AssignAssignmetrics/accuracy/count(metrics/accuracy/count/Initializer/zeros*
T0*)
_class
loc:@metrics/accuracy/count*
_output_shapes
: 

metrics/accuracy/count/readIdentitymetrics/accuracy/count*
T0*)
_class
loc:@metrics/accuracy/count*
_output_shapes
: 

Emetrics/accuracy/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 

Dmetrics/accuracy/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 

Dmetrics/accuracy/broadcast_weights/assert_broadcastable/values/shapeShapemetrics/Cast_1*
T0*
_output_shapes
:

Cmetrics/accuracy/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
[
Smetrics/accuracy/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
Ц
2metrics/accuracy/broadcast_weights/ones_like/ShapeShapemetrics/Cast_1T^metrics/accuracy/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
Э
2metrics/accuracy/broadcast_weights/ones_like/ConstConstT^metrics/accuracy/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
Ю
,metrics/accuracy/broadcast_weights/ones_likeFill2metrics/accuracy/broadcast_weights/ones_like/Shape2metrics/accuracy/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ

"metrics/accuracy/broadcast_weightsMulmetrics/Const,metrics/accuracy/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/accuracy/MulMulmetrics/Cast_1"metrics/accuracy/broadcast_weights*
T0*'
_output_shapes
:џџџџџџџџџ
g
metrics/accuracy/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
x
metrics/accuracy/SumSum"metrics/accuracy/broadcast_weightsmetrics/accuracy/Const*
T0*
_output_shapes
: 
i
metrics/accuracy/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       
n
metrics/accuracy/Sum_1Summetrics/accuracy/Mulmetrics/accuracy/Const_1*
T0*
_output_shapes
: 
Ѓ
metrics/accuracy/AssignAdd	AssignAddmetrics/accuracy/totalmetrics/accuracy/Sum_1*
T0*)
_class
loc:@metrics/accuracy/total*
_output_shapes
: 
К
metrics/accuracy/AssignAdd_1	AssignAddmetrics/accuracy/countmetrics/accuracy/Sum^metrics/accuracy/Mul*
T0*)
_class
loc:@metrics/accuracy/count*
_output_shapes
: 
_
metrics/accuracy/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
}
metrics/accuracy/MaximumMaximummetrics/accuracy/count/readmetrics/accuracy/Maximum/y*
T0*
_output_shapes
: 
z
metrics/accuracy/valueDivNoNanmetrics/accuracy/total/readmetrics/accuracy/Maximum*
T0*
_output_shapes
: 
a
metrics/accuracy/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/accuracy/Maximum_1Maximummetrics/accuracy/AssignAdd_1metrics/accuracy/Maximum_1/y*
T0*
_output_shapes
: 

metrics/accuracy/update_opDivNoNanmetrics/accuracy/AssignAddmetrics/accuracy/Maximum_1*
T0*
_output_shapes
: 
|
metrics/precision/CastCasthead/predictions/ExpandDims*

DstT0
*

SrcT0	*'
_output_shapes
:џџџџџџџџџ
}
metrics/precision/Cast_1Casthead/assert_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
\
metrics/precision/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
j
(metrics/precision/true_positives/Equal/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z
Ѕ
&metrics/precision/true_positives/EqualEqualmetrics/precision/Cast_1(metrics/precision/true_positives/Equal/y*
T0
*'
_output_shapes
:џџџџџџџџџ
l
*metrics/precision/true_positives/Equal_1/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z
Ї
(metrics/precision/true_positives/Equal_1Equalmetrics/precision/Cast*metrics/precision/true_positives/Equal_1/y*
T0
*'
_output_shapes
:џџџџџџџџџ
Д
+metrics/precision/true_positives/LogicalAnd
LogicalAnd&metrics/precision/true_positives/Equal(metrics/precision/true_positives/Equal_1*'
_output_shapes
:џџџџџџџџџ
W
Ometrics/precision/true_positives/assert_type/statically_determined_correct_typeNoOp
И
8metrics/precision/true_positives/count/Initializer/zerosConst*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: *
dtype0*
valueB
 *    
Ё
&metrics/precision/true_positives/count
VariableV2*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: *
dtype0*
shape: 
ѕ
-metrics/precision/true_positives/count/AssignAssign&metrics/precision/true_positives/count8metrics/precision/true_positives/count/Initializer/zeros*
T0*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: 
Л
+metrics/precision/true_positives/count/readIdentity&metrics/precision/true_positives/count*
T0*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: 

%metrics/precision/true_positives/CastCast+metrics/precision/true_positives/LogicalAnd*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
g
%metrics/precision/true_positives/RankConst*
_output_shapes
: *
dtype0*
value	B :
v
4metrics/precision/true_positives/assert_rank_in/rankConst*
_output_shapes
: *
dtype0*
value	B : 
x
5metrics/precision/true_positives/assert_rank_in/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
f
^metrics/precision/true_positives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
h
`metrics/precision/true_positives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
W
Ometrics/precision/true_positives/assert_rank_in/static_checks_determined_all_okNoOp
я
$metrics/precision/true_positives/MulMul%metrics/precision/true_positives/Castmetrics/precision/ConstP^metrics/precision/true_positives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ

)metrics/precision/true_positives/IdentityIdentity+metrics/precision/true_positives/count/read*
T0*
_output_shapes
: 
w
&metrics/precision/true_positives/ConstConst*
_output_shapes
:*
dtype0*
valueB"       

$metrics/precision/true_positives/SumSum$metrics/precision/true_positives/Mul&metrics/precision/true_positives/Const*
T0*
_output_shapes
: 
с
*metrics/precision/true_positives/AssignAdd	AssignAdd&metrics/precision/true_positives/count$metrics/precision/true_positives/Sum*
T0*9
_class/
-+loc:@metrics/precision/true_positives/count*
_output_shapes
: 
k
)metrics/precision/false_positives/Equal/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z 
Ї
'metrics/precision/false_positives/EqualEqualmetrics/precision/Cast_1)metrics/precision/false_positives/Equal/y*
T0
*'
_output_shapes
:џџџџџџџџџ
m
+metrics/precision/false_positives/Equal_1/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z
Љ
)metrics/precision/false_positives/Equal_1Equalmetrics/precision/Cast+metrics/precision/false_positives/Equal_1/y*
T0
*'
_output_shapes
:џџџџџџџџџ
З
,metrics/precision/false_positives/LogicalAnd
LogicalAnd'metrics/precision/false_positives/Equal)metrics/precision/false_positives/Equal_1*'
_output_shapes
:џџџџџџџџџ
X
Pmetrics/precision/false_positives/assert_type/statically_determined_correct_typeNoOp
К
9metrics/precision/false_positives/count/Initializer/zerosConst*:
_class0
.,loc:@metrics/precision/false_positives/count*
_output_shapes
: *
dtype0*
valueB
 *    
Ѓ
'metrics/precision/false_positives/count
VariableV2*:
_class0
.,loc:@metrics/precision/false_positives/count*
_output_shapes
: *
dtype0*
shape: 
љ
.metrics/precision/false_positives/count/AssignAssign'metrics/precision/false_positives/count9metrics/precision/false_positives/count/Initializer/zeros*
T0*:
_class0
.,loc:@metrics/precision/false_positives/count*
_output_shapes
: 
О
,metrics/precision/false_positives/count/readIdentity'metrics/precision/false_positives/count*
T0*:
_class0
.,loc:@metrics/precision/false_positives/count*
_output_shapes
: 

&metrics/precision/false_positives/CastCast,metrics/precision/false_positives/LogicalAnd*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
h
&metrics/precision/false_positives/RankConst*
_output_shapes
: *
dtype0*
value	B :
w
5metrics/precision/false_positives/assert_rank_in/rankConst*
_output_shapes
: *
dtype0*
value	B : 
y
6metrics/precision/false_positives/assert_rank_in/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
g
_metrics/precision/false_positives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
i
ametrics/precision/false_positives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
X
Pmetrics/precision/false_positives/assert_rank_in/static_checks_determined_all_okNoOp
ђ
%metrics/precision/false_positives/MulMul&metrics/precision/false_positives/Castmetrics/precision/ConstQ^metrics/precision/false_positives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ

*metrics/precision/false_positives/IdentityIdentity,metrics/precision/false_positives/count/read*
T0*
_output_shapes
: 
x
'metrics/precision/false_positives/ConstConst*
_output_shapes
:*
dtype0*
valueB"       

%metrics/precision/false_positives/SumSum%metrics/precision/false_positives/Mul'metrics/precision/false_positives/Const*
T0*
_output_shapes
: 
х
+metrics/precision/false_positives/AssignAdd	AssignAdd'metrics/precision/false_positives/count%metrics/precision/false_positives/Sum*
T0*:
_class0
.,loc:@metrics/precision/false_positives/count*
_output_shapes
: 

metrics/precision/addAddV2)metrics/precision/true_positives/Identity*metrics/precision/false_positives/Identity*
T0*
_output_shapes
: 
`
metrics/precision/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
y
metrics/precision/GreaterGreatermetrics/precision/addmetrics/precision/Greater/y*
T0*
_output_shapes
: 

metrics/precision/add_1AddV2)metrics/precision/true_positives/Identity*metrics/precision/false_positives/Identity*
T0*
_output_shapes
: 

metrics/precision/divRealDiv)metrics/precision/true_positives/Identitymetrics/precision/add_1*
T0*
_output_shapes
: 
^
metrics/precision/value/eConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/precision/valueSelectmetrics/precision/Greatermetrics/precision/divmetrics/precision/value/e*
T0*
_output_shapes
: 

metrics/precision/add_2AddV2*metrics/precision/true_positives/AssignAdd+metrics/precision/false_positives/AssignAdd*
T0*
_output_shapes
: 
b
metrics/precision/Greater_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/precision/Greater_1Greatermetrics/precision/add_2metrics/precision/Greater_1/y*
T0*
_output_shapes
: 

metrics/precision/add_3AddV2*metrics/precision/true_positives/AssignAdd+metrics/precision/false_positives/AssignAdd*
T0*
_output_shapes
: 

metrics/precision/div_1RealDiv*metrics/precision/true_positives/AssignAddmetrics/precision/add_3*
T0*
_output_shapes
: 
b
metrics/precision/update_op/eConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/precision/update_opSelectmetrics/precision/Greater_1metrics/precision/div_1metrics/precision/update_op/e*
T0*
_output_shapes
: 
y
metrics/recall/CastCasthead/predictions/ExpandDims*

DstT0
*

SrcT0	*'
_output_shapes
:џџџџџџџџџ
z
metrics/recall/Cast_1Casthead/assert_range/Identity*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
Y
metrics/recall/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
g
%metrics/recall/true_positives/Equal/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z

#metrics/recall/true_positives/EqualEqualmetrics/recall/Cast_1%metrics/recall/true_positives/Equal/y*
T0
*'
_output_shapes
:џџџџџџџџџ
i
'metrics/recall/true_positives/Equal_1/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z

%metrics/recall/true_positives/Equal_1Equalmetrics/recall/Cast'metrics/recall/true_positives/Equal_1/y*
T0
*'
_output_shapes
:џџџџџџџџџ
Ћ
(metrics/recall/true_positives/LogicalAnd
LogicalAnd#metrics/recall/true_positives/Equal%metrics/recall/true_positives/Equal_1*'
_output_shapes
:џџџџџџџџџ
T
Lmetrics/recall/true_positives/assert_type/statically_determined_correct_typeNoOp
В
5metrics/recall/true_positives/count/Initializer/zerosConst*6
_class,
*(loc:@metrics/recall/true_positives/count*
_output_shapes
: *
dtype0*
valueB
 *    

#metrics/recall/true_positives/count
VariableV2*6
_class,
*(loc:@metrics/recall/true_positives/count*
_output_shapes
: *
dtype0*
shape: 
щ
*metrics/recall/true_positives/count/AssignAssign#metrics/recall/true_positives/count5metrics/recall/true_positives/count/Initializer/zeros*
T0*6
_class,
*(loc:@metrics/recall/true_positives/count*
_output_shapes
: 
В
(metrics/recall/true_positives/count/readIdentity#metrics/recall/true_positives/count*
T0*6
_class,
*(loc:@metrics/recall/true_positives/count*
_output_shapes
: 

"metrics/recall/true_positives/CastCast(metrics/recall/true_positives/LogicalAnd*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
d
"metrics/recall/true_positives/RankConst*
_output_shapes
: *
dtype0*
value	B :
s
1metrics/recall/true_positives/assert_rank_in/rankConst*
_output_shapes
: *
dtype0*
value	B : 
u
2metrics/recall/true_positives/assert_rank_in/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
c
[metrics/recall/true_positives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
e
]metrics/recall/true_positives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
T
Lmetrics/recall/true_positives/assert_rank_in/static_checks_determined_all_okNoOp
у
!metrics/recall/true_positives/MulMul"metrics/recall/true_positives/Castmetrics/recall/ConstM^metrics/recall/true_positives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ
}
&metrics/recall/true_positives/IdentityIdentity(metrics/recall/true_positives/count/read*
T0*
_output_shapes
: 
t
#metrics/recall/true_positives/ConstConst*
_output_shapes
:*
dtype0*
valueB"       

!metrics/recall/true_positives/SumSum!metrics/recall/true_positives/Mul#metrics/recall/true_positives/Const*
T0*
_output_shapes
: 
е
'metrics/recall/true_positives/AssignAdd	AssignAdd#metrics/recall/true_positives/count!metrics/recall/true_positives/Sum*
T0*6
_class,
*(loc:@metrics/recall/true_positives/count*
_output_shapes
: 
h
&metrics/recall/false_negatives/Equal/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z

$metrics/recall/false_negatives/EqualEqualmetrics/recall/Cast_1&metrics/recall/false_negatives/Equal/y*
T0
*'
_output_shapes
:џџџџџџџџџ
j
(metrics/recall/false_negatives/Equal_1/yConst*
_output_shapes
: *
dtype0
*
value	B
 Z 
 
&metrics/recall/false_negatives/Equal_1Equalmetrics/recall/Cast(metrics/recall/false_negatives/Equal_1/y*
T0
*'
_output_shapes
:џџџџџџџџџ
Ў
)metrics/recall/false_negatives/LogicalAnd
LogicalAnd$metrics/recall/false_negatives/Equal&metrics/recall/false_negatives/Equal_1*'
_output_shapes
:џџџџџџџџџ
U
Mmetrics/recall/false_negatives/assert_type/statically_determined_correct_typeNoOp
Д
6metrics/recall/false_negatives/count/Initializer/zerosConst*7
_class-
+)loc:@metrics/recall/false_negatives/count*
_output_shapes
: *
dtype0*
valueB
 *    

$metrics/recall/false_negatives/count
VariableV2*7
_class-
+)loc:@metrics/recall/false_negatives/count*
_output_shapes
: *
dtype0*
shape: 
э
+metrics/recall/false_negatives/count/AssignAssign$metrics/recall/false_negatives/count6metrics/recall/false_negatives/count/Initializer/zeros*
T0*7
_class-
+)loc:@metrics/recall/false_negatives/count*
_output_shapes
: 
Е
)metrics/recall/false_negatives/count/readIdentity$metrics/recall/false_negatives/count*
T0*7
_class-
+)loc:@metrics/recall/false_negatives/count*
_output_shapes
: 

#metrics/recall/false_negatives/CastCast)metrics/recall/false_negatives/LogicalAnd*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ
e
#metrics/recall/false_negatives/RankConst*
_output_shapes
: *
dtype0*
value	B :
t
2metrics/recall/false_negatives/assert_rank_in/rankConst*
_output_shapes
: *
dtype0*
value	B : 
v
3metrics/recall/false_negatives/assert_rank_in/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
d
\metrics/recall/false_negatives/assert_rank_in/assert_type/statically_determined_correct_typeNoOp
f
^metrics/recall/false_negatives/assert_rank_in/assert_type_1/statically_determined_correct_typeNoOp
U
Mmetrics/recall/false_negatives/assert_rank_in/static_checks_determined_all_okNoOp
ц
"metrics/recall/false_negatives/MulMul#metrics/recall/false_negatives/Castmetrics/recall/ConstN^metrics/recall/false_negatives/assert_rank_in/static_checks_determined_all_ok*
T0*'
_output_shapes
:џџџџџџџџџ

'metrics/recall/false_negatives/IdentityIdentity)metrics/recall/false_negatives/count/read*
T0*
_output_shapes
: 
u
$metrics/recall/false_negatives/ConstConst*
_output_shapes
:*
dtype0*
valueB"       

"metrics/recall/false_negatives/SumSum"metrics/recall/false_negatives/Mul$metrics/recall/false_negatives/Const*
T0*
_output_shapes
: 
й
(metrics/recall/false_negatives/AssignAdd	AssignAdd$metrics/recall/false_negatives/count"metrics/recall/false_negatives/Sum*
T0*7
_class-
+)loc:@metrics/recall/false_negatives/count*
_output_shapes
: 

metrics/recall/addAddV2&metrics/recall/true_positives/Identity'metrics/recall/false_negatives/Identity*
T0*
_output_shapes
: 
]
metrics/recall/Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
p
metrics/recall/GreaterGreatermetrics/recall/addmetrics/recall/Greater/y*
T0*
_output_shapes
: 

metrics/recall/add_1AddV2&metrics/recall/true_positives/Identity'metrics/recall/false_negatives/Identity*
T0*
_output_shapes
: 
|
metrics/recall/divRealDiv&metrics/recall/true_positives/Identitymetrics/recall/add_1*
T0*
_output_shapes
: 
[
metrics/recall/value/eConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/recall/valueSelectmetrics/recall/Greatermetrics/recall/divmetrics/recall/value/e*
T0*
_output_shapes
: 

metrics/recall/add_2AddV2'metrics/recall/true_positives/AssignAdd(metrics/recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 
_
metrics/recall/Greater_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
v
metrics/recall/Greater_1Greatermetrics/recall/add_2metrics/recall/Greater_1/y*
T0*
_output_shapes
: 

metrics/recall/add_3AddV2'metrics/recall/true_positives/AssignAdd(metrics/recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 

metrics/recall/div_1RealDiv'metrics/recall/true_positives/AssignAddmetrics/recall/add_3*
T0*
_output_shapes
: 
_
metrics/recall/update_op/eConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/recall/update_opSelectmetrics/recall/Greater_1metrics/recall/div_1metrics/recall/update_op/e*
T0*
_output_shapes
: 
v
1metrics/prediction/mean/broadcast_weights/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Lmetrics/prediction/mean/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 

Kmetrics/prediction/mean/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 

Kmetrics/prediction/mean/broadcast_weights/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

Jmetrics/prediction/mean/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
b
Zmetrics/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
п
9metrics/prediction/mean/broadcast_weights/ones_like/ShapeShapehead/predictions/logistic[^metrics/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
л
9metrics/prediction/mean/broadcast_weights/ones_like/ConstConst[^metrics/prediction/mean/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
у
3metrics/prediction/mean/broadcast_weights/ones_likeFill9metrics/prediction/mean/broadcast_weights/ones_like/Shape9metrics/prediction/mean/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Ъ
)metrics/prediction/mean/broadcast_weightsMul1metrics/prediction/mean/broadcast_weights/weights3metrics/prediction/mean/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
І
/metrics/prediction/mean/total/Initializer/zerosConst*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/prediction/mean/total
VariableV2*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: *
dtype0*
shape: 
б
$metrics/prediction/mean/total/AssignAssignmetrics/prediction/mean/total/metrics/prediction/mean/total/Initializer/zeros*
T0*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: 
 
"metrics/prediction/mean/total/readIdentitymetrics/prediction/mean/total*
T0*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: 
І
/metrics/prediction/mean/count/Initializer/zerosConst*0
_class&
$"loc:@metrics/prediction/mean/count*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/prediction/mean/count
VariableV2*0
_class&
$"loc:@metrics/prediction/mean/count*
_output_shapes
: *
dtype0*
shape: 
б
$metrics/prediction/mean/count/AssignAssignmetrics/prediction/mean/count/metrics/prediction/mean/count/Initializer/zeros*
T0*0
_class&
$"loc:@metrics/prediction/mean/count*
_output_shapes
: 
 
"metrics/prediction/mean/count/readIdentitymetrics/prediction/mean/count*
T0*0
_class&
$"loc:@metrics/prediction/mean/count*
_output_shapes
: 
Ї
Nmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeShape)metrics/prediction/mean/broadcast_weights*
T0*
_output_shapes
:

Mmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :

Mmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :

Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 

Jmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarEqualLmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar/xMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
п
Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentityXmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
н
Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityVmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
а
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 

Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*]
_classS
QOloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
 
vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqual}metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
В
}metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchLmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rankWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*_
_classU
SQloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : 
Ж
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rankWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 

pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityrmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitypmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Ъ
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
м
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:
Ь
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
Ј
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchqmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
б
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
:*
dtype0*
valueB"      
Т
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B :
а
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapemetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*
_output_shapes

:
О
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B :
и
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
T0*
_output_shapes

:
Ь
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
т
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
а
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchNmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeWmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*a
_classW
USloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
­
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchqmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*a
_classW
USloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
Э
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
_output_shapes
: 
Г
|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConsts^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B : 
А
zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqual|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 

rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchvmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_class
}{loc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 

ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergermetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
T0
*
_output_shapes
: : 
з
Umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergeometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeZmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
T0
*
_output_shapes
: : 
Ў
Fmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=
Д
Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*<
value3B1 B+metrics/prediction/mean/broadcast_weights:0

Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=
Є
Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*,
value#B! Bhead/predictions/logistic:0

Hmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
Ў
Smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
й
Umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
з
Umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentitySmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
и
Tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Б
Qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
Ё
_metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tR^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*h
_class^
\Zloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB Bweights.shape=

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*<
value3B1 B+metrics/prediction/mean/broadcast_weights:0

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=

Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*,
value#B! Bhead/predictions/logistic:0
§
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstV^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB B
is_scalar=

Smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertZmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchZmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	


Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*h
_class^
\Zloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchNmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shapeTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*a
_classW
USloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::

\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchMmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shapeTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*`
_classV
TRloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::

\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchJmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalarTmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*]
_classS
QOloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Ѕ
ametrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityUmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fT^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*h
_class^
\Zloc:@metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
Ы
Rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMergeametrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1_metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
й
;metrics/prediction/mean/broadcast_weights_1/ones_like/ShapeShapehead/predictions/logisticS^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
е
;metrics/prediction/mean/broadcast_weights_1/ones_like/ConstConstS^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
_output_shapes
: *
dtype0*
valueB
 *  ?
щ
5metrics/prediction/mean/broadcast_weights_1/ones_likeFill;metrics/prediction/mean/broadcast_weights_1/ones_like/Shape;metrics/prediction/mean/broadcast_weights_1/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Ц
+metrics/prediction/mean/broadcast_weights_1Mul)metrics/prediction/mean/broadcast_weights5metrics/prediction/mean/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ

metrics/prediction/mean/MulMulhead/predictions/logistic+metrics/prediction/mean/broadcast_weights_1*
T0*'
_output_shapes
:џџџџџџџџџ
n
metrics/prediction/mean/ConstConst*
_output_shapes
:*
dtype0*
valueB"       

metrics/prediction/mean/SumSum+metrics/prediction/mean/broadcast_weights_1metrics/prediction/mean/Const*
T0*
_output_shapes
: 
p
metrics/prediction/mean/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       

metrics/prediction/mean/Sum_1Summetrics/prediction/mean/Mulmetrics/prediction/mean/Const_1*
T0*
_output_shapes
: 
П
!metrics/prediction/mean/AssignAdd	AssignAddmetrics/prediction/mean/totalmetrics/prediction/mean/Sum_1*
T0*0
_class&
$"loc:@metrics/prediction/mean/total*
_output_shapes
: 
н
#metrics/prediction/mean/AssignAdd_1	AssignAddmetrics/prediction/mean/countmetrics/prediction/mean/Sum^metrics/prediction/mean/Mul*
T0*0
_class&
$"loc:@metrics/prediction/mean/count*
_output_shapes
: 
f
!metrics/prediction/mean/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

metrics/prediction/mean/MaximumMaximum"metrics/prediction/mean/count/read!metrics/prediction/mean/Maximum/y*
T0*
_output_shapes
: 

metrics/prediction/mean/valueDivNoNan"metrics/prediction/mean/total/readmetrics/prediction/mean/Maximum*
T0*
_output_shapes
: 
h
#metrics/prediction/mean/Maximum_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    

!metrics/prediction/mean/Maximum_1Maximum#metrics/prediction/mean/AssignAdd_1#metrics/prediction/mean/Maximum_1/y*
T0*
_output_shapes
: 

!metrics/prediction/mean/update_opDivNoNan!metrics/prediction/mean/AssignAdd!metrics/prediction/mean/Maximum_1*
T0*
_output_shapes
: 
d
metrics/accuracy_baseline/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

metrics/accuracy_baseline/subSubmetrics/accuracy_baseline/sub/xmetrics/label/mean/value*
T0*
_output_shapes
: 

metrics/accuracy_baseline/valueMaximummetrics/label/mean/valuemetrics/accuracy_baseline/sub*
T0*
_output_shapes
: 
f
!metrics/accuracy_baseline/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

metrics/accuracy_baseline/sub_1Sub!metrics/accuracy_baseline/sub_1/xmetrics/label/mean/update_op*
T0*
_output_shapes
: 

#metrics/accuracy_baseline/update_opMaximummetrics/label/mean/update_opmetrics/accuracy_baseline/sub_1*
T0*
_output_shapes
: 
j
%metrics/auc/broadcast_weights/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

@metrics/auc/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 

?metrics/auc/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 

?metrics/auc/broadcast_weights/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

>metrics/auc/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
V
Nmetrics/auc/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
Ч
-metrics/auc/broadcast_weights/ones_like/ShapeShapehead/predictions/logisticO^metrics/auc/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
У
-metrics/auc/broadcast_weights/ones_like/ConstConstO^metrics/auc/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
П
'metrics/auc/broadcast_weights/ones_likeFill-metrics/auc/broadcast_weights/ones_like/Shape-metrics/auc/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
І
metrics/auc/broadcast_weightsMul%metrics/auc/broadcast_weights/weights'metrics/auc/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
W
metrics/auc/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *    

-metrics/auc/assert_greater_equal/GreaterEqualGreaterEqualhead/predictions/logisticmetrics/auc/Cast/x*
T0*'
_output_shapes
:џџџџџџџџџ
w
&metrics/auc/assert_greater_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       

$metrics/auc/assert_greater_equal/AllAll-metrics/auc/assert_greater_equal/GreaterEqual&metrics/auc/assert_greater_equal/Const*
_output_shapes
: 

-metrics/auc/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*.
value%B# Bpredictions must be in [0, 1]

/metrics/auc/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:

/metrics/auc/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*3
value*B( B"x (head/predictions/logistic:0) = 

/metrics/auc/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*,
value#B! By (metrics/auc/Cast/x:0) = 
Г
:metrics/auc/assert_greater_equal/Assert/AssertGuard/SwitchSwitch$metrics/auc/assert_greater_equal/All$metrics/auc/assert_greater_equal/All*
T0
*
_output_shapes
: : 
Ї
<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_tIdentity<metrics/auc/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ѕ
<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_fIdentity:metrics/auc/assert_greater_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 

;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_idIdentity$metrics/auc/assert_greater_equal/All*
T0
*
_output_shapes
: 

8metrics/auc/assert_greater_equal/Assert/AssertGuard/NoOpNoOp=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t
Н
Fmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentity<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t9^metrics/auc/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*O
_classE
CAloc:@metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
о
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*.
value%B# Bpredictions must be in [0, 1]
ь
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
у
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_2Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*3
value*B( B"x (head/predictions/logistic:0) = 
м
Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_4Const=^metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*,
value#B! By (metrics/auc/Cast/x:0) = 
Ў
:metrics/auc/assert_greater_equal/Assert/AssertGuard/AssertAssertAmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchAmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_2Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_4Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
T

2

Ametrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitch$metrics/auc/assert_greater_equal/All;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0
*7
_class-
+)loc:@metrics/auc/assert_greater_equal/All*
_output_shapes
: : 

Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logistic;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*,
_class"
 loc:@head/predictions/logistic*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
ш
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switchmetrics/auc/Cast/x;metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*%
_class
loc:@metrics/auc/Cast/x*
_output_shapes
: : 
С
Hmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Identity<metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f;^metrics/auc/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*O
_classE
CAloc:@metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 

9metrics/auc/assert_greater_equal/Assert/AssertGuard/MergeMergeHmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1Fmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
Y
metrics/auc/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

'metrics/auc/assert_less_equal/LessEqual	LessEqualhead/predictions/logisticmetrics/auc/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ
t
#metrics/auc/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       

!metrics/auc/assert_less_equal/AllAll'metrics/auc/assert_less_equal/LessEqual#metrics/auc/assert_less_equal/Const*
_output_shapes
: 

*metrics/auc/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*.
value%B# Bpredictions must be in [0, 1]

,metrics/auc/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:

,metrics/auc/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*3
value*B( B"x (head/predictions/logistic:0) = 

,metrics/auc/assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*.
value%B# By (metrics/auc/Cast_1/x:0) = 
Њ
7metrics/auc/assert_less_equal/Assert/AssertGuard/SwitchSwitch!metrics/auc/assert_less_equal/All!metrics/auc/assert_less_equal/All*
T0
*
_output_shapes
: : 
Ё
9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_tIdentity9metrics/auc/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 

9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_fIdentity7metrics/auc/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 

8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_idIdentity!metrics/auc/assert_less_equal/All*
T0
*
_output_shapes
: 
y
5metrics/auc/assert_less_equal/Assert/AssertGuard/NoOpNoOp:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t
Б
Cmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependencyIdentity9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t6^metrics/auc/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*L
_classB
@>loc:@metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
и
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*.
value%B# Bpredictions must be in [0, 1]
ц
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
н
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_2Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*3
value*B( B"x (head/predictions/logistic:0) = 
и
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_4Const:^metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*.
value%B# By (metrics/auc/Cast_1/x:0) = 

7metrics/auc/assert_less_equal/Assert/AssertGuard/AssertAssert>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_2@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_4@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T

2
ў
>metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch!metrics/auc/assert_less_equal/All8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*4
_class*
(&loc:@metrics/auc/assert_less_equal/All*
_output_shapes
: : 

@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logistic8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0*,
_class"
 loc:@head/predictions/logistic*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
ц
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switchmetrics/auc/Cast_1/x8metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id*
T0*'
_class
loc:@metrics/auc/Cast_1/x*
_output_shapes
: : 
Е
Emetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Identity9metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f8^metrics/auc/assert_less_equal/Assert/AssertGuard/Assert*
T0
*L
_classB
@>loc:@metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
ї
6metrics/auc/assert_less_equal/Assert/AssertGuard/MergeMergeEmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1Cmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
ь
metrics/auc/Cast_2Casthead/assert_range/Identity:^metrics/auc/assert_greater_equal/Assert/AssertGuard/Merge7^metrics/auc/assert_less_equal/Assert/AssertGuard/Merge*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
j
metrics/auc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

metrics/auc/ReshapeReshapehead/predictions/logisticmetrics/auc/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
l
metrics/auc/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ

metrics/auc/Reshape_1Reshapemetrics/auc/Cast_2metrics/auc/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
T
metrics/auc/ShapeShapemetrics/auc/Reshape*
T0*
_output_shapes
:
i
metrics/auc/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!metrics/auc/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!metrics/auc/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
щ
metrics/auc/strided_sliceStridedSlicemetrics/auc/Shapemetrics/auc/strided_slice/stack!metrics/auc/strided_slice/stack_1!metrics/auc/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

metrics/auc/ConstConst*
_output_shapes	
:Ш*
dtype0*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?
d
metrics/auc/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
}
metrics/auc/ExpandDims
ExpandDimsmetrics/auc/Constmetrics/auc/ExpandDims/dim*
T0*
_output_shapes
:	Ш
U
metrics/auc/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
w
metrics/auc/stackPackmetrics/auc/stack/0metrics/auc/strided_slice*
N*
T0*
_output_shapes
:
v
metrics/auc/TileTilemetrics/auc/ExpandDimsmetrics/auc/stack*
T0*(
_output_shapes
:Шџџџџџџџџџ
k
metrics/auc/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       

metrics/auc/transpose	Transposemetrics/auc/Reshapemetrics/auc/transpose/perm*
T0*'
_output_shapes
:џџџџџџџџџ
m
metrics/auc/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"Ш      

metrics/auc/Tile_1Tilemetrics/auc/transposemetrics/auc/Tile_1/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
w
metrics/auc/GreaterGreatermetrics/auc/Tile_1metrics/auc/Tile*
T0*(
_output_shapes
:Шџџџџџџџџџ
c
metrics/auc/LogicalNot
LogicalNotmetrics/auc/Greater*(
_output_shapes
:Шџџџџџџџџџ
m
metrics/auc/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"Ш      

metrics/auc/Tile_2Tilemetrics/auc/Reshape_1metrics/auc/Tile_2/multiples*
T0
*(
_output_shapes
:Шџџџџџџџџџ
d
metrics/auc/LogicalNot_1
LogicalNotmetrics/auc/Tile_2*(
_output_shapes
:Шџџџџџџџџџ

Bmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shapeShapemetrics/auc/broadcast_weights*
T0*
_output_shapes
:

Ametrics/auc/broadcast_weights_1/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :

Ametrics/auc/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

@metrics/auc/broadcast_weights_1/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :

@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
э
>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalarEqual@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar/xAmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
ї
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitch>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ч
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentityLmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Х
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentityJmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
И
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentity>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
й
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1Switch>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalarKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*Q
_classG
ECloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
ќ
jmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualqmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchsmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

qmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitch@metrics/auc/broadcast_weights_1/assert_broadcastable/values/rankKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*S
_classI
GEloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : 

smetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchAmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rankKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 
щ
dmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
ћ
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityfmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
љ
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitydmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
ў
emetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Б
}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
Ж
ymetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:

metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchAmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shapeKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
ј
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
И
~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
:*
dtype0*
valueB"      
Љ
~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B :
Љ
xmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFill~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape~metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*
_output_shapes

:
Ѕ
zmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B :
Є
umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2ymetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsxmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likezmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
T0*
_output_shapes

:
Г
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
М
{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
 
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchBmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shapeKmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*U
_classK
IGloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
§
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*U
_classK
IGloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
ї
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperation{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
Д
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
_output_shapes
: 

pmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstg^metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B : 

nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualpmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
х
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchjmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankemetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*}
_classs
qoloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
№
cmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergefmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
T0
*
_output_shapes
: : 
Г
Imetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergecmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeNmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
T0
*
_output_shapes
: : 
Ђ
:metrics/auc/broadcast_weights_1/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*0
value'B% Bmetrics/auc/broadcast_weights:0

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*,
value#B! Bhead/predictions/logistic:0

<metrics/auc/broadcast_weights_1/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=

Gmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
С
Imetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
П
Imetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityGmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Р
Hmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 

Emetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOpJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
ё
Smetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tF^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*\
_classR
PNloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.
щ
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB Bweights.shape=
њ
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*0
value'B% Bmetrics/auc/broadcast_weights:0
ш
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=
і
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*,
value#B! Bhead/predictions/logistic:0
х
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ConstJ^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB B
is_scalar=

Gmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssertNmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchNmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	

ю
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchImetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*\
_classR
PNloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ъ
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchBmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shapeHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*U
_classK
IGloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
ш
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchAmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shapeHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*T
_classJ
HFloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
к
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3Switch>metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalarHmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*Q
_classG
ECloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
ѕ
Umetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityImetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fH^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*\
_classR
PNloc:@metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
Ї
Fmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMergeUmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1Smetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
С
/metrics/auc/broadcast_weights_1/ones_like/ShapeShapehead/predictions/logisticG^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
Н
/metrics/auc/broadcast_weights_1/ones_like/ConstConstG^metrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
_output_shapes
: *
dtype0*
valueB
 *  ?
Х
)metrics/auc/broadcast_weights_1/ones_likeFill/metrics/auc/broadcast_weights_1/ones_like/Shape/metrics/auc/broadcast_weights_1/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
Ђ
metrics/auc/broadcast_weights_1Mulmetrics/auc/broadcast_weights)metrics/auc/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
l
metrics/auc/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ

metrics/auc/Reshape_2Reshapemetrics/auc/broadcast_weights_1metrics/auc/Reshape_2/shape*
T0*'
_output_shapes
:џџџџџџџџџ
m
metrics/auc/Tile_3/multiplesConst*
_output_shapes
:*
dtype0*
valueB"Ш      

metrics/auc/Tile_3Tilemetrics/auc/Reshape_2metrics/auc/Tile_3/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
Њ
,metrics/auc/true_positives/Initializer/zerosConst*-
_class#
!loc:@metrics/auc/true_positives*
_output_shapes	
:Ш*
dtype0*
valueBШ*    

metrics/auc/true_positives
VariableV2*-
_class#
!loc:@metrics/auc/true_positives*
_output_shapes	
:Ш*
dtype0*
shape:Ш
Ъ
!metrics/auc/true_positives/AssignAssignmetrics/auc/true_positives,metrics/auc/true_positives/Initializer/zeros*
T0*-
_class#
!loc:@metrics/auc/true_positives*
_output_shapes	
:Ш

metrics/auc/true_positives/readIdentitymetrics/auc/true_positives*
T0*-
_class#
!loc:@metrics/auc/true_positives*
_output_shapes	
:Ш
w
metrics/auc/LogicalAnd
LogicalAndmetrics/auc/Tile_2metrics/auc/Greater*(
_output_shapes
:Шџџџџџџџџџ
t
metrics/auc/Cast_3Castmetrics/auc/LogicalAnd*

DstT0*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ
q
metrics/auc/mulMulmetrics/auc/Cast_3metrics/auc/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
c
!metrics/auc/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
p
metrics/auc/SumSummetrics/auc/mul!metrics/auc/Sum/reduction_indices*
T0*
_output_shapes	
:Ш
Є
metrics/auc/AssignAdd	AssignAddmetrics/auc/true_positivesmetrics/auc/Sum*
T0*-
_class#
!loc:@metrics/auc/true_positives*
_output_shapes	
:Ш
Ќ
-metrics/auc/false_negatives/Initializer/zerosConst*.
_class$
" loc:@metrics/auc/false_negatives*
_output_shapes	
:Ш*
dtype0*
valueBШ*    

metrics/auc/false_negatives
VariableV2*.
_class$
" loc:@metrics/auc/false_negatives*
_output_shapes	
:Ш*
dtype0*
shape:Ш
Ю
"metrics/auc/false_negatives/AssignAssignmetrics/auc/false_negatives-metrics/auc/false_negatives/Initializer/zeros*
T0*.
_class$
" loc:@metrics/auc/false_negatives*
_output_shapes	
:Ш

 metrics/auc/false_negatives/readIdentitymetrics/auc/false_negatives*
T0*.
_class$
" loc:@metrics/auc/false_negatives*
_output_shapes	
:Ш
|
metrics/auc/LogicalAnd_1
LogicalAndmetrics/auc/Tile_2metrics/auc/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ
v
metrics/auc/Cast_4Castmetrics/auc/LogicalAnd_1*

DstT0*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ
s
metrics/auc/mul_1Mulmetrics/auc/Cast_4metrics/auc/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
e
#metrics/auc/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
v
metrics/auc/Sum_1Summetrics/auc/mul_1#metrics/auc/Sum_1/reduction_indices*
T0*
_output_shapes	
:Ш
Њ
metrics/auc/AssignAdd_1	AssignAddmetrics/auc/false_negativesmetrics/auc/Sum_1*
T0*.
_class$
" loc:@metrics/auc/false_negatives*
_output_shapes	
:Ш
Њ
,metrics/auc/true_negatives/Initializer/zerosConst*-
_class#
!loc:@metrics/auc/true_negatives*
_output_shapes	
:Ш*
dtype0*
valueBШ*    

metrics/auc/true_negatives
VariableV2*-
_class#
!loc:@metrics/auc/true_negatives*
_output_shapes	
:Ш*
dtype0*
shape:Ш
Ъ
!metrics/auc/true_negatives/AssignAssignmetrics/auc/true_negatives,metrics/auc/true_negatives/Initializer/zeros*
T0*-
_class#
!loc:@metrics/auc/true_negatives*
_output_shapes	
:Ш

metrics/auc/true_negatives/readIdentitymetrics/auc/true_negatives*
T0*-
_class#
!loc:@metrics/auc/true_negatives*
_output_shapes	
:Ш

metrics/auc/LogicalAnd_2
LogicalAndmetrics/auc/LogicalNot_1metrics/auc/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ
v
metrics/auc/Cast_5Castmetrics/auc/LogicalAnd_2*

DstT0*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ
s
metrics/auc/mul_2Mulmetrics/auc/Cast_5metrics/auc/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
e
#metrics/auc/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
v
metrics/auc/Sum_2Summetrics/auc/mul_2#metrics/auc/Sum_2/reduction_indices*
T0*
_output_shapes	
:Ш
Ј
metrics/auc/AssignAdd_2	AssignAddmetrics/auc/true_negativesmetrics/auc/Sum_2*
T0*-
_class#
!loc:@metrics/auc/true_negatives*
_output_shapes	
:Ш
Ќ
-metrics/auc/false_positives/Initializer/zerosConst*.
_class$
" loc:@metrics/auc/false_positives*
_output_shapes	
:Ш*
dtype0*
valueBШ*    

metrics/auc/false_positives
VariableV2*.
_class$
" loc:@metrics/auc/false_positives*
_output_shapes	
:Ш*
dtype0*
shape:Ш
Ю
"metrics/auc/false_positives/AssignAssignmetrics/auc/false_positives-metrics/auc/false_positives/Initializer/zeros*
T0*.
_class$
" loc:@metrics/auc/false_positives*
_output_shapes	
:Ш

 metrics/auc/false_positives/readIdentitymetrics/auc/false_positives*
T0*.
_class$
" loc:@metrics/auc/false_positives*
_output_shapes	
:Ш

metrics/auc/LogicalAnd_3
LogicalAndmetrics/auc/LogicalNot_1metrics/auc/Greater*(
_output_shapes
:Шџџџџџџџџџ
v
metrics/auc/Cast_6Castmetrics/auc/LogicalAnd_3*

DstT0*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ
s
metrics/auc/mul_3Mulmetrics/auc/Cast_6metrics/auc/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
e
#metrics/auc/Sum_3/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
v
metrics/auc/Sum_3Summetrics/auc/mul_3#metrics/auc/Sum_3/reduction_indices*
T0*
_output_shapes	
:Ш
Њ
metrics/auc/AssignAdd_3	AssignAddmetrics/auc/false_positivesmetrics/auc/Sum_3*
T0*.
_class$
" loc:@metrics/auc/false_positives*
_output_shapes	
:Ш
V
metrics/auc/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
r
metrics/auc/addAddV2metrics/auc/true_positives/readmetrics/auc/add/y*
T0*
_output_shapes	
:Ш

metrics/auc/add_1AddV2metrics/auc/true_positives/read metrics/auc/false_negatives/read*
T0*
_output_shapes	
:Ш
X
metrics/auc/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
h
metrics/auc/add_2AddV2metrics/auc/add_1metrics/auc/add_2/y*
T0*
_output_shapes	
:Ш
d
metrics/auc/divRealDivmetrics/auc/addmetrics/auc/add_2*
T0*
_output_shapes	
:Ш

metrics/auc/add_3AddV2 metrics/auc/false_positives/readmetrics/auc/true_negatives/read*
T0*
_output_shapes	
:Ш
X
metrics/auc/add_4/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
h
metrics/auc/add_4AddV2metrics/auc/add_3metrics/auc/add_4/y*
T0*
_output_shapes	
:Ш
w
metrics/auc/div_1RealDiv metrics/auc/false_positives/readmetrics/auc/add_4*
T0*
_output_shapes	
:Ш
k
!metrics/auc/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
#metrics/auc/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
m
#metrics/auc/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
№
metrics/auc/strided_slice_1StridedSlicemetrics/auc/div_1!metrics/auc/strided_slice_1/stack#metrics/auc/strided_slice_1/stack_1#metrics/auc/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
k
!metrics/auc/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
m
#metrics/auc/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
m
#metrics/auc/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ю
metrics/auc/strided_slice_2StridedSlicemetrics/auc/div_1!metrics/auc/strided_slice_2/stack#metrics/auc/strided_slice_2/stack_1#metrics/auc/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
v
metrics/auc/subSubmetrics/auc/strided_slice_1metrics/auc/strided_slice_2*
T0*
_output_shapes	
:Ч
k
!metrics/auc/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
#metrics/auc/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
m
#metrics/auc/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ю
metrics/auc/strided_slice_3StridedSlicemetrics/auc/div!metrics/auc/strided_slice_3/stack#metrics/auc/strided_slice_3/stack_1#metrics/auc/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
k
!metrics/auc/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
m
#metrics/auc/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
m
#metrics/auc/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ь
metrics/auc/strided_slice_4StridedSlicemetrics/auc/div!metrics/auc/strided_slice_4/stack#metrics/auc/strided_slice_4/stack_1#metrics/auc/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
z
metrics/auc/add_5AddV2metrics/auc/strided_slice_3metrics/auc/strided_slice_4*
T0*
_output_shapes	
:Ч
Z
metrics/auc/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
n
metrics/auc/truedivRealDivmetrics/auc/add_5metrics/auc/truediv/y*
T0*
_output_shapes	
:Ч
d
metrics/auc/Mul_4Mulmetrics/auc/submetrics/auc/truediv*
T0*
_output_shapes	
:Ч
]
metrics/auc/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
a
metrics/auc/valueSummetrics/auc/Mul_4metrics/auc/Const_1*
T0*
_output_shapes
: 
X
metrics/auc/add_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
l
metrics/auc/add_6AddV2metrics/auc/AssignAddmetrics/auc/add_6/y*
T0*
_output_shapes	
:Ш
p
metrics/auc/add_7AddV2metrics/auc/AssignAddmetrics/auc/AssignAdd_1*
T0*
_output_shapes	
:Ш
X
metrics/auc/add_8/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
h
metrics/auc/add_8AddV2metrics/auc/add_7metrics/auc/add_8/y*
T0*
_output_shapes	
:Ш
h
metrics/auc/div_2RealDivmetrics/auc/add_6metrics/auc/add_8*
T0*
_output_shapes	
:Ш
r
metrics/auc/add_9AddV2metrics/auc/AssignAdd_3metrics/auc/AssignAdd_2*
T0*
_output_shapes	
:Ш
Y
metrics/auc/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
j
metrics/auc/add_10AddV2metrics/auc/add_9metrics/auc/add_10/y*
T0*
_output_shapes	
:Ш
o
metrics/auc/div_3RealDivmetrics/auc/AssignAdd_3metrics/auc/add_10*
T0*
_output_shapes	
:Ш
k
!metrics/auc/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
#metrics/auc/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
m
#metrics/auc/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
№
metrics/auc/strided_slice_5StridedSlicemetrics/auc/div_3!metrics/auc/strided_slice_5/stack#metrics/auc/strided_slice_5/stack_1#metrics/auc/strided_slice_5/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
k
!metrics/auc/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:
m
#metrics/auc/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
m
#metrics/auc/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ю
metrics/auc/strided_slice_6StridedSlicemetrics/auc/div_3!metrics/auc/strided_slice_6/stack#metrics/auc/strided_slice_6/stack_1#metrics/auc/strided_slice_6/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
x
metrics/auc/sub_1Submetrics/auc/strided_slice_5metrics/auc/strided_slice_6*
T0*
_output_shapes	
:Ч
k
!metrics/auc/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 
n
#metrics/auc/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
m
#metrics/auc/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
№
metrics/auc/strided_slice_7StridedSlicemetrics/auc/div_2!metrics/auc/strided_slice_7/stack#metrics/auc/strided_slice_7/stack_1#metrics/auc/strided_slice_7/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
k
!metrics/auc/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB:
m
#metrics/auc/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
m
#metrics/auc/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ю
metrics/auc/strided_slice_8StridedSlicemetrics/auc/div_2!metrics/auc/strided_slice_8/stack#metrics/auc/strided_slice_8/stack_1#metrics/auc/strided_slice_8/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
{
metrics/auc/add_11AddV2metrics/auc/strided_slice_7metrics/auc/strided_slice_8*
T0*
_output_shapes	
:Ч
\
metrics/auc/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
s
metrics/auc/truediv_1RealDivmetrics/auc/add_11metrics/auc/truediv_1/y*
T0*
_output_shapes	
:Ч
h
metrics/auc/Mul_5Mulmetrics/auc/sub_1metrics/auc/truediv_1*
T0*
_output_shapes	
:Ч
]
metrics/auc/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
e
metrics/auc/update_opSummetrics/auc/Mul_5metrics/auc/Const_2*
T0*
_output_shapes
: 
{
6metrics/auc_precision_recall/broadcast_weights/weightsConst*
_output_shapes
: *
dtype0*
valueB
 *  ?

Qmetrics/auc_precision_recall/broadcast_weights/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 

Pmetrics/auc_precision_recall/broadcast_weights/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 

Pmetrics/auc_precision_recall/broadcast_weights/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

Ometrics/auc_precision_recall/broadcast_weights/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
g
_metrics/auc_precision_recall/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
щ
>metrics/auc_precision_recall/broadcast_weights/ones_like/ShapeShapehead/predictions/logistic`^metrics/auc_precision_recall/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
х
>metrics/auc_precision_recall/broadcast_weights/ones_like/ConstConst`^metrics/auc_precision_recall/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  ?
ђ
8metrics/auc_precision_recall/broadcast_weights/ones_likeFill>metrics/auc_precision_recall/broadcast_weights/ones_like/Shape>metrics/auc_precision_recall/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
й
.metrics/auc_precision_recall/broadcast_weightsMul6metrics/auc_precision_recall/broadcast_weights/weights8metrics/auc_precision_recall/broadcast_weights/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
h
#metrics/auc_precision_recall/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *    
Р
>metrics/auc_precision_recall/assert_greater_equal/GreaterEqualGreaterEqualhead/predictions/logistic#metrics/auc_precision_recall/Cast/x*
T0*'
_output_shapes
:џџџџџџџџџ

7metrics/auc_precision_recall/assert_greater_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
Э
5metrics/auc_precision_recall/assert_greater_equal/AllAll>metrics/auc_precision_recall/assert_greater_equal/GreaterEqual7metrics/auc_precision_recall/assert_greater_equal/Const*
_output_shapes
: 

>metrics/auc_precision_recall/assert_greater_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*.
value%B# Bpredictions must be in [0, 1]
Ќ
@metrics/auc_precision_recall/assert_greater_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:
Ѓ
@metrics/auc_precision_recall/assert_greater_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*3
value*B( B"x (head/predictions/logistic:0) = 
­
@metrics/auc_precision_recall/assert_greater_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*=
value4B2 B,y (metrics/auc_precision_recall/Cast/x:0) = 
ц
Kmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/SwitchSwitch5metrics/auc_precision_recall/assert_greater_equal/All5metrics/auc_precision_recall/assert_greater_equal/All*
T0
*
_output_shapes
: : 
Щ
Mmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_tIdentityMmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Ч
Mmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_fIdentityKmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
А
Lmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_idIdentity5metrics/auc_precision_recall/assert_greater_equal/All*
T0
*
_output_shapes
: 
Ё
Imetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/NoOpNoOpN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t

Wmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependencyIdentityMmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_tJ^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/NoOp*
T0
*`
_classV
TRloc:@metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_0ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*.
value%B# Bpredictions must be in [0, 1]

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_1ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x >= y did not hold element-wise:

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_2ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*3
value*B( B"x (head/predictions/logistic:0) = 

Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_4ConstN^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*=
value4B2 B,y (metrics/auc_precision_recall/Cast/x:0) = 
Ж
Kmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/AssertAssertRmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/SwitchRmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_0Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_1Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_2Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_4Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2*
T

2
Ю
Rmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/SwitchSwitch5metrics/auc_precision_recall/assert_greater_equal/AllLmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id*
T0
*H
_class>
<:loc:@metrics/auc_precision_recall/assert_greater_equal/All*
_output_shapes
: : 
К
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logisticLmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*,
_class"
 loc:@head/predictions/logistic*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Ќ
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2Switch#metrics/auc_precision_recall/Cast/xLmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id*
T0*6
_class,
*(loc:@metrics/auc_precision_recall/Cast/x*
_output_shapes
: : 

Ymetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency_1IdentityMmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_fL^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert*
T0
*`
_classV
TRloc:@metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Г
Jmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/MergeMergeYmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency_1Wmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
j
%metrics/auc_precision_recall/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
Й
8metrics/auc_precision_recall/assert_less_equal/LessEqual	LessEqualhead/predictions/logistic%metrics/auc_precision_recall/Cast_1/x*
T0*'
_output_shapes
:џџџџџџџџџ

4metrics/auc_precision_recall/assert_less_equal/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
С
2metrics/auc_precision_recall/assert_less_equal/AllAll8metrics/auc_precision_recall/assert_less_equal/LessEqual4metrics/auc_precision_recall/assert_less_equal/Const*
_output_shapes
: 

;metrics/auc_precision_recall/assert_less_equal/Assert/ConstConst*
_output_shapes
: *
dtype0*.
value%B# Bpredictions must be in [0, 1]
Љ
=metrics/auc_precision_recall/assert_less_equal/Assert/Const_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
 
=metrics/auc_precision_recall/assert_less_equal/Assert/Const_2Const*
_output_shapes
: *
dtype0*3
value*B( B"x (head/predictions/logistic:0) = 
Ќ
=metrics/auc_precision_recall/assert_less_equal/Assert/Const_3Const*
_output_shapes
: *
dtype0*?
value6B4 B.y (metrics/auc_precision_recall/Cast_1/x:0) = 
н
Hmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/SwitchSwitch2metrics/auc_precision_recall/assert_less_equal/All2metrics/auc_precision_recall/assert_less_equal/All*
T0
*
_output_shapes
: : 
У
Jmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_tIdentityJmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
С
Jmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_fIdentityHmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
Њ
Imetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_idIdentity2metrics/auc_precision_recall/assert_less_equal/All*
T0
*
_output_shapes
: 

Fmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/NoOpNoOpK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t
ѕ
Tmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityJmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_tG^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/NoOp*
T0
*]
_classS
QOloc:@metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
њ
Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_0ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*.
value%B# Bpredictions must be in [0, 1]

Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_1ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*<
value3B1 B+Condition x <= y did not hold element-wise:
џ
Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_2ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*3
value*B( B"x (head/predictions/logistic:0) = 

Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_4ConstK^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
dtype0*?
value6B4 B.y (metrics/auc_precision_recall/Cast_1/x:0) = 

Hmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/AssertAssertOmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/SwitchOmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_0Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_1Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_2Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_4Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2*
T

2
Т
Ometrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch2metrics/auc_precision_recall/assert_less_equal/AllImetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id*
T0
*E
_class;
97loc:@metrics/auc_precision_recall/assert_less_equal/All*
_output_shapes
: : 
Д
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switchhead/predictions/logisticImetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id*
T0*,
_class"
 loc:@head/predictions/logistic*:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ
Њ
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2Switch%metrics/auc_precision_recall/Cast_1/xImetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id*
T0*8
_class.
,*loc:@metrics/auc_precision_recall/Cast_1/x*
_output_shapes
: : 
љ
Vmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityJmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_fI^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert*
T0
*]
_classS
QOloc:@metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Њ
Gmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/MergeMergeVmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency_1Tmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 

#metrics/auc_precision_recall/Cast_2Casthead/assert_range/IdentityK^metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/MergeH^metrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Merge*

DstT0
*

SrcT0*'
_output_shapes
:џџџџџџџџџ
{
*metrics/auc_precision_recall/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
Ј
$metrics/auc_precision_recall/ReshapeReshapehead/predictions/logistic*metrics/auc_precision_recall/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ
}
,metrics/auc_precision_recall/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ
Ж
&metrics/auc_precision_recall/Reshape_1Reshape#metrics/auc_precision_recall/Cast_2,metrics/auc_precision_recall/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
v
"metrics/auc_precision_recall/ShapeShape$metrics/auc_precision_recall/Reshape*
T0*
_output_shapes
:
z
0metrics/auc_precision_recall/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
|
2metrics/auc_precision_recall/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
|
2metrics/auc_precision_recall/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
О
*metrics/auc_precision_recall/strided_sliceStridedSlice"metrics/auc_precision_recall/Shape0metrics/auc_precision_recall/strided_slice/stack2metrics/auc_precision_recall/strided_slice/stack_12metrics/auc_precision_recall/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

"metrics/auc_precision_recall/ConstConst*
_output_shapes	
:Ш*
dtype0*Й
valueЏBЌШ" ПжГЯЉЄ;ЯЉ$<Зўv<ЯЉЄ<CдЭ<Зўі<=ЯЉ$=	?9=CдM=}ib=Зўv=јЩ==2_=ЯЉЄ=lєЎ=	?Й=ІУ=CдЭ=ри=}iт=Дь=Зўі=ЊЄ >јЩ>Gя
>>ф9>2_>>ЯЉ$>Я)>lє.>Л4>	?9>Wd>>ІC>єЎH>CдM>љR>рX>.D]>}ib>Ыg>Дl>hйq>Зўv>$|>ЊЄ>Q7>јЩ> \>Gя>ю>><Ї>ф9>Ь>2_>йё>>(Ђ>ЯЉЄ>v<Ї>ЯЉ>ХaЌ>lєЎ>Б>ЛД>bЌЖ>	?Й>АбЛ>WdО>џіР>ІУ>MЦ>єЎШ>AЫ>CдЭ>ъfа>љв>9е>ри>Бк>.Dн>жжп>}iт>$ќф>Ыч>r!ъ>Дь>СFя>hйё>lє>Зўі>^љ>$ќ>ЌЖў>ЊЄ ?§э?Q7?Ѕ?јЩ?L? \?ѓЅ	?Gя
?8?ю?BЫ??щ]?<Ї?№?ф9?7?Ь?п?2_?Ј?йё?-;??дЭ ?("?{`#?ЯЉ$?#ѓ%?v<'?Ъ(?Я)?q+?Хa,?Ћ-?lє.?Р=0?1?gа2?Л4?c5?bЌ6?Еѕ7?	?9?]:?Аб;?=?Wd>?Ћ­??џі@?R@B?ІC?њвD?MF?ЁeG?єЎH?HјI?AK?яL?CдM?O?ъfP?>АQ?љR?хBT?9U?еV?рX?3hY?БZ?лњ[?.D]?^?жж_?) a?}ib?аВc?$ќd?xEf?Ыg?иh?r!j?Цjk?Дl?m§m?СFo?p?hйq?М"s?lt?cЕu?Зўv?
Hx?^y?Вкz?$|?Ym}?ЌЖ~? ?
u
+metrics/auc_precision_recall/ExpandDims/dimConst*
_output_shapes
:*
dtype0*
valueB:
А
'metrics/auc_precision_recall/ExpandDims
ExpandDims"metrics/auc_precision_recall/Const+metrics/auc_precision_recall/ExpandDims/dim*
T0*
_output_shapes
:	Ш
f
$metrics/auc_precision_recall/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
Њ
"metrics/auc_precision_recall/stackPack$metrics/auc_precision_recall/stack/0*metrics/auc_precision_recall/strided_slice*
N*
T0*
_output_shapes
:
Љ
!metrics/auc_precision_recall/TileTile'metrics/auc_precision_recall/ExpandDims"metrics/auc_precision_recall/stack*
T0*(
_output_shapes
:Шџџџџџџџџџ
|
+metrics/auc_precision_recall/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       
И
&metrics/auc_precision_recall/transpose	Transpose$metrics/auc_precision_recall/Reshape+metrics/auc_precision_recall/transpose/perm*
T0*'
_output_shapes
:џџџџџџџџџ
~
-metrics/auc_precision_recall/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"Ш      
Е
#metrics/auc_precision_recall/Tile_1Tile&metrics/auc_precision_recall/transpose-metrics/auc_precision_recall/Tile_1/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
Њ
$metrics/auc_precision_recall/GreaterGreater#metrics/auc_precision_recall/Tile_1!metrics/auc_precision_recall/Tile*
T0*(
_output_shapes
:Шџџџџџџџџџ

'metrics/auc_precision_recall/LogicalNot
LogicalNot$metrics/auc_precision_recall/Greater*(
_output_shapes
:Шџџџџџџџџџ
~
-metrics/auc_precision_recall/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"Ш      
Е
#metrics/auc_precision_recall/Tile_2Tile&metrics/auc_precision_recall/Reshape_1-metrics/auc_precision_recall/Tile_2/multiples*
T0
*(
_output_shapes
:Шџџџџџџџџџ

)metrics/auc_precision_recall/LogicalNot_1
LogicalNot#metrics/auc_precision_recall/Tile_2*(
_output_shapes
:Шџџџџџџџџџ
Б
Smetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shapeShape.metrics/auc_precision_recall/broadcast_weights*
T0*
_output_shapes
:

Rmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B :

Rmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shapeShapehead/predictions/logistic*
T0*
_output_shapes
:

Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :

Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar/xConst*
_output_shapes
: *
dtype0*
value	B : 
 
Ometrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalarEqualQmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar/xRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
Њ
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/SwitchSwitchOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalarOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
щ
]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_tIdentity]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
ч
]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_fIdentity[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
к
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_idIdentityOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 

]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1SwitchOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0
*b
_classX
VTloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Б
{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
Ч
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchQmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*d
_classZ
XVloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank*
_output_shapes
: : 
Ы
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank*
_output_shapes
: : 

umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitch{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitywmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityumetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
 
vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentity{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
д
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ы
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:
р
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
М
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchvmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::
л
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
:*
dtype0*
valueB"      
Ь
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B :
п
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapemetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*
_output_shapes

:
Ш
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B :
ь
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likemetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
T0*
_output_shapes

:
ж
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
ё
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
ф
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchSmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id*
T0*f
_class\
ZXloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
С
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchvmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*f
_class\
ZXloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
Ќ
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ:*
set_operationa-b
з
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizemetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
_output_shapes
: 
О
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstx^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
dtype0*
value	B : 
Р
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
­
wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switch{metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankvmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_class
loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
Ѓ
tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergewmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
T0
*
_output_shapes
: : 
ц
Zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeMergetmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
T0
*
_output_shapes
: : 
Г
Kmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/ConstConst*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_1Const*
_output_shapes
: *
dtype0*
valueB Bweights.shape=
О
Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_2Const*
_output_shapes
: *
dtype0*A
value8B6 B0metrics/auc_precision_recall/broadcast_weights:0

Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_3Const*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=
Љ
Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_4Const*
_output_shapes
: *
dtype0*,
value#B! Bhead/predictions/logistic:0

Mmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/Const_5Const*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
Н
Xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/SwitchSwitchZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
у
Zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tIdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
с
Zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fIdentityXmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
т
Ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_idIdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Л
Vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOpNoOp[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t
Е
dmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependencyIdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_tW^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/NoOp*
T0
*m
_classc
a_loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
Є
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*8
value/B- B'weights can not be broadcast to values.

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB Bweights.shape=
­
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*A
value8B6 B0metrics/auc_precision_recall/broadcast_weights:0

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB Bvalues.shape=

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*,
value#B! Bhead/predictions/logistic:0

_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7Const[^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
dtype0*
valueB B
is_scalar=
Ц
Xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/AssertAssert_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	

В
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/SwitchSwitchZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/MergeYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*m
_classc
a_loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
Ў
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchSmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shapeYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*f
_class\
ZXloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape* 
_output_shapes
::
Ќ
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchRmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shapeYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0*e
_class[
YWloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape* 
_output_shapes
::

ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchOmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalarYmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id*
T0
*b
_classX
VTloc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar*
_output_shapes
: : 
Й
fmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1IdentityZmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_fY^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert*
T0
*m
_classc
a_loc:@metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
к
Wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/MergeMergefmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1dmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 
у
@metrics/auc_precision_recall/broadcast_weights_1/ones_like/ShapeShapehead/predictions/logisticX^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
п
@metrics/auc_precision_recall/broadcast_weights_1/ones_like/ConstConstX^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Merge*
_output_shapes
: *
dtype0*
valueB
 *  ?
ј
:metrics/auc_precision_recall/broadcast_weights_1/ones_likeFill@metrics/auc_precision_recall/broadcast_weights_1/ones_like/Shape@metrics/auc_precision_recall/broadcast_weights_1/ones_like/Const*
T0*'
_output_shapes
:џџџџџџџџџ
е
0metrics/auc_precision_recall/broadcast_weights_1Mul.metrics/auc_precision_recall/broadcast_weights:metrics/auc_precision_recall/broadcast_weights_1/ones_like*
T0*'
_output_shapes
:џџџџџџџџџ
}
,metrics/auc_precision_recall/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   џџџџ
У
&metrics/auc_precision_recall/Reshape_2Reshape0metrics/auc_precision_recall/broadcast_weights_1,metrics/auc_precision_recall/Reshape_2/shape*
T0*'
_output_shapes
:џџџџџџџџџ
~
-metrics/auc_precision_recall/Tile_3/multiplesConst*
_output_shapes
:*
dtype0*
valueB"Ш      
Е
#metrics/auc_precision_recall/Tile_3Tile&metrics/auc_precision_recall/Reshape_2-metrics/auc_precision_recall/Tile_3/multiples*
T0*(
_output_shapes
:Шџџџџџџџџџ
Ь
=metrics/auc_precision_recall/true_positives/Initializer/zerosConst*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
Е
+metrics/auc_precision_recall/true_positives
VariableV2*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
_output_shapes	
:Ш*
dtype0*
shape:Ш

2metrics/auc_precision_recall/true_positives/AssignAssign+metrics/auc_precision_recall/true_positives=metrics/auc_precision_recall/true_positives/Initializer/zeros*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
_output_shapes	
:Ш
Я
0metrics/auc_precision_recall/true_positives/readIdentity+metrics/auc_precision_recall/true_positives*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
_output_shapes	
:Ш
Њ
'metrics/auc_precision_recall/LogicalAnd
LogicalAnd#metrics/auc_precision_recall/Tile_2$metrics/auc_precision_recall/Greater*(
_output_shapes
:Шџџџџџџџџџ

#metrics/auc_precision_recall/Cast_3Cast'metrics/auc_precision_recall/LogicalAnd*

DstT0*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ
Є
 metrics/auc_precision_recall/mulMul#metrics/auc_precision_recall/Cast_3#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
t
2metrics/auc_precision_recall/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Ѓ
 metrics/auc_precision_recall/SumSum metrics/auc_precision_recall/mul2metrics/auc_precision_recall/Sum/reduction_indices*
T0*
_output_shapes	
:Ш
ш
&metrics/auc_precision_recall/AssignAdd	AssignAdd+metrics/auc_precision_recall/true_positives metrics/auc_precision_recall/Sum*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_positives*
_output_shapes	
:Ш
Ю
>metrics/auc_precision_recall/false_negatives/Initializer/zerosConst*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
З
,metrics/auc_precision_recall/false_negatives
VariableV2*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш*
dtype0*
shape:Ш

3metrics/auc_precision_recall/false_negatives/AssignAssign,metrics/auc_precision_recall/false_negatives>metrics/auc_precision_recall/false_negatives/Initializer/zeros*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш
в
1metrics/auc_precision_recall/false_negatives/readIdentity,metrics/auc_precision_recall/false_negatives*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш
Џ
)metrics/auc_precision_recall/LogicalAnd_1
LogicalAnd#metrics/auc_precision_recall/Tile_2'metrics/auc_precision_recall/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ

#metrics/auc_precision_recall/Cast_4Cast)metrics/auc_precision_recall/LogicalAnd_1*

DstT0*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ
І
"metrics/auc_precision_recall/mul_1Mul#metrics/auc_precision_recall/Cast_4#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
v
4metrics/auc_precision_recall/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Љ
"metrics/auc_precision_recall/Sum_1Sum"metrics/auc_precision_recall/mul_14metrics/auc_precision_recall/Sum_1/reduction_indices*
T0*
_output_shapes	
:Ш
ю
(metrics/auc_precision_recall/AssignAdd_1	AssignAdd,metrics/auc_precision_recall/false_negatives"metrics/auc_precision_recall/Sum_1*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_negatives*
_output_shapes	
:Ш
Ь
=metrics/auc_precision_recall/true_negatives/Initializer/zerosConst*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
Е
+metrics/auc_precision_recall/true_negatives
VariableV2*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
_output_shapes	
:Ш*
dtype0*
shape:Ш

2metrics/auc_precision_recall/true_negatives/AssignAssign+metrics/auc_precision_recall/true_negatives=metrics/auc_precision_recall/true_negatives/Initializer/zeros*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
_output_shapes	
:Ш
Я
0metrics/auc_precision_recall/true_negatives/readIdentity+metrics/auc_precision_recall/true_negatives*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
_output_shapes	
:Ш
Е
)metrics/auc_precision_recall/LogicalAnd_2
LogicalAnd)metrics/auc_precision_recall/LogicalNot_1'metrics/auc_precision_recall/LogicalNot*(
_output_shapes
:Шџџџџџџџџџ

#metrics/auc_precision_recall/Cast_5Cast)metrics/auc_precision_recall/LogicalAnd_2*

DstT0*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ
І
"metrics/auc_precision_recall/mul_2Mul#metrics/auc_precision_recall/Cast_5#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
v
4metrics/auc_precision_recall/Sum_2/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Љ
"metrics/auc_precision_recall/Sum_2Sum"metrics/auc_precision_recall/mul_24metrics/auc_precision_recall/Sum_2/reduction_indices*
T0*
_output_shapes	
:Ш
ь
(metrics/auc_precision_recall/AssignAdd_2	AssignAdd+metrics/auc_precision_recall/true_negatives"metrics/auc_precision_recall/Sum_2*
T0*>
_class4
20loc:@metrics/auc_precision_recall/true_negatives*
_output_shapes	
:Ш
Ю
>metrics/auc_precision_recall/false_positives/Initializer/zerosConst*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
_output_shapes	
:Ш*
dtype0*
valueBШ*    
З
,metrics/auc_precision_recall/false_positives
VariableV2*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
_output_shapes	
:Ш*
dtype0*
shape:Ш

3metrics/auc_precision_recall/false_positives/AssignAssign,metrics/auc_precision_recall/false_positives>metrics/auc_precision_recall/false_positives/Initializer/zeros*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
_output_shapes	
:Ш
в
1metrics/auc_precision_recall/false_positives/readIdentity,metrics/auc_precision_recall/false_positives*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
_output_shapes	
:Ш
В
)metrics/auc_precision_recall/LogicalAnd_3
LogicalAnd)metrics/auc_precision_recall/LogicalNot_1$metrics/auc_precision_recall/Greater*(
_output_shapes
:Шџџџџџџџџџ

#metrics/auc_precision_recall/Cast_6Cast)metrics/auc_precision_recall/LogicalAnd_3*

DstT0*

SrcT0
*(
_output_shapes
:Шџџџџџџџџџ
І
"metrics/auc_precision_recall/mul_3Mul#metrics/auc_precision_recall/Cast_6#metrics/auc_precision_recall/Tile_3*
T0*(
_output_shapes
:Шџџџџџџџџџ
v
4metrics/auc_precision_recall/Sum_3/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
Љ
"metrics/auc_precision_recall/Sum_3Sum"metrics/auc_precision_recall/mul_34metrics/auc_precision_recall/Sum_3/reduction_indices*
T0*
_output_shapes	
:Ш
ю
(metrics/auc_precision_recall/AssignAdd_3	AssignAdd,metrics/auc_precision_recall/false_positives"metrics/auc_precision_recall/Sum_3*
T0*?
_class5
31loc:@metrics/auc_precision_recall/false_positives*
_output_shapes	
:Ш
g
"metrics/auc_precision_recall/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
Ѕ
 metrics/auc_precision_recall/addAddV20metrics/auc_precision_recall/true_positives/read"metrics/auc_precision_recall/add/y*
T0*
_output_shapes	
:Ш
Ж
"metrics/auc_precision_recall/add_1AddV20metrics/auc_precision_recall/true_positives/read1metrics/auc_precision_recall/false_negatives/read*
T0*
_output_shapes	
:Ш
i
$metrics/auc_precision_recall/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75

"metrics/auc_precision_recall/add_2AddV2"metrics/auc_precision_recall/add_1$metrics/auc_precision_recall/add_2/y*
T0*
_output_shapes	
:Ш

 metrics/auc_precision_recall/divRealDiv metrics/auc_precision_recall/add"metrics/auc_precision_recall/add_2*
T0*
_output_shapes	
:Ш
i
$metrics/auc_precision_recall/add_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
Љ
"metrics/auc_precision_recall/add_3AddV20metrics/auc_precision_recall/true_positives/read$metrics/auc_precision_recall/add_3/y*
T0*
_output_shapes	
:Ш
Ж
"metrics/auc_precision_recall/add_4AddV20metrics/auc_precision_recall/true_positives/read1metrics/auc_precision_recall/false_positives/read*
T0*
_output_shapes	
:Ш
i
$metrics/auc_precision_recall/add_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75

"metrics/auc_precision_recall/add_5AddV2"metrics/auc_precision_recall/add_4$metrics/auc_precision_recall/add_5/y*
T0*
_output_shapes	
:Ш

"metrics/auc_precision_recall/div_1RealDiv"metrics/auc_precision_recall/add_3"metrics/auc_precision_recall/add_5*
T0*
_output_shapes	
:Ш
|
2metrics/auc_precision_recall/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 

4metrics/auc_precision_recall/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
~
4metrics/auc_precision_recall/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
У
,metrics/auc_precision_recall/strided_slice_1StridedSlice metrics/auc_precision_recall/div2metrics/auc_precision_recall/strided_slice_1/stack4metrics/auc_precision_recall/strided_slice_1/stack_14metrics/auc_precision_recall/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
|
2metrics/auc_precision_recall/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
~
4metrics/auc_precision_recall/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
~
4metrics/auc_precision_recall/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
С
,metrics/auc_precision_recall/strided_slice_2StridedSlice metrics/auc_precision_recall/div2metrics/auc_precision_recall/strided_slice_2/stack4metrics/auc_precision_recall/strided_slice_2/stack_14metrics/auc_precision_recall/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
Љ
 metrics/auc_precision_recall/subSub,metrics/auc_precision_recall/strided_slice_1,metrics/auc_precision_recall/strided_slice_2*
T0*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 

4metrics/auc_precision_recall/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
~
4metrics/auc_precision_recall/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Х
,metrics/auc_precision_recall/strided_slice_3StridedSlice"metrics/auc_precision_recall/div_12metrics/auc_precision_recall/strided_slice_3/stack4metrics/auc_precision_recall/strided_slice_3/stack_14metrics/auc_precision_recall/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
|
2metrics/auc_precision_recall/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:
~
4metrics/auc_precision_recall/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
~
4metrics/auc_precision_recall/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
У
,metrics/auc_precision_recall/strided_slice_4StridedSlice"metrics/auc_precision_recall/div_12metrics/auc_precision_recall/strided_slice_4/stack4metrics/auc_precision_recall/strided_slice_4/stack_14metrics/auc_precision_recall/strided_slice_4/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
­
"metrics/auc_precision_recall/add_6AddV2,metrics/auc_precision_recall/strided_slice_3,metrics/auc_precision_recall/strided_slice_4*
T0*
_output_shapes	
:Ч
k
&metrics/auc_precision_recall/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
Ё
$metrics/auc_precision_recall/truedivRealDiv"metrics/auc_precision_recall/add_6&metrics/auc_precision_recall/truediv/y*
T0*
_output_shapes	
:Ч

"metrics/auc_precision_recall/Mul_4Mul metrics/auc_precision_recall/sub$metrics/auc_precision_recall/truediv*
T0*
_output_shapes	
:Ч
n
$metrics/auc_precision_recall/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 

"metrics/auc_precision_recall/valueSum"metrics/auc_precision_recall/Mul_4$metrics/auc_precision_recall/Const_1*
T0*
_output_shapes
: 
i
$metrics/auc_precision_recall/add_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75

"metrics/auc_precision_recall/add_7AddV2&metrics/auc_precision_recall/AssignAdd$metrics/auc_precision_recall/add_7/y*
T0*
_output_shapes	
:Ш
Ѓ
"metrics/auc_precision_recall/add_8AddV2&metrics/auc_precision_recall/AssignAdd(metrics/auc_precision_recall/AssignAdd_1*
T0*
_output_shapes	
:Ш
i
$metrics/auc_precision_recall/add_9/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75

"metrics/auc_precision_recall/add_9AddV2"metrics/auc_precision_recall/add_8$metrics/auc_precision_recall/add_9/y*
T0*
_output_shapes	
:Ш

"metrics/auc_precision_recall/div_2RealDiv"metrics/auc_precision_recall/add_7"metrics/auc_precision_recall/add_9*
T0*
_output_shapes	
:Ш
j
%metrics/auc_precision_recall/add_10/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75
Ё
#metrics/auc_precision_recall/add_10AddV2&metrics/auc_precision_recall/AssignAdd%metrics/auc_precision_recall/add_10/y*
T0*
_output_shapes	
:Ш
Є
#metrics/auc_precision_recall/add_11AddV2&metrics/auc_precision_recall/AssignAdd(metrics/auc_precision_recall/AssignAdd_3*
T0*
_output_shapes	
:Ш
j
%metrics/auc_precision_recall/add_12/yConst*
_output_shapes
: *
dtype0*
valueB
 *Н75

#metrics/auc_precision_recall/add_12AddV2#metrics/auc_precision_recall/add_11%metrics/auc_precision_recall/add_12/y*
T0*
_output_shapes	
:Ш

"metrics/auc_precision_recall/div_3RealDiv#metrics/auc_precision_recall/add_10#metrics/auc_precision_recall/add_12*
T0*
_output_shapes	
:Ш
|
2metrics/auc_precision_recall/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: 

4metrics/auc_precision_recall/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
~
4metrics/auc_precision_recall/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Х
,metrics/auc_precision_recall/strided_slice_5StridedSlice"metrics/auc_precision_recall/div_22metrics/auc_precision_recall/strided_slice_5/stack4metrics/auc_precision_recall/strided_slice_5/stack_14metrics/auc_precision_recall/strided_slice_5/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
|
2metrics/auc_precision_recall/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:
~
4metrics/auc_precision_recall/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
~
4metrics/auc_precision_recall/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
У
,metrics/auc_precision_recall/strided_slice_6StridedSlice"metrics/auc_precision_recall/div_22metrics/auc_precision_recall/strided_slice_6/stack4metrics/auc_precision_recall/strided_slice_6/stack_14metrics/auc_precision_recall/strided_slice_6/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
Ћ
"metrics/auc_precision_recall/sub_1Sub,metrics/auc_precision_recall/strided_slice_5,metrics/auc_precision_recall/strided_slice_6*
T0*
_output_shapes	
:Ч
|
2metrics/auc_precision_recall/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 

4metrics/auc_precision_recall/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ч
~
4metrics/auc_precision_recall/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Х
,metrics/auc_precision_recall/strided_slice_7StridedSlice"metrics/auc_precision_recall/div_32metrics/auc_precision_recall/strided_slice_7/stack4metrics/auc_precision_recall/strided_slice_7/stack_14metrics/auc_precision_recall/strided_slice_7/stack_2*
Index0*
T0*
_output_shapes	
:Ч*

begin_mask
|
2metrics/auc_precision_recall/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB:
~
4metrics/auc_precision_recall/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
~
4metrics/auc_precision_recall/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
У
,metrics/auc_precision_recall/strided_slice_8StridedSlice"metrics/auc_precision_recall/div_32metrics/auc_precision_recall/strided_slice_8/stack4metrics/auc_precision_recall/strided_slice_8/stack_14metrics/auc_precision_recall/strided_slice_8/stack_2*
Index0*
T0*
_output_shapes	
:Ч*
end_mask
Ў
#metrics/auc_precision_recall/add_13AddV2,metrics/auc_precision_recall/strided_slice_7,metrics/auc_precision_recall/strided_slice_8*
T0*
_output_shapes	
:Ч
m
(metrics/auc_precision_recall/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
І
&metrics/auc_precision_recall/truediv_1RealDiv#metrics/auc_precision_recall/add_13(metrics/auc_precision_recall/truediv_1/y*
T0*
_output_shapes	
:Ч

"metrics/auc_precision_recall/Mul_5Mul"metrics/auc_precision_recall/sub_1&metrics/auc_precision_recall/truediv_1*
T0*
_output_shapes	
:Ч
n
$metrics/auc_precision_recall/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 

&metrics/auc_precision_recall/update_opSum"metrics/auc_precision_recall/Mul_5$metrics/auc_precision_recall/Const_2*
T0*
_output_shapes
: 
Ъ
initNoOp^metrics/accuracy/count/Assign^metrics/accuracy/total/Assign#^metrics/auc/false_negatives/Assign#^metrics/auc/false_positives/Assign"^metrics/auc/true_negatives/Assign"^metrics/auc/true_positives/Assign4^metrics/auc_precision_recall/false_negatives/Assign4^metrics/auc_precision_recall/false_positives/Assign3^metrics/auc_precision_recall/true_negatives/Assign3^metrics/auc_precision_recall/true_positives/Assign"^metrics/average_loss/count/Assign"^metrics/average_loss/total/Assign ^metrics/label/mean/count/Assign ^metrics/label/mean/total/Assign/^metrics/precision/false_positives/count/Assign.^metrics/precision/true_positives/count/Assign%^metrics/prediction/mean/count/Assign%^metrics/prediction/mean/total/Assign,^metrics/recall/false_negatives/count/Assign+^metrics/recall/true_positives/count/Assign
ё
init_all_tablesNoOpj^transform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2l^transform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
r
save/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0*
_output_shapes
:d*
dtype0
X
save/IdentityIdentitysave/Read/ReadVariableOp*
T0*
_output_shapes
:d
^
save/Identity_1Identitysave/Identity"/device:CPU:0*
T0*
_output_shapes
:d
z
save/Read_1/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0*
_output_shapes

:d*
dtype0
`
save/Identity_2Identitysave/Read_1/ReadVariableOp*
T0*
_output_shapes

:d
d
save/Identity_3Identitysave/Identity_2"/device:CPU:0*
T0*
_output_shapes

:d
t
save/Read_2/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0*
_output_shapes
:F*
dtype0
\
save/Identity_4Identitysave/Read_2/ReadVariableOp*
T0*
_output_shapes
:F
`
save/Identity_5Identitysave/Identity_4"/device:CPU:0*
T0*
_output_shapes
:F
z
save/Read_3/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0*
_output_shapes

:dF*
dtype0
`
save/Identity_6Identitysave/Read_3/ReadVariableOp*
T0*
_output_shapes

:dF
d
save/Identity_7Identitysave/Identity_6"/device:CPU:0*
T0*
_output_shapes

:dF
t
save/Read_4/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0*
_output_shapes
:0*
dtype0
\
save/Identity_8Identitysave/Read_4/ReadVariableOp*
T0*
_output_shapes
:0
`
save/Identity_9Identitysave/Identity_8"/device:CPU:0*
T0*
_output_shapes
:0
z
save/Read_5/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0*
_output_shapes

:F0*
dtype0
a
save/Identity_10Identitysave/Read_5/ReadVariableOp*
T0*
_output_shapes

:F0
f
save/Identity_11Identitysave/Identity_10"/device:CPU:0*
T0*
_output_shapes

:F0
t
save/Read_6/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0*
_output_shapes
:"*
dtype0
]
save/Identity_12Identitysave/Read_6/ReadVariableOp*
T0*
_output_shapes
:"
b
save/Identity_13Identitysave/Identity_12"/device:CPU:0*
T0*
_output_shapes
:"
z
save/Read_7/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0*
_output_shapes

:0"*
dtype0
a
save/Identity_14Identitysave/Read_7/ReadVariableOp*
T0*
_output_shapes

:0"
f
save/Identity_15Identitysave/Identity_14"/device:CPU:0*
T0*
_output_shapes

:0"
m
save/Read_8/ReadVariableOpReadVariableOpdnn/logits/bias/part_0*
_output_shapes
:*
dtype0
]
save/Identity_16Identitysave/Read_8/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_17Identitysave/Identity_16"/device:CPU:0*
T0*
_output_shapes
:
s
save/Read_9/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0*
_output_shapes

:"*
dtype0
a
save/Identity_18Identitysave/Read_9/ReadVariableOp*
T0*
_output_shapes

:"
f
save/Identity_19Identitysave/Identity_18"/device:CPU:0*
T0*
_output_shapes

:"

save/Read_10/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0*
_output_shapes
:*
dtype0
^
save/Identity_20Identitysave/Read_10/ReadVariableOp*
T0*
_output_shapes
:
b
save/Identity_21Identitysave/Identity_20"/device:CPU:0*
T0*
_output_shapes
:

save/Read_11/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0*
_output_shapes
:	ђ*
dtype0
c
save/Identity_22Identitysave/Read_11/ReadVariableOp*
T0*
_output_shapes
:	ђ
g
save/Identity_23Identitysave/Identity_22"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/Read_12/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
b
save/Identity_24Identitysave/Read_12/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_25Identitysave/Identity_24"/device:CPU:0*
T0*
_output_shapes

:


save/Read_13/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
b
save/Identity_26Identitysave/Read_13/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_27Identitysave/Identity_26"/device:CPU:0*
T0*
_output_shapes

:


save/Read_14/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0*
_output_shapes
:	ђ*
dtype0
c
save/Identity_28Identitysave/Read_14/ReadVariableOp*
T0*
_output_shapes
:	ђ
g
save/Identity_29Identitysave/Identity_28"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/Read_15/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
b
save/Identity_30Identitysave/Read_15/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_31Identitysave/Identity_30"/device:CPU:0*
T0*
_output_shapes

:


save/Read_16/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0*
_output_shapes

:
*
dtype0
b
save/Identity_32Identitysave/Read_16/ReadVariableOp*
T0*
_output_shapes

:

f
save/Identity_33Identitysave/Identity_32"/device:CPU:0*
T0*
_output_shapes

:


save/Read_17/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0*
_output_shapes

:*
dtype0
b
save/Identity_34Identitysave/Read_17/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_35Identitysave/Identity_34"/device:CPU:0*
T0*
_output_shapes

:

save/Read_18/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0*
_output_shapes

:*
dtype0
b
save/Identity_36Identitysave/Read_18/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_37Identitysave/Identity_36"/device:CPU:0*
T0*
_output_shapes

:

save/Read_19/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0*
_output_shapes

:*
dtype0
b
save/Identity_38Identitysave/Read_19/ReadVariableOp*
T0*
_output_shapes

:
f
save/Identity_39Identitysave/Identity_38"/device:CPU:0*
T0*
_output_shapes

:

save/StringJoin/inputs_1Const*
_output_shapes
: *
dtype0*<
value3B1 B+_temp_be0125692c1b44ad8cfdacc349a9ff78/part
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
{
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueBBglobal_step
t
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
m
save/ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :

save/ShardedFilename_1ShardedFilenamesave/StringJoinsave/ShardedFilename_1/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/Read_20/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias/part_0"/device:CPU:0*
_output_shapes
:d*
dtype0
m
save/Identity_40Identitysave/Read_20/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:d
b
save/Identity_41Identitysave/Identity_40"/device:CPU:0*
T0*
_output_shapes
:d

save/Read_21/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel/part_0"/device:CPU:0*
_output_shapes

:d*
dtype0
q
save/Identity_42Identitysave/Read_21/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:d
f
save/Identity_43Identitysave/Identity_42"/device:CPU:0*
T0*
_output_shapes

:d

save/Read_22/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias/part_0"/device:CPU:0*
_output_shapes
:F*
dtype0
m
save/Identity_44Identitysave/Read_22/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:F
b
save/Identity_45Identitysave/Identity_44"/device:CPU:0*
T0*
_output_shapes
:F

save/Read_23/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel/part_0"/device:CPU:0*
_output_shapes

:dF*
dtype0
q
save/Identity_46Identitysave/Read_23/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:dF
f
save/Identity_47Identitysave/Identity_46"/device:CPU:0*
T0*
_output_shapes

:dF

save/Read_24/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/bias/part_0"/device:CPU:0*
_output_shapes
:0*
dtype0
m
save/Identity_48Identitysave/Read_24/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:0
b
save/Identity_49Identitysave/Identity_48"/device:CPU:0*
T0*
_output_shapes
:0

save/Read_25/ReadVariableOpReadVariableOpdnn/hiddenlayer_2/kernel/part_0"/device:CPU:0*
_output_shapes

:F0*
dtype0
q
save/Identity_50Identitysave/Read_25/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:F0
f
save/Identity_51Identitysave/Identity_50"/device:CPU:0*
T0*
_output_shapes

:F0

save/Read_26/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/bias/part_0"/device:CPU:0*
_output_shapes
:"*
dtype0
m
save/Identity_52Identitysave/Read_26/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:"
b
save/Identity_53Identitysave/Identity_52"/device:CPU:0*
T0*
_output_shapes
:"

save/Read_27/ReadVariableOpReadVariableOpdnn/hiddenlayer_3/kernel/part_0"/device:CPU:0*
_output_shapes

:0"*
dtype0
q
save/Identity_54Identitysave/Read_27/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:0"
f
save/Identity_55Identitysave/Identity_54"/device:CPU:0*
T0*
_output_shapes

:0"
}
save/Read_28/ReadVariableOpReadVariableOpdnn/logits/bias/part_0"/device:CPU:0*
_output_shapes
:*
dtype0
m
save/Identity_56Identitysave/Read_28/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_57Identitysave/Identity_56"/device:CPU:0*
T0*
_output_shapes
:

save/Read_29/ReadVariableOpReadVariableOpdnn/logits/kernel/part_0"/device:CPU:0*
_output_shapes

:"*
dtype0
q
save/Identity_58Identitysave/Read_29/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:"
f
save/Identity_59Identitysave/Identity_58"/device:CPU:0*
T0*
_output_shapes

:"

save/Read_30/ReadVariableOpReadVariableOp'linear/linear_model/bias_weights/part_0"/device:CPU:0*
_output_shapes
:*
dtype0
m
save/Identity_60Identitysave/Read_30/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:
b
save/Identity_61Identitysave/Identity_60"/device:CPU:0*
T0*
_output_shapes
:

save/Read_31/ReadVariableOpReadVariableOp-linear/linear_model/company_xf/weights/part_0"/device:CPU:0*
_output_shapes
:	ђ*
dtype0
r
save/Identity_62Identitysave/Read_31/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	ђ
g
save/Identity_63Identitysave/Identity_62"/device:CPU:0*
T0*
_output_shapes
:	ђ
Ё
save/Read_32/ReadVariableOpReadVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0"/device:CPU:0*
_output_shapes

:
*
dtype0
q
save/Identity_64Identitysave/Read_32/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_65Identitysave/Identity_64"/device:CPU:0*
T0*
_output_shapes

:

Ђ
save/Read_33/ReadVariableOpReadVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0"/device:CPU:0*
_output_shapes

:
*
dtype0
q
save/Identity_66Identitysave/Read_33/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_67Identitysave/Identity_66"/device:CPU:0*
T0*
_output_shapes

:


save/Read_34/ReadVariableOpReadVariableOp2linear/linear_model/payment_type_xf/weights/part_0"/device:CPU:0*
_output_shapes
:	ђ*
dtype0
r
save/Identity_68Identitysave/Read_34/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes
:	ђ
g
save/Identity_69Identitysave/Identity_68"/device:CPU:0*
T0*
_output_shapes
:	ђ
 
save/Read_35/ReadVariableOpReadVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0"/device:CPU:0*
_output_shapes

:
*
dtype0
q
save/Identity_70Identitysave/Read_35/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_71Identitysave/Identity_70"/device:CPU:0*
T0*
_output_shapes

:

Ё
save/Read_36/ReadVariableOpReadVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0"/device:CPU:0*
_output_shapes

:
*
dtype0
q
save/Identity_72Identitysave/Read_36/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:

f
save/Identity_73Identitysave/Identity_72"/device:CPU:0*
T0*
_output_shapes

:


save/Read_37/ReadVariableOpReadVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_74Identitysave/Read_37/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_75Identitysave/Identity_74"/device:CPU:0*
T0*
_output_shapes

:
 
save/Read_38/ReadVariableOpReadVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_76Identitysave/Read_38/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_77Identitysave/Identity_76"/device:CPU:0*
T0*
_output_shapes

:
Ё
save/Read_39/ReadVariableOpReadVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0"/device:CPU:0*
_output_shapes

:*
dtype0
q
save/Identity_78Identitysave/Read_39/ReadVariableOp"/device:CPU:0*
T0*
_output_shapes

:
f
save/Identity_79Identitysave/Identity_78"/device:CPU:0*
T0*
_output_shapes

:
Њ
save/SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ь
valueТBПBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights

save/SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*­
valueЃB B	100 0,100B3 100 0,3:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B1 0,1B34 1 0,34:0,1B1 0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B31 1 0,31:0,1B24 1 0,24:0,1B12 1 0,12:0,1

save/SaveV2_1SaveV2save/ShardedFilename_1save/SaveV2_1/tensor_namessave/SaveV2_1/shape_and_slicessave/Identity_41save/Identity_43save/Identity_45save/Identity_47save/Identity_49save/Identity_51save/Identity_53save/Identity_55save/Identity_57save/Identity_59save/Identity_61save/Identity_63save/Identity_65save/Identity_67save/Identity_69save/Identity_71save/Identity_73save/Identity_75save/Identity_77save/Identity_79"/device:CPU:0*"
dtypes
2
Ј
save/control_dependency_1Identitysave/ShardedFilename_1^save/SaveV2_1"/device:CPU:0*
T0*)
_class
loc:@save/ShardedFilename_1*
_output_shapes
: 
д
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilenamesave/ShardedFilename_1^save/control_dependency^save/control_dependency_1"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Ј
save/Identity_80Identity
save/Const^save/MergeV2Checkpoints^save/control_dependency^save/control_dependency_1"/device:CPU:0*
T0*
_output_shapes
: 
~
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0* 
valueBBglobal_step
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
s
save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_class
loc:@global_step*
_output_shapes
: 
(
save/restore_shardNoOp^save/Assign
­
save/RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ь
valueТBПBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBdnn/hiddenlayer_2/biasBdnn/hiddenlayer_2/kernelBdnn/hiddenlayer_3/biasBdnn/hiddenlayer_3/kernelBdnn/logits/biasBdnn/logits/kernelB linear/linear_model/bias_weightsB&linear/linear_model/company_xf/weightsB/linear/linear_model/dropoff_latitude_xf/weightsB0linear/linear_model/dropoff_longitude_xf/weightsB+linear/linear_model/payment_type_xf/weightsB.linear/linear_model/pickup_latitude_xf/weightsB/linear/linear_model/pickup_longitude_xf/weightsB-linear/linear_model/trip_start_day_xf/weightsB.linear/linear_model/trip_start_hour_xf/weightsB/linear/linear_model/trip_start_month_xf/weights

!save/RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*­
valueЃB B	100 0,100B3 100 0,3:0,100B70 0,70B100 70 0,100:0,70B48 0,48B70 48 0,70:0,48B34 0,34B48 34 0,48:0,34B1 0,1B34 1 0,34:0,1B1 0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B1010 1 0,1010:0,1B10 1 0,10:0,1B10 1 0,10:0,1B31 1 0,31:0,1B24 1 0,24:0,1B12 1 0,12:0,1
щ
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices"/device:CPU:0*Ш
_output_shapesЕ
В:d:d:F:dF:0:F0:":0"::"::	ђ:
:
:	ђ:
:
:::*"
dtypes
2
b
save/Identity_81Identitysave/RestoreV2_1"/device:CPU:0*
T0*
_output_shapes
:d
v
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/bias/part_0save/Identity_81"/device:CPU:0*
dtype0
h
save/Identity_82Identitysave/RestoreV2_1:1"/device:CPU:0*
T0*
_output_shapes

:d
z
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernel/part_0save/Identity_82"/device:CPU:0*
dtype0
d
save/Identity_83Identitysave/RestoreV2_1:2"/device:CPU:0*
T0*
_output_shapes
:F
x
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/bias/part_0save/Identity_83"/device:CPU:0*
dtype0
h
save/Identity_84Identitysave/RestoreV2_1:3"/device:CPU:0*
T0*
_output_shapes

:dF
z
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernel/part_0save/Identity_84"/device:CPU:0*
dtype0
d
save/Identity_85Identitysave/RestoreV2_1:4"/device:CPU:0*
T0*
_output_shapes
:0
x
save/AssignVariableOp_4AssignVariableOpdnn/hiddenlayer_2/bias/part_0save/Identity_85"/device:CPU:0*
dtype0
h
save/Identity_86Identitysave/RestoreV2_1:5"/device:CPU:0*
T0*
_output_shapes

:F0
z
save/AssignVariableOp_5AssignVariableOpdnn/hiddenlayer_2/kernel/part_0save/Identity_86"/device:CPU:0*
dtype0
d
save/Identity_87Identitysave/RestoreV2_1:6"/device:CPU:0*
T0*
_output_shapes
:"
x
save/AssignVariableOp_6AssignVariableOpdnn/hiddenlayer_3/bias/part_0save/Identity_87"/device:CPU:0*
dtype0
h
save/Identity_88Identitysave/RestoreV2_1:7"/device:CPU:0*
T0*
_output_shapes

:0"
z
save/AssignVariableOp_7AssignVariableOpdnn/hiddenlayer_3/kernel/part_0save/Identity_88"/device:CPU:0*
dtype0
d
save/Identity_89Identitysave/RestoreV2_1:8"/device:CPU:0*
T0*
_output_shapes
:
q
save/AssignVariableOp_8AssignVariableOpdnn/logits/bias/part_0save/Identity_89"/device:CPU:0*
dtype0
h
save/Identity_90Identitysave/RestoreV2_1:9"/device:CPU:0*
T0*
_output_shapes

:"
s
save/AssignVariableOp_9AssignVariableOpdnn/logits/kernel/part_0save/Identity_90"/device:CPU:0*
dtype0
e
save/Identity_91Identitysave/RestoreV2_1:10"/device:CPU:0*
T0*
_output_shapes
:

save/AssignVariableOp_10AssignVariableOp'linear/linear_model/bias_weights/part_0save/Identity_91"/device:CPU:0*
dtype0
j
save/Identity_92Identitysave/RestoreV2_1:11"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/AssignVariableOp_11AssignVariableOp-linear/linear_model/company_xf/weights/part_0save/Identity_92"/device:CPU:0*
dtype0
i
save/Identity_93Identitysave/RestoreV2_1:12"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_12AssignVariableOp6linear/linear_model/dropoff_latitude_xf/weights/part_0save/Identity_93"/device:CPU:0*
dtype0
i
save/Identity_94Identitysave/RestoreV2_1:13"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_13AssignVariableOp7linear/linear_model/dropoff_longitude_xf/weights/part_0save/Identity_94"/device:CPU:0*
dtype0
j
save/Identity_95Identitysave/RestoreV2_1:14"/device:CPU:0*
T0*
_output_shapes
:	ђ

save/AssignVariableOp_14AssignVariableOp2linear/linear_model/payment_type_xf/weights/part_0save/Identity_95"/device:CPU:0*
dtype0
i
save/Identity_96Identitysave/RestoreV2_1:15"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_15AssignVariableOp5linear/linear_model/pickup_latitude_xf/weights/part_0save/Identity_96"/device:CPU:0*
dtype0
i
save/Identity_97Identitysave/RestoreV2_1:16"/device:CPU:0*
T0*
_output_shapes

:


save/AssignVariableOp_16AssignVariableOp6linear/linear_model/pickup_longitude_xf/weights/part_0save/Identity_97"/device:CPU:0*
dtype0
i
save/Identity_98Identitysave/RestoreV2_1:17"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_17AssignVariableOp4linear/linear_model/trip_start_day_xf/weights/part_0save/Identity_98"/device:CPU:0*
dtype0
i
save/Identity_99Identitysave/RestoreV2_1:18"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_18AssignVariableOp5linear/linear_model/trip_start_hour_xf/weights/part_0save/Identity_99"/device:CPU:0*
dtype0
j
save/Identity_100Identitysave/RestoreV2_1:19"/device:CPU:0*
T0*
_output_shapes

:

save/AssignVariableOp_19AssignVariableOp6linear/linear_model/trip_start_month_xf/weights/part_0save/Identity_100"/device:CPU:0*
dtype0
Л
save/restore_shard_1NoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9"/device:CPU:0
2
save/restore_all/NoOpNoOp^save/restore_shard
E
save/restore_all/NoOp_1NoOp^save/restore_shard_1"/device:CPU:0
J
save/restore_allNoOp^save/restore_all/NoOp^save/restore_all/NoOp_1"і?
save/Const:0save/Identity_80:0save/restore_all (5 @F8")
asset_filepaths

Const:0
	Const_1:0"ќє
cond_contextъєцє
Ќ
 dnn/zero_fraction/cond/cond_text dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_t:0 *Р
dnn/hiddenlayer_0/Relu:0
dnn/zero_fraction/cond/Cast:0
+dnn/zero_fraction/cond/count_nonzero/Cast:0
,dnn/zero_fraction/cond/count_nonzero/Const:0
6dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
/dnn/zero_fraction/cond/count_nonzero/NotEqual:0
4dnn/zero_fraction/cond/count_nonzero/nonzero_count:0
,dnn/zero_fraction/cond/count_nonzero/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_t:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0R
dnn/hiddenlayer_0/Relu:06dnn/zero_fraction/cond/count_nonzero/NotEqual/Switch:1

"dnn/zero_fraction/cond/cond_text_1 dnn/zero_fraction/cond/pred_id:0!dnn/zero_fraction/cond/switch_f:0*Џ
dnn/hiddenlayer_0/Relu:0
-dnn/zero_fraction/cond/count_nonzero_1/Cast:0
.dnn/zero_fraction/cond/count_nonzero_1/Const:0
8dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
1dnn/zero_fraction/cond/count_nonzero_1/NotEqual:0
6dnn/zero_fraction/cond/count_nonzero_1/nonzero_count:0
.dnn/zero_fraction/cond/count_nonzero_1/zeros:0
 dnn/zero_fraction/cond/pred_id:0
!dnn/zero_fraction/cond/switch_f:0D
 dnn/zero_fraction/cond/pred_id:0 dnn/zero_fraction/cond/pred_id:0T
dnn/hiddenlayer_0/Relu:08dnn/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ъ
"dnn/zero_fraction_1/cond/cond_text"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_t:0 *и
dnn/hiddenlayer_1/Relu:0
dnn/zero_fraction_1/cond/Cast:0
-dnn/zero_fraction_1/cond/count_nonzero/Cast:0
.dnn/zero_fraction_1/cond/count_nonzero/Const:0
8dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_1/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_1/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_1/cond/count_nonzero/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_t:0T
dnn/hiddenlayer_1/Relu:08dnn/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0
З
$dnn/zero_fraction_1/cond/cond_text_1"dnn/zero_fraction_1/cond/pred_id:0#dnn/zero_fraction_1/cond/switch_f:0*Х
dnn/hiddenlayer_1/Relu:0
/dnn/zero_fraction_1/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_1/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_1/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_1/cond/pred_id:0
#dnn/zero_fraction_1/cond/switch_f:0V
dnn/hiddenlayer_1/Relu:0:dnn/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0H
"dnn/zero_fraction_1/cond/pred_id:0"dnn/zero_fraction_1/cond/pred_id:0
Ъ
"dnn/zero_fraction_2/cond/cond_text"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_t:0 *и
dnn/hiddenlayer_2/Relu:0
dnn/zero_fraction_2/cond/Cast:0
-dnn/zero_fraction_2/cond/count_nonzero/Cast:0
.dnn/zero_fraction_2/cond/count_nonzero/Const:0
8dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_2/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_2/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_2/cond/count_nonzero/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_t:0T
dnn/hiddenlayer_2/Relu:08dnn/zero_fraction_2/cond/count_nonzero/NotEqual/Switch:1H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0
З
$dnn/zero_fraction_2/cond/cond_text_1"dnn/zero_fraction_2/cond/pred_id:0#dnn/zero_fraction_2/cond/switch_f:0*Х
dnn/hiddenlayer_2/Relu:0
/dnn/zero_fraction_2/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_2/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_2/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_2/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_2/cond/pred_id:0
#dnn/zero_fraction_2/cond/switch_f:0H
"dnn/zero_fraction_2/cond/pred_id:0"dnn/zero_fraction_2/cond/pred_id:0V
dnn/hiddenlayer_2/Relu:0:dnn/zero_fraction_2/cond/count_nonzero_1/NotEqual/Switch:0
Ъ
"dnn/zero_fraction_3/cond/cond_text"dnn/zero_fraction_3/cond/pred_id:0#dnn/zero_fraction_3/cond/switch_t:0 *и
dnn/hiddenlayer_3/Relu:0
dnn/zero_fraction_3/cond/Cast:0
-dnn/zero_fraction_3/cond/count_nonzero/Cast:0
.dnn/zero_fraction_3/cond/count_nonzero/Const:0
8dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_3/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_3/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_3/cond/count_nonzero/zeros:0
"dnn/zero_fraction_3/cond/pred_id:0
#dnn/zero_fraction_3/cond/switch_t:0H
"dnn/zero_fraction_3/cond/pred_id:0"dnn/zero_fraction_3/cond/pred_id:0T
dnn/hiddenlayer_3/Relu:08dnn/zero_fraction_3/cond/count_nonzero/NotEqual/Switch:1
З
$dnn/zero_fraction_3/cond/cond_text_1"dnn/zero_fraction_3/cond/pred_id:0#dnn/zero_fraction_3/cond/switch_f:0*Х
dnn/hiddenlayer_3/Relu:0
/dnn/zero_fraction_3/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_3/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_3/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_3/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_3/cond/pred_id:0
#dnn/zero_fraction_3/cond/switch_f:0H
"dnn/zero_fraction_3/cond/pred_id:0"dnn/zero_fraction_3/cond/pred_id:0V
dnn/hiddenlayer_3/Relu:0:dnn/zero_fraction_3/cond/count_nonzero_1/NotEqual/Switch:0
Т
"dnn/zero_fraction_4/cond/cond_text"dnn/zero_fraction_4/cond/pred_id:0#dnn/zero_fraction_4/cond/switch_t:0 *а
dnn/logits/BiasAdd:0
dnn/zero_fraction_4/cond/Cast:0
-dnn/zero_fraction_4/cond/count_nonzero/Cast:0
.dnn/zero_fraction_4/cond/count_nonzero/Const:0
8dnn/zero_fraction_4/cond/count_nonzero/NotEqual/Switch:1
1dnn/zero_fraction_4/cond/count_nonzero/NotEqual:0
6dnn/zero_fraction_4/cond/count_nonzero/nonzero_count:0
.dnn/zero_fraction_4/cond/count_nonzero/zeros:0
"dnn/zero_fraction_4/cond/pred_id:0
#dnn/zero_fraction_4/cond/switch_t:0H
"dnn/zero_fraction_4/cond/pred_id:0"dnn/zero_fraction_4/cond/pred_id:0P
dnn/logits/BiasAdd:08dnn/zero_fraction_4/cond/count_nonzero/NotEqual/Switch:1
Џ
$dnn/zero_fraction_4/cond/cond_text_1"dnn/zero_fraction_4/cond/pred_id:0#dnn/zero_fraction_4/cond/switch_f:0*Н
dnn/logits/BiasAdd:0
/dnn/zero_fraction_4/cond/count_nonzero_1/Cast:0
0dnn/zero_fraction_4/cond/count_nonzero_1/Const:0
:dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual/Switch:0
3dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual:0
8dnn/zero_fraction_4/cond/count_nonzero_1/nonzero_count:0
0dnn/zero_fraction_4/cond/count_nonzero_1/zeros:0
"dnn/zero_fraction_4/cond/pred_id:0
#dnn/zero_fraction_4/cond/switch_f:0R
dnn/logits/BiasAdd:0:dnn/zero_fraction_4/cond/count_nonzero_1/NotEqual/Switch:0H
"dnn/zero_fraction_4/cond/pred_id:0"dnn/zero_fraction_4/cond/pred_id:0
З
4linear/zero_fraction/total_zero/zero_count/cond_text4linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_t:0 *
2linear/zero_fraction/total_zero/zero_count/Const:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_t:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0
с.
6linear/zero_fraction/total_zero/zero_count/cond_text_14linear/zero_fraction/total_zero/zero_count/pred_id:05linear/zero_fraction/total_zero/zero_count/switch_f:0*Г
/linear/linear_model/company_xf/weights/part_0:0
&linear/zero_fraction/total_size/Size:0
8linear/zero_fraction/total_zero/zero_count/Cast/Switch:0
1linear/zero_fraction/total_zero/zero_count/Cast:0
0linear/zero_fraction/total_zero/zero_count/mul:0
4linear/zero_fraction/total_zero/zero_count/pred_id:0
5linear/zero_fraction/total_zero/zero_count/switch_f:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual/y:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/LessEqual:0
Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:0
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
?linear/zero_fraction/total_zero/zero_count/zero_fraction/Size:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:0
Elinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Merge:1
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:0
Flinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Switch:1
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/Cast_1:0
Qlinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/sub:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/counts_to_fraction/truediv:0
Clinear/zero_fraction/total_zero/zero_count/zero_fraction/fraction:0b
&linear/zero_fraction/total_size/Size:08linear/zero_fraction/total_zero/zero_count/Cast/Switch:0l
4linear/zero_fraction/total_zero/zero_count/pred_id:04linear/zero_fraction/total_zero/zero_count/pred_id:0
/linear/linear_model/company_xf/weights/part_0:0Plinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp/Switch:02м

й

Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_textGlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0 *ј
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Dlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/Cast:0
Rlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Cast:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/Const:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Vlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual:0
[linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/nonzero_count:0
Slinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_t:0Њ
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:02Є

Ё

Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/cond_text_1Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0*Р
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0
Tlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Cast:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/Const:0
_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Xlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual:0
]linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/zeros:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Hlinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/switch_f:0Ќ
Ilinear/zero_fraction/total_zero/zero_count/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0Glinear/zero_fraction/total_zero/zero_count/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_1/cond_text6linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_1/Const:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_1/cond_text_16linear/zero_fraction/total_zero/zero_count_1/pred_id:07linear/zero_fraction/total_zero/zero_count_1/switch_f:0*
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_1:0
:linear/zero_fraction/total_zero/zero_count_1/Cast/Switch:0
3linear/zero_fraction/total_zero/zero_count_1/Cast:0
2linear/zero_fraction/total_zero/zero_count_1/mul:0
6linear/zero_fraction/total_zero/zero_count_1/pred_id:0
7linear/zero_fraction/total_zero/zero_count_1/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_1/zero_fraction/fraction:0f
(linear/zero_fraction/total_size/Size_1:0:linear/zero_fraction/total_zero/zero_count_1/Cast/Switch:0p
6linear/zero_fraction/total_zero/zero_count_1/pred_id:06linear/zero_fraction/total_zero/zero_count_1/pred_id:0
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_1/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_1/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_2/cond_text6linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_2/Const:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_2/cond_text_16linear/zero_fraction/total_zero/zero_count_2/pred_id:07linear/zero_fraction/total_zero/zero_count_2/switch_f:0*
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_2:0
:linear/zero_fraction/total_zero/zero_count_2/Cast/Switch:0
3linear/zero_fraction/total_zero/zero_count_2/Cast:0
2linear/zero_fraction/total_zero/zero_count_2/mul:0
6linear/zero_fraction/total_zero/zero_count_2/pred_id:0
7linear/zero_fraction/total_zero/zero_count_2/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_2/zero_fraction/fraction:0f
(linear/zero_fraction/total_size/Size_2:0:linear/zero_fraction/total_zero/zero_count_2/Cast/Switch:0p
6linear/zero_fraction/total_zero/zero_count_2/pred_id:06linear/zero_fraction/total_zero/zero_count_2/pred_id:0
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_t:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ў
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero/NotEqual/Switch:12Ф

С

Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/pred_id:0А
Klinear/zero_fraction/total_zero/zero_count_2/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_2/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ч
6linear/zero_fraction/total_zero/zero_count_3/cond_text6linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_3/Const:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_3/cond_text_16linear/zero_fraction/total_zero/zero_count_3/pred_id:07linear/zero_fraction/total_zero/zero_count_3/switch_f:0*
4linear/linear_model/payment_type_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_3:0
:linear/zero_fraction/total_zero/zero_count_3/Cast/Switch:0
3linear/zero_fraction/total_zero/zero_count_3/Cast:0
2linear/zero_fraction/total_zero/zero_count_3/mul:0
6linear/zero_fraction/total_zero/zero_count_3/pred_id:0
7linear/zero_fraction/total_zero/zero_count_3/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_3/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_3/pred_id:06linear/zero_fraction/total_zero/zero_count_3/pred_id:0f
(linear/zero_fraction/total_size/Size_3:0:linear/zero_fraction/total_zero/zero_count_3/Cast/Switch:0
4linear/linear_model/payment_type_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_3/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_3/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_4/cond_text6linear/zero_fraction/total_zero/zero_count_4/pred_id:07linear/zero_fraction/total_zero/zero_count_4/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_4/Const:0
6linear/zero_fraction/total_zero/zero_count_4/pred_id:0
7linear/zero_fraction/total_zero/zero_count_4/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_4/pred_id:06linear/zero_fraction/total_zero/zero_count_4/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_4/cond_text_16linear/zero_fraction/total_zero/zero_count_4/pred_id:07linear/zero_fraction/total_zero/zero_count_4/switch_f:0*
7linear/linear_model/pickup_latitude_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_4:0
:linear/zero_fraction/total_zero/zero_count_4/Cast/Switch:0
3linear/zero_fraction/total_zero/zero_count_4/Cast:0
2linear/zero_fraction/total_zero/zero_count_4/mul:0
6linear/zero_fraction/total_zero/zero_count_4/pred_id:0
7linear/zero_fraction/total_zero/zero_count_4/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_4/zero_fraction/fraction:0f
(linear/zero_fraction/total_size/Size_4:0:linear/zero_fraction/total_zero/zero_count_4/Cast/Switch:0
7linear/linear_model/pickup_latitude_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp/Switch:0p
6linear/zero_fraction/total_zero/zero_count_4/pred_id:06linear/zero_fraction/total_zero/zero_count_4/pred_id:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_4/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_4/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_5/cond_text6linear/zero_fraction/total_zero/zero_count_5/pred_id:07linear/zero_fraction/total_zero/zero_count_5/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_5/Const:0
6linear/zero_fraction/total_zero/zero_count_5/pred_id:0
7linear/zero_fraction/total_zero/zero_count_5/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_5/pred_id:06linear/zero_fraction/total_zero/zero_count_5/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_5/cond_text_16linear/zero_fraction/total_zero/zero_count_5/pred_id:07linear/zero_fraction/total_zero/zero_count_5/switch_f:0*
8linear/linear_model/pickup_longitude_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_5:0
:linear/zero_fraction/total_zero/zero_count_5/Cast/Switch:0
3linear/zero_fraction/total_zero/zero_count_5/Cast:0
2linear/zero_fraction/total_zero/zero_count_5/mul:0
6linear/zero_fraction/total_zero/zero_count_5/pred_id:0
7linear/zero_fraction/total_zero/zero_count_5/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_5/zero_fraction/fraction:0
8linear/linear_model/pickup_longitude_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp/Switch:0f
(linear/zero_fraction/total_size/Size_5:0:linear/zero_fraction/total_zero/zero_count_5/Cast/Switch:0p
6linear/zero_fraction/total_zero/zero_count_5/pred_id:06linear/zero_fraction/total_zero/zero_count_5/pred_id:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_t:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Ў
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero/NotEqual/Switch:12Ф

С

Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_5/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_5/zero_fraction/cond/pred_id:0
Ч
6linear/zero_fraction/total_zero/zero_count_6/cond_text6linear/zero_fraction/total_zero/zero_count_6/pred_id:07linear/zero_fraction/total_zero/zero_count_6/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_6/Const:0
6linear/zero_fraction/total_zero/zero_count_6/pred_id:0
7linear/zero_fraction/total_zero/zero_count_6/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_6/pred_id:06linear/zero_fraction/total_zero/zero_count_6/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_6/cond_text_16linear/zero_fraction/total_zero/zero_count_6/pred_id:07linear/zero_fraction/total_zero/zero_count_6/switch_f:0*
6linear/linear_model/trip_start_day_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_6:0
:linear/zero_fraction/total_zero/zero_count_6/Cast/Switch:0
3linear/zero_fraction/total_zero/zero_count_6/Cast:0
2linear/zero_fraction/total_zero/zero_count_6/mul:0
6linear/zero_fraction/total_zero/zero_count_6/pred_id:0
7linear/zero_fraction/total_zero/zero_count_6/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_6/zero_fraction/fraction:0f
(linear/zero_fraction/total_size/Size_6:0:linear/zero_fraction/total_zero/zero_count_6/Cast/Switch:0p
6linear/zero_fraction/total_zero/zero_count_6/pred_id:06linear/zero_fraction/total_zero/zero_count_6/pred_id:0
6linear/linear_model/trip_start_day_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_t:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Ў
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero/NotEqual/Switch:12Ф

С

Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/pred_id:0А
Klinear/zero_fraction/total_zero/zero_count_6/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_6/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ч
6linear/zero_fraction/total_zero/zero_count_7/cond_text6linear/zero_fraction/total_zero/zero_count_7/pred_id:07linear/zero_fraction/total_zero/zero_count_7/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_7/Const:0
6linear/zero_fraction/total_zero/zero_count_7/pred_id:0
7linear/zero_fraction/total_zero/zero_count_7/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_7/pred_id:06linear/zero_fraction/total_zero/zero_count_7/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_7/cond_text_16linear/zero_fraction/total_zero/zero_count_7/pred_id:07linear/zero_fraction/total_zero/zero_count_7/switch_f:0*
7linear/linear_model/trip_start_hour_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_7:0
:linear/zero_fraction/total_zero/zero_count_7/Cast/Switch:0
3linear/zero_fraction/total_zero/zero_count_7/Cast:0
2linear/zero_fraction/total_zero/zero_count_7/mul:0
6linear/zero_fraction/total_zero/zero_count_7/pred_id:0
7linear/zero_fraction/total_zero/zero_count_7/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_7/zero_fraction/fraction:0p
6linear/zero_fraction/total_zero/zero_count_7/pred_id:06linear/zero_fraction/total_zero/zero_count_7/pred_id:0
7linear/linear_model/trip_start_hour_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp/Switch:0f
(linear/zero_fraction/total_size/Size_7:0:linear/zero_fraction/total_zero/zero_count_7/Cast/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/switch_f:0
Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/pred_id:0А
Klinear/zero_fraction/total_zero/zero_count_7/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_7/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ч
6linear/zero_fraction/total_zero/zero_count_8/cond_text6linear/zero_fraction/total_zero/zero_count_8/pred_id:07linear/zero_fraction/total_zero/zero_count_8/switch_t:0 *
4linear/zero_fraction/total_zero/zero_count_8/Const:0
6linear/zero_fraction/total_zero/zero_count_8/pred_id:0
7linear/zero_fraction/total_zero/zero_count_8/switch_t:0p
6linear/zero_fraction/total_zero/zero_count_8/pred_id:06linear/zero_fraction/total_zero/zero_count_8/pred_id:0
0
8linear/zero_fraction/total_zero/zero_count_8/cond_text_16linear/zero_fraction/total_zero/zero_count_8/pred_id:07linear/zero_fraction/total_zero/zero_count_8/switch_f:0*
8linear/linear_model/trip_start_month_xf/weights/part_0:0
(linear/zero_fraction/total_size/Size_8:0
:linear/zero_fraction/total_zero/zero_count_8/Cast/Switch:0
3linear/zero_fraction/total_zero/zero_count_8/Cast:0
2linear/zero_fraction/total_zero/zero_count_8/mul:0
6linear/zero_fraction/total_zero/zero_count_8/pred_id:0
7linear/zero_fraction/total_zero/zero_count_8/switch_f:0
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual/y:0
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/LessEqual:0
Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/Switch:0
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0
Alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/Size:0
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Cast:0
Glinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Merge:0
Glinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Merge:1
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch:0
Hlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Switch:1
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zeros:0
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t:0
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast:0
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/Cast_1:0
Slinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/sub:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/counts_to_fraction/truediv:0
Elinear/zero_fraction/total_zero/zero_count_8/zero_fraction/fraction:0f
(linear/zero_fraction/total_size/Size_8:0:linear/zero_fraction/total_zero/zero_count_8/Cast/Switch:0p
6linear/zero_fraction/total_zero/zero_count_8/pred_id:06linear/zero_fraction/total_zero/zero_count_8/pred_id:0
8linear/linear_model/trip_start_month_xf/weights/part_0:0Rlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp/Switch:02ў

ћ

Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/cond_textIlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t:0 *	
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0
Flinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/Cast:0
Tlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Cast:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/Const:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Xlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual:0
]linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/nonzero_count:0
Ulinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_t:0Ў
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero/NotEqual/Switch:1
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:02Ф

С

Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/cond_text_1Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f:0*к
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0
Vlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Cast:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/Const:0
alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Zlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual:0
_linear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/nonzero_count:0
Wlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/zeros:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
Jlinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/switch_f:0А
Klinear/zero_fraction/total_zero/zero_count_8/zero_fraction/ReadVariableOp:0alinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/count_nonzero_1/NotEqual/Switch:0
Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0Ilinear/zero_fraction/total_zero/zero_count_8/zero_fraction/cond/pred_id:0
П
%linear/zero_fraction_1/cond/cond_text%linear/zero_fraction_1/cond/pred_id:0&linear/zero_fraction_1/cond/switch_t:0 *Ф
<linear/linear_model/linear_model/linear_model/weighted_sum:0
"linear/zero_fraction_1/cond/Cast:0
0linear/zero_fraction_1/cond/count_nonzero/Cast:0
1linear/zero_fraction_1/cond/count_nonzero/Const:0
;linear/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
4linear/zero_fraction_1/cond/count_nonzero/NotEqual:0
9linear/zero_fraction_1/cond/count_nonzero/nonzero_count:0
1linear/zero_fraction_1/cond/count_nonzero/zeros:0
%linear/zero_fraction_1/cond/pred_id:0
&linear/zero_fraction_1/cond/switch_t:0N
%linear/zero_fraction_1/cond/pred_id:0%linear/zero_fraction_1/cond/pred_id:0{
<linear/linear_model/linear_model/linear_model/weighted_sum:0;linear/zero_fraction_1/cond/count_nonzero/NotEqual/Switch:1
Љ
'linear/zero_fraction_1/cond/cond_text_1%linear/zero_fraction_1/cond/pred_id:0&linear/zero_fraction_1/cond/switch_f:0*Ў
<linear/linear_model/linear_model/linear_model/weighted_sum:0
2linear/zero_fraction_1/cond/count_nonzero_1/Cast:0
3linear/zero_fraction_1/cond/count_nonzero_1/Const:0
=linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
6linear/zero_fraction_1/cond/count_nonzero_1/NotEqual:0
;linear/zero_fraction_1/cond/count_nonzero_1/nonzero_count:0
3linear/zero_fraction_1/cond/count_nonzero_1/zeros:0
%linear/zero_fraction_1/cond/pred_id:0
&linear/zero_fraction_1/cond/switch_f:0N
%linear/zero_fraction_1/cond/pred_id:0%linear/zero_fraction_1/cond/pred_id:0}
<linear/linear_model/linear_model/linear_model/weighted_sum:0=linear/zero_fraction_1/cond/count_nonzero_1/NotEqual/Switch:0
Ѕ
@head/assert_range/assert_less_equal/Assert/AssertGuard/cond_text@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_t:0 *й
Khead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_t:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
Ћ
Bhead/assert_range/assert_less_equal/Assert/AssertGuard/cond_text_1@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_f:0*п	
head/Cast:0
head/assert_range/Const:0
)head/assert_range/assert_less_equal/All:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/data_4:0
Mhead/assert_range/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0
Ahead/assert_range/assert_less_equal/Assert/AssertGuard/switch_f:0e
head/assert_range/Const:0Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0@head/assert_range/assert_less_equal/Assert/AssertGuard/pred_id:0W
head/Cast:0Hhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0s
)head/assert_range/assert_less_equal/All:0Fhead/assert_range/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Х
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_textThead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0 *Н
_head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency:0
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0Ќ
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
ь
Vhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_text_1Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0*ф	
head/Cast:0
=head/assert_range/assert_non_negative/assert_less_equal/All:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
\head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
ahead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
Uhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0Ќ
Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0Thead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
=head/assert_range/assert_non_negative/assert_less_equal/All:0Zhead/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0k
head/Cast:0\head/assert_range/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
ў
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textTmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *і
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0Ќ
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0 
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
­[
Vmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*ч*
lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
lmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
mmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Umetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Imetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rank:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ќ
Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Tmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0и
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ч
Imetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/rank:0zmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ъ
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0|metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0л
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02л#
и#
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textnmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *!
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0н
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0к
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0р
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02н

к

pmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0ц
smetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0ometrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0р
nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
­
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textQmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *Ў
\metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0І
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0

Smetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
^metrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0І
Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Qmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Ї
Jmetrics/label/mean/broadcast_weights_1/assert_broadcastable/values/shape:0Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0Є
Gmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0Ј
Kmetrics/label/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Ymetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0­
Rmetrics/label/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0Wmetrics/label/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
К
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textYmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *Ѓ
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0Ж
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Њ
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
_
[metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*е,
qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
qmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
rmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
~metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Zmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Nmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0х
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0б
Nmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/rank:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0е
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/rank:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0т
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ж
Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ymetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:02%
%
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textsmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *Ј"
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
~metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
|metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0ч
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1ъ
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ф
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Ђ
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0І
metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02

umetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*Б
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0№
xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0tmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0ъ
smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0smetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
е
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textVmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *Ч
ametrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0А
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Ї
Xmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
cmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0Б
Ometrics/prediction/mean/broadcast_weights_1/assert_broadcastable/values/shape:0^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0А
Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Vmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0З
Wmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0\metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0В
Pmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/weights/shape:0^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0Ў
Lmetrics/prediction/mean/broadcast_weights_1/assert_broadcastable/is_scalar:0^metrics/prediction/mean/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0

=metrics/auc/assert_greater_equal/Assert/AssertGuard/cond_text=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t:0 *Щ
Hmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency:0
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_t:0~
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0

?metrics/auc/assert_greater_equal/Assert/AssertGuard/cond_text_1=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f:0*С	
head/predictions/logistic:0
metrics/auc/Cast/x:0
&metrics/auc/assert_greater_equal/All:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_2:0
Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/data_4:0
Jmetrics/auc/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0
>metrics/auc/assert_greater_equal/Assert/AssertGuard/switch_f:0~
=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0=metrics/auc/assert_greater_equal/Assert/AssertGuard/pred_id:0m
&metrics/auc/assert_greater_equal/All:0Cmetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0d
head/predictions/logistic:0Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0]
metrics/auc/Cast/x:0Emetrics/auc/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
є
:metrics/auc/assert_less_equal/Assert/AssertGuard/cond_text:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t:0 *К
Emetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency:0
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_t:0x
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
Ь

<metrics/auc/assert_less_equal/Assert/AssertGuard/cond_text_1:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f:0*	
head/predictions/logistic:0
metrics/auc/Cast_1/x:0
#metrics/auc/assert_less_equal/All:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/data_4:0
Gmetrics/auc/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0
;metrics/auc/assert_less_equal/Assert/AssertGuard/switch_f:0x
:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0:metrics/auc/assert_less_equal/Assert/AssertGuard/pred_id:0\
metrics/auc/Cast_1/x:0Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0a
head/predictions/logistic:0Bmetrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0g
#metrics/auc/assert_less_equal/All:0@metrics/auc/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Њ
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_textMmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *З
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
ѕU
Ometrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*(
emetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
emetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
fmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
|metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
wmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
zmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
rmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
pmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
smetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
Nmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Bmetrics/auc/broadcast_weights_1/assert_broadcastable/values/rank:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0
Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Mmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0Ъ
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Э
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Й
Bmetrics/auc/broadcast_weights_1/assert_broadcastable/values/rank:0smetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0М
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/rank:0umetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02к!
з!
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textgmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
{metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
}metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
|metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
wmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
zmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
rmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
pmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0Я
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ь
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0в
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02



imetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*Х
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0и
lmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0hmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0в
gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0gmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ѕ
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_textJmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *
Umetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
П
Lmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0*е
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
Wmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0
Kmetrics/auc/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0Pmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
Dmetrics/auc/broadcast_weights_1/assert_broadcastable/weights/shape:0Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Cmetrics/auc/broadcast_weights_1/assert_broadcastable/values/shape:0Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
@metrics/auc/broadcast_weights_1/assert_broadcastable/is_scalar:0Rmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Jmetrics/auc/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0

Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/cond_textNmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t:0 *
Ymetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency:0
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_t:0 
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
ќ
Pmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/cond_text_1Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f:0*
head/predictions/logistic:0
%metrics/auc_precision_recall/Cast/x:0
7metrics/auc_precision_recall/assert_greater_equal/All:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0
Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_0:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_1:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_2:0
Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/data_4:0
[metrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/control_dependency_1:0
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
Ometrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/switch_f:0
7metrics/auc_precision_recall/assert_greater_equal/All:0Tmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch:0u
head/predictions/logistic:0Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_1:0
%metrics/auc_precision_recall/Cast/x:0Vmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/Assert/Switch_2:0 
Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0Nmetrics/auc_precision_recall/assert_greater_equal/Assert/AssertGuard/pred_id:0
§
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/cond_textKmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t:0 *
Vmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_t:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
Ф
Mmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/cond_text_1Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f:0*з
head/predictions/logistic:0
'metrics/auc_precision_recall/Cast_1/x:0
4metrics/auc_precision_recall/assert_less_equal/All:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/data_4:0
Xmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0
Lmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/switch_f:0
Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0Kmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/pred_id:0r
head/predictions/logistic:0Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0~
'metrics/auc_precision_recall/Cast_1/x:0Smetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch_2:0
4metrics/auc_precision_recall/assert_less_equal/All:0Qmetrics/auc_precision_recall/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
і
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0 *а
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_t:0Д
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Switch_1:1Р
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
c
`metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/cond_text_1^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0*Ф.
vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
vmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
wmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
}metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0
_metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/switch_f:0
Smetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank:0
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0ь
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0п
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/rank:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0я
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Р
^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0^metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/pred_id:0м
Smetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/rank:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:02Ц&
У&
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textxmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *Я#
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0А
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0є
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ю
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Ќ
metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ё
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:12е
в
zmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*о
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
}metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0њ
}metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0ymetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0є
xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0xmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
§
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0 *р
fmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency:0
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_t:0К
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
Н
]metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/cond_text_1[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0* 
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0
cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0
cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0
cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_0:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_1:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_2:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_4:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_5:0
ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/data_7:0
hmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/control_dependency_1:0
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/switch_f:0
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0М
Umetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/weights/shape:0cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_1:0К
[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0[metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/pred_id:0Л
Tmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/values/shape:0cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_2:0И
Qmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_scalar:0cmetrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch_3:0С
\metrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/is_valid_shape/Merge:0ametrics/auc_precision_recall/broadcast_weights_1/assert_broadcastable/AssertGuard/Assert/Switch:0"A
/evaluation_only/build_data/baseline_change_list

џџџџџџџџџ"Њ
%evaluation_only/build_data/build_data~
|Built on Wed Dec 31 15:59:59 1969 (-1)
Built by 
Built as 
Build platform: 
Currently running under Python 3.6.7: embedded.
"6
$evaluation_only/build_data/timestamp

џџџџџџџџџ"v
'evaluation_only/label_graph/example_refK*I
G
)type.googleapis.com/tensorflow.TensorInfo
range:0џџџџџџџџџ"
(evaluation_only/label_graph/features/keyхт
$Bytes$company
$Bytes$dropoff_census_tract
$Bytes$dropoff_community_area
$Bytes$dropoff_latitude
$Bytes$dropoff_longitude
$Bytes$fare
$Bytes$payment_type
$Bytes$pickup_census_tract
$Bytes$pickup_community_area
$Bytes$pickup_latitude
$Bytes$pickup_longitude
$Bytes$tips
$Bytes$trip_miles
$Bytes$trip_seconds
$Bytes$trip_start_day
$Bytes$trip_start_hour
$Bytes$trip_start_month
$Bytes$trip_start_timestamp
$Bytes$trip_start_day_xf
$Bytes$trip_start_month_xf
$Bytes$fare_xf
$Bytes$dropoff_longitude_xf
$Bytes$pickup_census_tract_xf
$Bytes$company_xf
$Bytes$trip_seconds_xf
$Bytes$trip_miles_xf
$Bytes$dropoff_census_tract_xf
 $Bytes$dropoff_community_area_xf
$Bytes$trip_start_hour_xf
$Bytes$tips_xf
$Bytes$dropoff_latitude_xf
$Bytes$pickup_community_area_xf
$Bytes$payment_type_xf
$Bytes$pickup_latitude_xf
$Bytes$pickup_longitude_xf")
)evaluation_only/label_graph/features/nodeё(*ю(
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:18ParseExample/ParseExampleV2:0ParseExample/ParseExampleV2:36
Ќ
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:19ParseExample/ParseExampleV2:1ParseExample/ParseExampleV2:37
Ќ
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:20ParseExample/ParseExampleV2:2ParseExample/ParseExampleV2:38
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:21ParseExample/ParseExampleV2:3ParseExample/ParseExampleV2:39
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:22ParseExample/ParseExampleV2:4ParseExample/ParseExampleV2:40
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:23ParseExample/ParseExampleV2:5ParseExample/ParseExampleV2:41
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:24ParseExample/ParseExampleV2:6ParseExample/ParseExampleV2:42
Ќ
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:25ParseExample/ParseExampleV2:7ParseExample/ParseExampleV2:43
Ќ
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:26ParseExample/ParseExampleV2:8ParseExample/ParseExampleV2:44
Ќ
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:27ParseExample/ParseExampleV2:9ParseExample/ParseExampleV2:45
Ў
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:28ParseExample/ParseExampleV2:10ParseExample/ParseExampleV2:46
Ў
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:29ParseExample/ParseExampleV2:11ParseExample/ParseExampleV2:47
Ў
)type.googleapis.com/tensorflow.TensorInfoџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:30ParseExample/ParseExampleV2:12ParseExample/ParseExampleV2:48
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:31ParseExample/ParseExampleV2:13ParseExample/ParseExampleV2:49
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:32ParseExample/ParseExampleV2:14ParseExample/ParseExampleV2:50
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:33ParseExample/ParseExampleV2:15ParseExample/ParseExampleV2:51
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:34ParseExample/ParseExampleV2:16ParseExample/ParseExampleV2:52
Ў
)type.googleapis.com/tensorflow.TensorInfo	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:35ParseExample/ParseExampleV2:17ParseExample/ParseExampleV2:53
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_10:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_11:0	џџџџџџџџџ
o
)type.googleapis.com/tensorflow.TensorInfoB
/transform/transform/scale_to_z_score_1/Select:0џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoo
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_12:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfon
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ
o
)type.googleapis.com/tensorflow.TensorInfoB
/transform/transform/scale_to_z_score_2/Select:0џџџџџџџџџ
m
)type.googleapis.com/tensorflow.TensorInfo@
-transform/transform/scale_to_z_score/Select:0џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_13:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_15:0	џџџџџџџџџ
_
)type.googleapis.com/tensorflow.TensorInfo2
transform/transform/Squeeze_9:0	џџџџџџџџџ
\
)type.googleapis.com/tensorflow.TensorInfo/
transform/transform/Select:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoo
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ
`
)type.googleapis.com/tensorflow.TensorInfo3
 transform/transform/Squeeze_14:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfol
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfom
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

)type.googleapis.com/tensorflow.TensorInfoo
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ"=
&evaluation_only/label_graph/labels/key
$Bytes$__labels"
'evaluation_only/label_graph/labels/node`*^
\
)type.googleapis.com/tensorflow.TensorInfo/
transform/transform/Select:0	џџџџџџџџџ"6
%evaluation_only/metadata/tfma_version
	0.16.0dev"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"ы
local_variablesзд

metrics/label/mean/total:0metrics/label/mean/total/Assignmetrics/label/mean/total/read:02,metrics/label/mean/total/Initializer/zeros:0@H

metrics/label/mean/count:0metrics/label/mean/count/Assignmetrics/label/mean/count/read:02,metrics/label/mean/count/Initializer/zeros:0@H

metrics/average_loss/total:0!metrics/average_loss/total/Assign!metrics/average_loss/total/read:02.metrics/average_loss/total/Initializer/zeros:0@H

metrics/average_loss/count:0!metrics/average_loss/count/Assign!metrics/average_loss/count/read:02.metrics/average_loss/count/Initializer/zeros:0@H

metrics/accuracy/total:0metrics/accuracy/total/Assignmetrics/accuracy/total/read:02*metrics/accuracy/total/Initializer/zeros:0@H

metrics/accuracy/count:0metrics/accuracy/count/Assignmetrics/accuracy/count/read:02*metrics/accuracy/count/Initializer/zeros:0@H
Ш
(metrics/precision/true_positives/count:0-metrics/precision/true_positives/count/Assign-metrics/precision/true_positives/count/read:02:metrics/precision/true_positives/count/Initializer/zeros:0@H
Ь
)metrics/precision/false_positives/count:0.metrics/precision/false_positives/count/Assign.metrics/precision/false_positives/count/read:02;metrics/precision/false_positives/count/Initializer/zeros:0@H
М
%metrics/recall/true_positives/count:0*metrics/recall/true_positives/count/Assign*metrics/recall/true_positives/count/read:027metrics/recall/true_positives/count/Initializer/zeros:0@H
Р
&metrics/recall/false_negatives/count:0+metrics/recall/false_negatives/count/Assign+metrics/recall/false_negatives/count/read:028metrics/recall/false_negatives/count/Initializer/zeros:0@H
Є
metrics/prediction/mean/total:0$metrics/prediction/mean/total/Assign$metrics/prediction/mean/total/read:021metrics/prediction/mean/total/Initializer/zeros:0@H
Є
metrics/prediction/mean/count:0$metrics/prediction/mean/count/Assign$metrics/prediction/mean/count/read:021metrics/prediction/mean/count/Initializer/zeros:0@H

metrics/auc/true_positives:0!metrics/auc/true_positives/Assign!metrics/auc/true_positives/read:02.metrics/auc/true_positives/Initializer/zeros:0@H

metrics/auc/false_negatives:0"metrics/auc/false_negatives/Assign"metrics/auc/false_negatives/read:02/metrics/auc/false_negatives/Initializer/zeros:0@H

metrics/auc/true_negatives:0!metrics/auc/true_negatives/Assign!metrics/auc/true_negatives/read:02.metrics/auc/true_negatives/Initializer/zeros:0@H

metrics/auc/false_positives:0"metrics/auc/false_positives/Assign"metrics/auc/false_positives/read:02/metrics/auc/false_positives/Initializer/zeros:0@H
м
-metrics/auc_precision_recall/true_positives:02metrics/auc_precision_recall/true_positives/Assign2metrics/auc_precision_recall/true_positives/read:02?metrics/auc_precision_recall/true_positives/Initializer/zeros:0@H
р
.metrics/auc_precision_recall/false_negatives:03metrics/auc_precision_recall/false_negatives/Assign3metrics/auc_precision_recall/false_negatives/read:02@metrics/auc_precision_recall/false_negatives/Initializer/zeros:0@H
м
-metrics/auc_precision_recall/true_negatives:02metrics/auc_precision_recall/true_negatives/Assign2metrics/auc_precision_recall/true_negatives/read:02?metrics/auc_precision_recall/true_negatives/Initializer/zeros:0@H
р
.metrics/auc_precision_recall/false_positives:03metrics/auc_precision_recall/false_positives/Assign3metrics/auc_precision_recall/false_positives/read:02@metrics/auc_precision_recall/false_positives/Initializer/zeros:0@H"&
losses

head/weighted_loss/Sum:0"ь
metric_variablesзд

metrics/label/mean/total:0metrics/label/mean/total/Assignmetrics/label/mean/total/read:02,metrics/label/mean/total/Initializer/zeros:0@H

metrics/label/mean/count:0metrics/label/mean/count/Assignmetrics/label/mean/count/read:02,metrics/label/mean/count/Initializer/zeros:0@H

metrics/average_loss/total:0!metrics/average_loss/total/Assign!metrics/average_loss/total/read:02.metrics/average_loss/total/Initializer/zeros:0@H

metrics/average_loss/count:0!metrics/average_loss/count/Assign!metrics/average_loss/count/read:02.metrics/average_loss/count/Initializer/zeros:0@H

metrics/accuracy/total:0metrics/accuracy/total/Assignmetrics/accuracy/total/read:02*metrics/accuracy/total/Initializer/zeros:0@H

metrics/accuracy/count:0metrics/accuracy/count/Assignmetrics/accuracy/count/read:02*metrics/accuracy/count/Initializer/zeros:0@H
Ш
(metrics/precision/true_positives/count:0-metrics/precision/true_positives/count/Assign-metrics/precision/true_positives/count/read:02:metrics/precision/true_positives/count/Initializer/zeros:0@H
Ь
)metrics/precision/false_positives/count:0.metrics/precision/false_positives/count/Assign.metrics/precision/false_positives/count/read:02;metrics/precision/false_positives/count/Initializer/zeros:0@H
М
%metrics/recall/true_positives/count:0*metrics/recall/true_positives/count/Assign*metrics/recall/true_positives/count/read:027metrics/recall/true_positives/count/Initializer/zeros:0@H
Р
&metrics/recall/false_negatives/count:0+metrics/recall/false_negatives/count/Assign+metrics/recall/false_negatives/count/read:028metrics/recall/false_negatives/count/Initializer/zeros:0@H
Є
metrics/prediction/mean/total:0$metrics/prediction/mean/total/Assign$metrics/prediction/mean/total/read:021metrics/prediction/mean/total/Initializer/zeros:0@H
Є
metrics/prediction/mean/count:0$metrics/prediction/mean/count/Assign$metrics/prediction/mean/count/read:021metrics/prediction/mean/count/Initializer/zeros:0@H

metrics/auc/true_positives:0!metrics/auc/true_positives/Assign!metrics/auc/true_positives/read:02.metrics/auc/true_positives/Initializer/zeros:0@H

metrics/auc/false_negatives:0"metrics/auc/false_negatives/Assign"metrics/auc/false_negatives/read:02/metrics/auc/false_negatives/Initializer/zeros:0@H

metrics/auc/true_negatives:0!metrics/auc/true_negatives/Assign!metrics/auc/true_negatives/read:02.metrics/auc/true_negatives/Initializer/zeros:0@H

metrics/auc/false_positives:0"metrics/auc/false_positives/Assign"metrics/auc/false_positives/read:02/metrics/auc/false_positives/Initializer/zeros:0@H
м
-metrics/auc_precision_recall/true_positives:02metrics/auc_precision_recall/true_positives/Assign2metrics/auc_precision_recall/true_positives/read:02?metrics/auc_precision_recall/true_positives/Initializer/zeros:0@H
р
.metrics/auc_precision_recall/false_negatives:03metrics/auc_precision_recall/false_negatives/Assign3metrics/auc_precision_recall/false_negatives/read:02@metrics/auc_precision_recall/false_negatives/Initializer/zeros:0@H
м
-metrics/auc_precision_recall/true_negatives:02metrics/auc_precision_recall/true_negatives/Assign2metrics/auc_precision_recall/true_negatives/read:02?metrics/auc_precision_recall/true_negatives/Initializer/zeros:0@H
р
.metrics/auc_precision_recall/false_positives:03metrics/auc_precision_recall/false_positives/Assign3metrics/auc_precision_recall/false_positives/read:02@metrics/auc_precision_recall/false_positives/Initializer/zeros:0@H"є
saved_model_assetsн*к
i
+type.googleapis.com/tensorflow.AssetFileDef:
	
Const:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_1:0/vocab_compute_and_apply_vocabulary_1_vocabulary"%
saved_model_main_op


group_deps"Ѓ
	summaries

/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
linear/bias:0
!linear/fraction_of_zero_weights:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"ё
table_initializerл
и
itransform/transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
ktransform/transform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2"Ў
$tft_schema_override_annotation_proto

=transform/transform/bucketize/apply_buckets/strided_slice_2:0
?transform/transform/bucketize_1/apply_buckets/strided_slice_2:0
?transform/transform/bucketize_2/apply_buckets/strided_slice_2:0
?transform/transform/bucketize_3/apply_buckets/strided_slice_2:0"Ѓ
%tft_schema_override_annotation_tensorљ
і
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0"
#tft_schema_override_annotation_typeх
т
5transform/transform/bucketize/apply_buckets/Const_1:0
7transform/transform/bucketize_1/apply_buckets/Const_1:0
7transform/transform/bucketize_2/apply_buckets/Const_1:0
7transform/transform/bucketize_3/apply_buckets/Const_1:0"Ѓ
tft_schema_override_max

Btransform/transform/compute_and_apply_vocabulary/apply_vocab/sub:0
Dtransform/transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
;transform/transform/bucketize/apply_buckets/strided_slice:0
=transform/transform/bucketize_1/apply_buckets/strided_slice:0
=transform/transform/bucketize_2/apply_buckets/strided_slice:0
=transform/transform/bucketize_3/apply_buckets/strided_slice:0"
tft_schema_override_minя
ь
Ftransform/transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
Htransform/transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
3transform/transform/bucketize/apply_buckets/Const:0
5transform/transform/bucketize_1/apply_buckets/Const:0
5transform/transform/bucketize_2/apply_buckets/Const:0
5transform/transform/bucketize_3/apply_buckets/Const:0"а
tft_schema_override_tensorБ
Ў
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0"+
trainable_variables++
ь
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kerneld  "d(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/biasd "d(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kerneldF  "dF(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/biasF "F(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernelF0  "F0(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias0 "0(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel0"  "0"(2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias" ""(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
Щ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel"  ""(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
Г
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08"я+
	variablesс+о+
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
ь
!dnn/hiddenlayer_0/kernel/part_0:0&dnn/hiddenlayer_0/kernel/part_0/Assign5dnn/hiddenlayer_0/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_0/kerneld  "d(2<dnn/hiddenlayer_0/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_0/bias/part_0:0$dnn/hiddenlayer_0/bias/part_0/Assign3dnn/hiddenlayer_0/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_0/biasd "d(21dnn/hiddenlayer_0/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_1/kernel/part_0:0&dnn/hiddenlayer_1/kernel/part_0/Assign5dnn/hiddenlayer_1/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_1/kerneldF  "dF(2<dnn/hiddenlayer_1/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_1/bias/part_0:0$dnn/hiddenlayer_1/bias/part_0/Assign3dnn/hiddenlayer_1/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_1/biasF "F(21dnn/hiddenlayer_1/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_2/kernel/part_0:0&dnn/hiddenlayer_2/kernel/part_0/Assign5dnn/hiddenlayer_2/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_2/kernelF0  "F0(2<dnn/hiddenlayer_2/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_2/bias/part_0:0$dnn/hiddenlayer_2/bias/part_0/Assign3dnn/hiddenlayer_2/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_2/bias0 "0(21dnn/hiddenlayer_2/bias/part_0/Initializer/zeros:08
ь
!dnn/hiddenlayer_3/kernel/part_0:0&dnn/hiddenlayer_3/kernel/part_0/Assign5dnn/hiddenlayer_3/kernel/part_0/Read/ReadVariableOp:0"&
dnn/hiddenlayer_3/kernel0"  "0"(2<dnn/hiddenlayer_3/kernel/part_0/Initializer/random_uniform:08
ж
dnn/hiddenlayer_3/bias/part_0:0$dnn/hiddenlayer_3/bias/part_0/Assign3dnn/hiddenlayer_3/bias/part_0/Read/ReadVariableOp:0"!
dnn/hiddenlayer_3/bias" ""(21dnn/hiddenlayer_3/bias/part_0/Initializer/zeros:08
Щ
dnn/logits/kernel/part_0:0dnn/logits/kernel/part_0/Assign.dnn/logits/kernel/part_0/Read/ReadVariableOp:0"
dnn/logits/kernel"  ""(25dnn/logits/kernel/part_0/Initializer/random_uniform:08
Г
dnn/logits/bias/part_0:0dnn/logits/bias/part_0/Assign,dnn/logits/bias/part_0/Read/ReadVariableOp:0"
dnn/logits/bias "(2*dnn/logits/bias/part_0/Initializer/zeros:08
Ћ
/linear/linear_model/company_xf/weights/part_0:04linear/linear_model/company_xf/weights/part_0/AssignClinear/linear_model/company_xf/weights/part_0/Read/ReadVariableOp:0"6
&linear/linear_model/company_xf/weightsђ  "ђ(2Alinear/linear_model/company_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/dropoff_latitude_xf/weights/part_0:0=linear/linear_model/dropoff_latitude_xf/weights/part_0/AssignLlinear/linear_model/dropoff_latitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/dropoff_latitude_xf/weights
  "
(2Jlinear/linear_model/dropoff_latitude_xf/weights/part_0/Initializer/zeros:08
л
9linear/linear_model/dropoff_longitude_xf/weights/part_0:0>linear/linear_model/dropoff_longitude_xf/weights/part_0/AssignMlinear/linear_model/dropoff_longitude_xf/weights/part_0/Read/ReadVariableOp:0">
0linear/linear_model/dropoff_longitude_xf/weights
  "
(2Klinear/linear_model/dropoff_longitude_xf/weights/part_0/Initializer/zeros:08
Ф
4linear/linear_model/payment_type_xf/weights/part_0:09linear/linear_model/payment_type_xf/weights/part_0/AssignHlinear/linear_model/payment_type_xf/weights/part_0/Read/ReadVariableOp:0";
+linear/linear_model/payment_type_xf/weightsђ  "ђ(2Flinear/linear_model/payment_type_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/pickup_latitude_xf/weights/part_0:0<linear/linear_model/pickup_latitude_xf/weights/part_0/AssignKlinear/linear_model/pickup_latitude_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/pickup_latitude_xf/weights
  "
(2Ilinear/linear_model/pickup_latitude_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/pickup_longitude_xf/weights/part_0:0=linear/linear_model/pickup_longitude_xf/weights/part_0/AssignLlinear/linear_model/pickup_longitude_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/pickup_longitude_xf/weights
  "
(2Jlinear/linear_model/pickup_longitude_xf/weights/part_0/Initializer/zeros:08
Ь
6linear/linear_model/trip_start_day_xf/weights/part_0:0;linear/linear_model/trip_start_day_xf/weights/part_0/AssignJlinear/linear_model/trip_start_day_xf/weights/part_0/Read/ReadVariableOp:0";
-linear/linear_model/trip_start_day_xf/weights  "(2Hlinear/linear_model/trip_start_day_xf/weights/part_0/Initializer/zeros:08
б
7linear/linear_model/trip_start_hour_xf/weights/part_0:0<linear/linear_model/trip_start_hour_xf/weights/part_0/AssignKlinear/linear_model/trip_start_hour_xf/weights/part_0/Read/ReadVariableOp:0"<
.linear/linear_model/trip_start_hour_xf/weights  "(2Ilinear/linear_model/trip_start_hour_xf/weights/part_0/Initializer/zeros:08
ж
8linear/linear_model/trip_start_month_xf/weights/part_0:0=linear/linear_model/trip_start_month_xf/weights/part_0/AssignLlinear/linear_model/trip_start_month_xf/weights/part_0/Read/ReadVariableOp:0"=
/linear/linear_model/trip_start_month_xf/weights  "(2Jlinear/linear_model/trip_start_month_xf/weights/part_0/Initializer/zeros:08

)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign=linear/linear_model/bias_weights/part_0/Read/ReadVariableOp:0"+
 linear/linear_model/bias_weights "(2;linear/linear_model/bias_weights/part_0/Initializer/zeros:08*4
eval4

features/companyџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:18ParseExample/ParseExampleV2:0ParseExample/ParseExampleV2:36

features/company_xfn
[transform/transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ
 
features/dropoff_census_tract	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:19ParseExample/ParseExampleV2:1ParseExample/ParseExampleV2:37
W
 features/dropoff_census_tract_xf3
 transform/transform/Squeeze_13:0	џџџџџџџџџ
Ђ
features/dropoff_community_area	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:20ParseExample/ParseExampleV2:2ParseExample/ParseExampleV2:38
Y
"features/dropoff_community_area_xf3
 transform/transform/Squeeze_15:0	џџџџџџџџџ

features/dropoff_latitudeџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:21ParseExample/ParseExampleV2:3ParseExample/ParseExampleV2:39

features/dropoff_latitude_xfo
\transform/transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

features/dropoff_longitudeџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:22ParseExample/ParseExampleV2:4ParseExample/ParseExampleV2:40

features/dropoff_longitude_xfo
\transform/transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

features/fareџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:23ParseExample/ParseExampleV2:5ParseExample/ParseExampleV2:41
V
features/fare_xfB
/transform/transform/scale_to_z_score_1/Select:0џџџџџџџџџ

features/payment_typeџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:24ParseExample/ParseExampleV2:6ParseExample/ParseExampleV2:42

features/payment_type_xfl
Ytransform/transform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	џџџџџџџџџ

features/pickup_census_tract	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:25ParseExample/ParseExampleV2:7ParseExample/ParseExampleV2:43
V
features/pickup_census_tract_xf3
 transform/transform/Squeeze_12:0	џџџџџџџџџ
Ё
features/pickup_community_area	џџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:26ParseExample/ParseExampleV2:8ParseExample/ParseExampleV2:44
X
!features/pickup_community_area_xf3
 transform/transform/Squeeze_14:0	џџџџџџџџџ

features/pickup_latitudeџџџџџџџџџџџџџџџџџџ"_
ParseExample/ParseExampleV2:27ParseExample/ParseExampleV2:9ParseExample/ParseExampleV2:45

features/pickup_latitude_xfm
Ztransform/transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

features/pickup_longitudeџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:28ParseExample/ParseExampleV2:10ParseExample/ParseExampleV2:46

features/pickup_longitude_xfo
\transform/transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	џџџџџџџџџ

features/tipsџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:29ParseExample/ParseExampleV2:11ParseExample/ParseExampleV2:47
C
features/tips_xf/
transform/transform/Select:0	џџџџџџџџџ

features/trip_milesџџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:30ParseExample/ParseExampleV2:12ParseExample/ParseExampleV2:48
Z
features/trip_miles_xf@
-transform/transform/scale_to_z_score/Select:0џџџџџџџџџ

features/trip_seconds	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:31ParseExample/ParseExampleV2:13ParseExample/ParseExampleV2:49
^
features/trip_seconds_xfB
/transform/transform/scale_to_z_score_2/Select:0џџџџџџџџџ

features/trip_start_day	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:32ParseExample/ParseExampleV2:14ParseExample/ParseExampleV2:50
Q
features/trip_start_day_xf3
 transform/transform/Squeeze_10:0	џџџџџџџџџ

features/trip_start_hour	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:33ParseExample/ParseExampleV2:15ParseExample/ParseExampleV2:51
Q
features/trip_start_hour_xf2
transform/transform/Squeeze_9:0	џџџџџџџџџ

features/trip_start_month	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:34ParseExample/ParseExampleV2:16ParseExample/ParseExampleV2:52
S
features/trip_start_month_xf3
 transform/transform/Squeeze_11:0	џџџџџџџџџ
Ђ
features/trip_start_timestamp	џџџџџџџџџџџџџџџџџџ"`
ParseExample/ParseExampleV2:35ParseExample/ParseExampleV2:17ParseExample/ParseExampleV2:53
(

input_refs
range:0џџџџџџџџџ
<
inputs/examples)
input_example_tensor:0џџџџџџџџџ
9
labels/
transform/transform/Select:0	џџџџџџџџџ

tfma/version
	Const_2:0 &
loss
head/weighted_loss/Sum:0 @
metrics/accuracy/update_op"
metrics/accuracy/update_op:0 8
metrics/accuracy/value
metrics/accuracy/value:0 R
#metrics/accuracy_baseline/update_op+
%metrics/accuracy_baseline/update_op:0 J
metrics/accuracy_baseline/value'
!metrics/accuracy_baseline/value:0 6
metrics/auc/update_op
metrics/auc/update_op:0 .
metrics/auc/value
metrics/auc/value:0 X
&metrics/auc_precision_recall/update_op.
(metrics/auc_precision_recall/update_op:0 P
"metrics/auc_precision_recall/value*
$metrics/auc_precision_recall/value:0 H
metrics/average_loss/update_op&
 metrics/average_loss/update_op:0 @
metrics/average_loss/value"
metrics/average_loss/value:0 D
metrics/label/mean/update_op$
metrics/label/mean/update_op:0 <
metrics/label/mean/value 
metrics/label/mean/value:0 B
metrics/precision/update_op#
metrics/precision/update_op:0 :
metrics/precision/value
metrics/precision/value:0 N
!metrics/prediction/mean/update_op)
#metrics/prediction/mean/update_op:0 F
metrics/prediction/mean/value%
metrics/prediction/mean/value:0 <
metrics/recall/update_op 
metrics/recall/update_op:0 4
metrics/recall/value
metrics/recall/value:0 K
predictions/all_class_ids.
head/predictions/Tile:0џџџџџџџџџK
predictions/all_classes0
head/predictions/Tile_1:0џџџџџџџџџM
predictions/class_ids4
head/predictions/ExpandDims:0	џџџџџџџџџL
predictions/classes5
head/predictions/str_classes:0џџџџџџџџџJ
predictions/logistic2
head/predictions/logistic:0џџџџџџџџџ2
predictions/logits
add:0џџџџџџџџџT
predictions/probabilities7
 head/predictions/probabilities:0џџџџџџџџџtensorflow/supervised/eval