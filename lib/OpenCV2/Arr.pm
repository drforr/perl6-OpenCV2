use v6;
use NativeCall;

=begin pod

=begin NAME

OpenCV2::Arr - Arr operations

=end NAME

=begin SYNOPSIS

    my $m = OpenCV2::Arr.new;

=end SYNOPSIS

=begin DESCRIPTION

=end DESCRIPTION

=begin METHODS

=end METHODS

=end pod

class OpenCV2::Arr is repr('CPointer')
	{
	use OpenCV2::Scalar;
	use OpenCV2::Size;
	constant LIB = 'libopencv_core.so.2.4.8';

	# Returns type of array elements:
	# CV_8UC1 ... CV_64FC4 ...
	#
	sub cvGetElemType( OpenCV2::Arr $arr )
		returns int32
		is native(LIB) { * }

	method getElemType( )
		{
		cvGetElemType( self )
		}

	# Retrieves number of an array dimensions and
	# optionally sizes of the dimensions
	#
# XXX
#	sub cvGetDims( OpenCV2::Arr $arr, CArray[int32] @sizes = Nil )
#		returns int32
#		is native(LIB) { * }

	# Retrieves size of a particular array dimension.
	# For 2d arrays cvGetDimSize(arr,0) returns number of rows (image height)
	# and cvGetDimSize(arr,1) returns number of columns (image width)
	#
	sub cvGetDimSize( OpenCV2::Arr $arr, int32 $index )
		returns int32
		is native(LIB) { * }

	method getDimSize( int32 $index )
		{
		cvGetDimSize( self, $index )
		}

	# value = arr(idx0,idx1,...)
	#
	sub cvGet1D( OpenCV2::Arr $arr, int32 $idx0 )
		returns OpenCV2::Scalar
		is native(LIB) { * }

	method get1D( int32 $idx0 )
		{
		cvGet1D( self, $idx0 )
		}

	sub cvGet2D( OpenCV2::Arr $arr, int32 $idx0, int32 $idx1 )
		returns OpenCV2::Scalar
		is native(LIB) { * }

	method get2D( int32 $idx0, int32 $idx1 )
		{
		cvGet2D( self, $idx0, $idx1 )
		}

	sub cvGet3D( OpenCV2::Arr $arr, int32 $idx0, int32 $idx1, int32 $idx2 )
		returns OpenCV2::Scalar
		is native(LIB) { * }

	method get3D( int32 $idx0, int32 $idx1, int32 $idx2 )
		{
		cvGet3D( self, $idx0, $idx1, $idx2 )
		}

# XXX
#	sub cvGetND( OpenCV2::Arr $arr, CArray[int32] @idx )
#		returns OpenCV2::Scalar
#		is native(LIB) { * }

	# XXX
#	method getND( CArray[int32] @idx )
#		{
#		cvGetND( self, $idx )
#		}

	# for 1-channel arrays
	#
	sub cvGetReal1D( OpenCV2::Arr $arr, int32 $idx0 )
		returns num64
		is native(LIB) { * }

	method getReal1D( int32 $idx0 )
		{
		cvGetReal1D( self, $idx0 )
		}

	sub cvGetReal2D( OpenCV2::Arr $arr, int32 $idx0, int32 $idx1 )
		returns num64
		is native(LIB) { * }

	method getReal2D( int32 $idx0, int32 $idx1 )
		{
		cvGetReal2D( self, $idx0, $idx1 )
		}

	sub cvGetReal3D( OpenCV2::Arr $arr, int32 $idx0, int32 $idx1, int32 $idx2 )
		returns num64
		is native(LIB) { * }

	method getReal3D( int32 $idx0, int32 $idx1, int32 $idx2 )
		{
		cvGetReal3D( self, $idx0, $idx1, $idx2 )
		}

# XXX
#	sub cvGetND( OpenCV2::Arr $arr, CArray[int32] @idx )
#		returns num64
#		is native(LIB) { * }

#	# XXX
#	method getRealND( CArray[int32] @idx )
#		{
#		cvGetRealND( self, $idx )
#		}

	# arr(idx0,idx1,...) = value
	#
	sub cvSet1D( OpenCV2::Arr $arr, int32 $idx0, OpenCV2::Scalar $value )
		returns num64
		is native(LIB) { * }

	method set1D( int32 $idx0, OpenCV2::Scalar $value )
		{
		cvSet1D( self, $idx0, $value )
		}

	sub cvSet2D( OpenCV2::Arr $arr, int32 $idx0, int32 $idx1, OpenCV2::Scalar $value )
		returns num64
		is native(LIB) { * }

	method set2D( int32 $idx0, int32 $idx1, OpenCV2::Scalar $value )
		{
		cvSet2D( self, $idx0, $idx1, $value )
		}

	sub cvSet3D( OpenCV2::Arr $arr, int32 $idx0, int32 $idx1, int32 $idx2, OpenCV2::Scalar $value )
		returns num64
		is native(LIB) { * }

	method set3D( int32 $idx0, int32 $idx1, int32 $idx2, OpenCV2::Scalar $value )
		{
		cvSet3D( self, $idx0, $idx1, $idx2, $value )
		}

# XXX
#	sub cvSetND( OpenCV2::Arr    $arr,
#		     CArray[int32]     @idx,
#		     OpenCV2::Scalar $value )
#		returns num64
#		is native(LIB) { * }

	# XXX
#	method setND( CArray[int32] @idx, OpenCV2::Scalar $value )
#		{
#		cvSetND( self, $idx, $value )
#		}

	# for 1-channel arrays
	#
	sub cvSetReal1D( OpenCV2::Arr $arr, int32 $idx0, num64 $value )
		returns num64
		is native(LIB) { * }

	method setReal1D( int32 $idx0, num64 $value )
		{
		cvSetReal1D( self, $idx0, $value )
		}

	sub cvSetReal2D( OpenCV2::Arr $arr, int32 $idx0, int32 $idx1, num64 $value )
		returns num64
		is native(LIB) { * }

	method setReal2D( int32 $idx0, int32 $idx1, num64 $value )
		{
		cvSetReal2D( self, $idx0, $idx1, $value )
		}

	sub cvSetReal3D( OpenCV2::Arr $arr, int32 $idx0, int32 $idx1, int32 $idx2, num64 $value )
		returns num64
		is native(LIB) { * }

	method setReal3D( int32 $idx0, int32 $idx1, int32 $idx2, num64 $value )
		{
		cvSetReal3D( self, $idx0, $idx1, $idx2, $value )
		}

# XXX
#	sub cvGetRealND( OpenCV2::Arr $arr, CArray[int32] @idx, num64 $value )
#		returns num64
#		is native(LIB) { * }

#	# XXX
#	method setRealND( CArray[int32] @idx, num64 $value )
#		{
#		cvSetRealND( self, $idx, $value )
#		}

	# clears element of ND dense array,
	# in case of sparse arrays it deletes the specified node
	#
# XXX
#	sub cvClearND( OpenCV2::Arr $arr, CArray[int]32 @idx )
#		is native(LIB) { * }

	# XXX
#	method clearND( CArray[int32] @idx )
#		{
#		cvClearND( self, $idx )
#		}

	# Changes a shape of multi-dimensional array.
	# new_cn == 0 means that number of channels remains unchanged.
	# new_dims == 0 means that number and sizes of dims remain the same
	# (unless they need to be changed to set the new number of channels)
	# if new_dims == 1, there is no need to specify new dimension sizes
	# The resultant configuration should be achievable w/o data copying.
	# If the resultant array is sparse, SparseMat header should be passed
	# to the function else if the result is 1 or 2 dimensional,
	# Mat header should be passed to the function
	# else MatND header should be passed
	#
# XXX
#	sub cvReshapeMatND( OpenCV2::Arr $arr,
#			    int32 $sizeof_header,
#			    OpenCV2::Arr $header,
#			    int32 $new_cn, int32 $new_dims, CArray[int32] @new_sizes )
#		returns OpenCV2::Arr
#		is native(LIB) { * }

	# XXX
#	method reshapeMatND( int32 $sizeof_header, OpenCV2::Arr $header,
#			     int32 $new_cn, int32 $new_dims, CArray[int32] @new_sizes )
#		returns OpenCV2::Arr
#		{
#		cvReshapeMatND( self, $sizeof_header, $header,
#			        $new_cn, $new_dims, @new_sizes )
#		}

	# Repeats source 2d array several times in both horizontal and
	# vertical direction to fill destination array
	#
	sub cvRepeat( OpenCV2::Arr $src,
		      OpenCV2::Arr $dst )
		is native(LIB) { * }

	# Allocates array data
	#
	sub cvCreateData( OpenCV2::Arr $arr )
		is native(LIB) { * }

	# XXX Probably *very* important to run, maybe even inside new().
	method createData( )
		{
		cvCreateData( self )
		}

	# Releases array data
	#
	sub cvReleaseData( OpenCV2::Arr $arr )
		is native(LIB) { * }

	# XXX Probably *very* important to run, maybe even inside DESTROY().
	method releaseData( )
		{
		cvReleaseData( self )
		}

	# Attaches user data to the array header. The step is reffered to
	# the pre-last dimension. That is, all the planes of the array
	# must be joint (w/o gaps)
	#
	sub cvSetData( OpenCV2::Arr $arr, Pointer[void] $data, int32 $step )
		is native(LIB) { * }

	method setData( Pointer[void] $data, int32 $step )
		{
		cvSetData( self, $data, $step )
		}

	# Returns width and height of array in elements
	#
	sub cvGetSize( OpenCV2::Arr $arr )
		returns OpenCV2::Size
		is native(LIB) { * }

	method getSize( )
		{
		return cvGetSize( self )
		}

	# Copies source array to destination array
	#
	sub cvCopy( OpenCV2::Arr $src,
		    OpenCV2::Arr $dst,
		    OpenCV2::Arr $mask = Nil )
		is native(LIB) { * }

	# XXX
	method copy( OpenCV2::Arr $mask = Nil )
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;
		cvCopy( self, $dst, $mask );
		return $dst;
		}

	# Sets all or "masked" elements of input array
	# to the same value
	#
	sub cvSet( OpenCV2::Arr    $arr,
		   OpenCV2::Scalar $value,
		   OpenCV2::Arr    $mask  = Nil )
		is native(LIB) { * }

	method set( OpenCV2::Scalar $value, OpenCV2::Arr $mask = Nil )
		{
		cvSet( self, $value, $mask )
		}

	# Clears all the array elements (sets them to 0)
	#
	sub cvSetZero( OpenCV2::Arr $arr )
		is native(LIB) { * }

	method setZero( )
		{
		cvSetZero( self )
		}

	# Splits a multi-channel array into the set of single-channel arrays or
	# extracts particular [color] plane
	#
	sub cvSplit( OpenCV2::Arr $src,
		     OpenCV2::Arr $dst0,
		     OpenCV2::Arr $dst1,
		     OpenCV2::Arr $dst2,
		     OpenCV2::Arr $dst3 )
		is native(LIB) { * }

	method split( )
		{
		my OpenCV2::Arr $dst0 = OpenCV2::Arr.new;
		my OpenCV2::Arr $dst1 = OpenCV2::Arr.new;
		my OpenCV2::Arr $dst2 = OpenCV2::Arr.new;
		my OpenCV2::Arr $dst3 = OpenCV2::Arr.new;

		cvSplit( self, $dst0, $dst1, $dst2, $dst3 );

		( $dst0, $dst1, $dst2, $dst3 )
		}

	# Merges a set of single-channel arrays into the single multi-channel array
	# or inserts one particular [color] plane to the array
	#
	sub cvMerge( OpenCV2::Arr $src0,
		     OpenCV2::Arr $src1,
		     OpenCV2::Arr $src2,
		     OpenCV2::Arr $src3,
		     OpenCV2::Arr $dst )
		is native(LIB) { * }

	method merge( OpenCV2::Arr $src0,
		      OpenCV2::Arr $src1,
		      OpenCV2::Arr $src2,
		      OpenCV2::Arr $src3 )
		{
		cvMerge( $src0, $src1, $src2, $src3, self )
		}

	# Performs linear transformation on every source array element:
	# dst(x,y,c) = scale*src(x,y,c)+shift.
	# Arbitrary combination of input and output array depths are allowed
	# (number of channels must be the same), thus the function can be used
	# for type conversion
	#
#	sub cvConvertScale( OpenCV2::Arr $src,
#			    OpenCV2::Arr $dst,
#			    num64 $scale = 1.0,
#			    num64 $shift = 0.0 )
#		is native(LIB) { * }
#
#	# XXX
#	method convertScale( num64 $scale = 1.0, num64 $shift = 0.0 )
#		{
#		my OpenCV2::Arr $dst = OpenCV2::Arr.new;
#		cvConvertScale( self, $dst, $scale, $shift );
#		$dst;
#		}

	# Performs linear transformation on every source array element,
	# stores absolute value of the result:
	# dst(x,y,c) = abs(scale*src(x,y,c)+shift).
	# destination array must have 8u type.
	# In other cases one may use cvConvertScale + cvAbsDiffS
	#
#	sub cvConvertScaleAbs( OpenCV2::Arr $src,
#			       OpenCV2::Arr $dst,
#			       num64 $scale = 1.0,
#			       num64 $shift = 0.0 )
#		is native(LIB) { * }
#
#	method convertScaleAbs( num64 $scale = 1.0, num64 $shift = 0.0 )
#		{
#		my OpenCV2::Arr $dst = OpenCV2::Arr.new;
#
#		cvConvertscaleAbs( self, $dst, $scale, $shift );
#
#		$dst
#		}

	# dst(mask) = src1(mask) + src2(mask)
	#
	sub cvAdd( OpenCV2::Arr $src1,
		   OpenCV2::Arr $src2,
		   OpenCV2::Arr $dst,
		   OpenCV2::Arr $mask = Nil )
		is native(LIB) { * }

	method add( OpenCV2::Arr $src2, OpenCV2::Arr $mask = Nil )
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvAdd( self, $src2, $dst, $mask );

		$dst;
		}

	# dst(mask) = src(mask) + value
	#
	sub cvAddS( OpenCV2::Arr    $src,
		    OpenCV2::Scalar $value,
		    OpenCV2::Arr    $dst,
		    OpenCV2::Arr    $mask = Nil )
		is native(LIB) { * }

	method addS( OpenCV2::Scalar $value, OpenCV2::Arr $mask = Nil )
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvAddS( self, $value, $dst, $mask );

		$dst
		}

	# dst(mask) = src1(mask) - src2(mask)
	#
	sub cvSub( OpenCV2::Arr $src1,
		   OpenCV2::Arr $src2,
		   OpenCV2::Arr $dst,
		   OpenCV2::Arr $mask = Nil )
		is native(LIB) { * }

	method sub( OpenCV2::Arr $src2, OpenCV2::Arr $mask = Nil )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvSub( self, $src2, $dst, $mask );

		$dst
		}

	# dst(mask) = value - src(mask)
	#
	sub cvSubRS( OpenCV2::Arr    $src,
		     OpenCV2::Scalar $value,
		     OpenCV2::Arr    $dst,
		     OpenCV2::Arr    $mask = Nil )
		is native(LIB) { * }

	method subRS( OpenCV2::Scalar $value,
		      OpenCV2::Arr    $mask = Nil )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvSubRS( self, $value, $dst, $mask );

		$dst
		}

	# dst(mask) = src1(idx) * src2(idx) * scale
	# (scaled element-wise multiplication of 2 arrays)
	#
#	sub cvMul( OpenCV2::Arr $src1,
#		   OpenCV2::Arr $src2,
#		   OpenCV2::Arr $dst,
#		   num64        $scale = 1.0 )
#		is native(LIB) { * }
#
#	method mul( OpenCV2::Arr $src2, num64 $scale = 1.0 )
#		returns OpenCV2::Arr
#		{
#		my OpenCV2::Arr $dst = OpenCV2::Arr.new;
#
#		cvMul( self, $src2, $dst, $scale );
#
#		$dst
#		}

	# element-wise division/inversion with scaling:
	#  dst(idx) = src1(idx) * scale / src2(idx)
	#  or dst(idx) = scale / src2(idx) if src1 == 0
	#
#	sub cvDiv( OpenCV2::Arr $src1,
#		   OpenCV2::Arr $src2,
#		   OpenCV2::Arr $dst,
#		   num64 $scale = 1.0 )
#		is native(LIB) { * }
#
#	method div( OpenCV2::Arr $src2, num64 $scale = 1.0 )
#		returns OpenCV2::Arr
#		{
#		my OpenCV2::Arr $dst = OpenCV2::Arr.new;
#
#		cvDiv( self, $src2, $dst, $scale );
#
#		$dst
#		}

	# dst = src1 * scale + src2
	#
	sub cvScaleAdd( OpenCV2::Arr    $src1,
			OpenCV2::Scalar $scale,
			OpenCV2::Arr    $src2,
			OpenCV2::Arr    $dst )
		is native(LIB) { * }

	method scaleAdd( OpenCV2::Scalar $scale, OpenCV2::Arr $src2 )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvScaleAdd( self, $scale, $src2, $dst );

		$dst
		}

	# dst = src1 * alpha + src2 * beta + gamma
	#
	sub cvAddWeighted( OpenCV2::Arr $src1,
			   num64        $alpha,
			   OpenCV2::Arr $src2,
			   num64        $beta,
			   num64        $gamma,
			   OpenCV2::Arr $dst )
		is native(LIB) { * }

	method addWeighted( $alpha, $src2, $beta, $gamma )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvAddWeighted( self, $alpha, $src2, $beta, $gamma, $dst );

		$dst
		}

	# result = sum_i(src1(i) * src2(i)) (results for all channels are accumulated together)
	#
	sub cvDotProduct( OpenCV2::Arr $src1, OpenCV2::Arr $src2 )
		returns num64
		is native(LIB) { * }

	method dotProduct( OpenCV2::Arr $src2 )
		returns num64
		{
		cvDotProduct( self, $src2 )
		}

	# dst(idx) = src1(idx) & src2(idx)
	#
	sub cvAnd( OpenCV2::Arr $src1,
		   OpenCV2::Arr $src2,
		   OpenCV2::Arr $dst,
		   OpenCV2::Arr $mask = Nil )
		is native(LIB) { * }

	method and( OpenCV2::Arr $src2, OpenCV2::Arr $mask )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvAnd( self, $src2, $dst, $mask );

		$dst
		}

	# dst(idx) = src1(idx) & value
	#
	sub cvAndS( OpenCV2::Arr $src1,
		    OpenCV2::Scalar $value,
		    OpenCV2::Arr $dst,
		    OpenCV2::Arr $mask = Nil )
		is native(LIB) { * }

	method andS( OpenCV2::Scalar $value, OpenCV2::Arr $mask = Nil )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvAndS( self, $value, $dst, $mask );

		$dst
		}

	# dst(idx) = src1(idx) | src2(idx)
	#
	sub cvOr( OpenCV2::Arr $src1,
		  OpenCV2::Arr $src2,
		  OpenCV2::Arr $dst,
		  OpenCV2::Arr $mask = Nil )
		is native(LIB) { * }

	method or( OpenCV2::Arr $src2, OpenCV2::Arr $mask )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvOr( self, $src2, $dst, $mask );

		$dst
		}

	# dst(idx) = src1(idx) | value
	#
	sub cvOrS( OpenCV2::Arr $src1,
		   OpenCV2::Scalar $value,
		   OpenCV2::Arr $dst,
		   OpenCV2::Arr $mask = Nil )
		is native(LIB) { * }

	method orS( OpenCV2::Scalar $value, OpenCV2::Arr $mask = Nil )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvOrS( self, $value, $dst, $mask );

		$dst
		}

	# dst(idx) = src1(idx) ^ src2(idx)
	#
	sub cvXor( OpenCV2::Arr $src1,
		   OpenCV2::Arr $src2,
		   OpenCV2::Arr $dst,
		   OpenCV2::Arr $mask = Nil )
		is native(LIB) { * }

	method xor( OpenCV2::Arr $src2, OpenCV2::Arr $mask )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvXor( self, $src2, $dst, $mask );

		$dst
		}

	# dst(idx) = src1(idx) ^ value
	#
	sub cvXorS( OpenCV2::Arr    $src1,
		    OpenCV2::Scalar $value,
		    OpenCV2::Arr    $dst,
		    OpenCV2::Arr    $mask = Nil )
		is native(LIB) { * }

	method xorS( OpenCV2::Scalar $value, OpenCV2::Arr $mask = Nil )
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvXorS( self, $value, $dst, $mask );

		$dst
		}

	# dst(idx) = ~src1(idx)
	#
	sub cvNot( OpenCV2::Arr $src1,
		   OpenCV2::Arr $dst )
		is native(LIB) { * }

	method not()
		returns OpenCV2::Arr
		{
		my OpenCV2::Arr $dst = OpenCV2::Arr.new;

		cvNot( self, $dst );

		$dst
		}
	}

### ###########################################################################
### 
### # ptr = &arr(idx0,idx1,...). All indexes are zero-based,
### # the major dimensions go first (e.g. (y,x) for 2D, (z,y,x) for 3D
### #
### uchar* cvPtr1D( const CvArr* arr, int idx0, int* type CV_DEFAULT(NULL));
### uchar* cvPtr2D( const CvArr* arr, int idx0, int idx1, int* type CV_DEFAULT(NULL) );
### uchar* cvPtr3D( const CvArr* arr, int idx0, int idx1, int idx2,
###                       int* type CV_DEFAULT(NULL));
### 
### # For CvMat or IplImage number of indices should be 2
### # (row index (y) goes first, column index (x) goes next).
### # For CvMatND or CvSparseMat number of infices should match number of <dims> and
### # indices order should match the array dimension order.
### #
### uchar* cvPtrND( const CvArr* arr, const int* idx, int* type CV_DEFAULT(NULL),
###                 int create_node CV_DEFAULT(1),
###                 unsigned* precalc_hashval CV_DEFAULT(NULL));
### 
### #define cvReshapeND( arr, header, new_cn, new_dims, new_sizes )   \
###       cvReshapeMatND( (arr), sizeof(*(header)), (header),         \
###                       (new_cn), (new_dims), (new_sizes))
### 
### # Retrieves raw data of CvMat, IplImage or CvMatND.
### # In the latter case the function raises an error if
### # the array can not be represented as a matrix
### #
### void cvGetRawData( const CvArr* arr, uchar** data,
###                    int* step CV_DEFAULT(NULL),
###                    CvSize* roi_size CV_DEFAULT(NULL));
### 
### # Retrieves raw data of CvMat, IplImage or CvMatND.
### # In the latter case the function raises an error if
### # the array can not be represented as a matrix
### #
### void cvGetRawData( const CvArr* arr, uchar** data,
###                    int* step CV_DEFAULT(NULL),
###                    CvSize* roi_size CV_DEFAULT(NULL));
### 
### # Copies several channels from input arrays to
### # certain channels of output arrays
### #
### void cvMixChannels( const CvArr** src, int src_count,
###                     CvArr** dst, int dst_count,
###                     const int* from_to, int pair_count );
### 
### #define cvCvtScale cvConvertScale
### #define cvScale  cvConvertScale
### #define cvConvert( src, dst )  cvConvertScale( (src), (dst), 1, 0 )
### 
### #define cvCvtScaleAbs cvConvertScaleAbs
### 
### # dst(mask) = src(mask) - value = src(mask) + (-value)
### #
### CV_INLINE void cvSubS( const CvArr* src, CvScalar value, CvArr* dst,
###                        const CvArr* mask CV_DEFAULT(NULL))
### {
###     cvAddS( src, cvScalar( -value.val[0], -value.val[1], -value.val[2], -value.val[3]),
###             dst, mask );
### }
### 
### #define cvAXPY( A, real_scalar, B, C ) cvScaleAdd(A, cvRealScalar(real_scalar), B, C)
### 
### # dst(idx) = lower(idx) <= src(idx) < upper(idx)
### #
### void cvInRange( const CvArr* src, const CvArr* lower,
###                 const CvArr* upper, CvArr* dst );
### 
### # dst(idx) = lower <= src(idx) < upper
### #
### void cvInRangeS( const CvArr* src, CvScalar lower, CvScalar upper, CvArr* dst );
### 
### # The comparison operation support single-channel arrays only.
### # Destination image should be 8uC1 or 8sC1
### 
### # dst(idx) = src1(idx) _cmp_op_ src2(idx)
### #
### void cvCmp( const CvArr* src1, const CvArr* src2, CvArr* dst, int cmp_op );
### 
### # dst(idx) = src1(idx) _cmp_op_ value
### #
### void cvCmpS( const CvArr* src, double value, CvArr* dst, int cmp_op );
### 
### # dst(idx) = min(src1(idx),src2(idx))
### #
### void cvMin( const CvArr* src1, const CvArr* src2, CvArr* dst );
### 
### # dst(idx) = max(src1(idx),src2(idx))
### #
### void cvMax( const CvArr* src1, const CvArr* src2, CvArr* dst );
### 
### # dst(idx) = min(src(idx),value)
### #
### void cvMinS( const CvArr* src, double value, CvArr* dst );
### 
### # dst(idx) = max(src(idx),value)
### #
### void cvMaxS( const CvArr* src, double value, CvArr* dst );
### 
### # dst(x,y,c) = abs(src1(x,y,c) - src2(x,y,c))
### #
### void cvAbsDiff( const CvArr* src1, const CvArr* src2, CvArr* dst );
### 
### # dst(x,y,c) = abs(src(x,y,c) - value(c))
### #
### void cvAbsDiffS( const CvArr* src, CvArr* dst, CvScalar value );
### #define cvAbs( src, dst ) cvAbsDiffS( (src), (dst), cvScalarAll(0))
### 
### # Does cartesian->polar coordinates conversion.
### # Either of output components (magnitude or angle) is optional
### #
### void cvCartToPolar( const CvArr* x, const CvArr* y,
###                     CvArr* magnitude, CvArr* angle CV_DEFAULT(NULL),
###                     int angle_in_degrees CV_DEFAULT(0));
### 
### # Does polar->cartesian coordinates conversion.
### # Either of output components (magnitude or angle) is optional.
### # If magnitude is missing it is assumed to be all 1's
### #
### void cvPolarToCart( const CvArr* magnitude, const CvArr* angle,
###                     CvArr* x, CvArr* y,
###                     int angle_in_degrees CV_DEFAULT(0));
### 
### # Does powering: dst(idx) = src(idx)^power
### #
### void cvPow( const CvArr* src, CvArr* dst, double power );
### 
### # Does exponention: dst(idx) = exp(src(idx)).
### # Overflow is not handled yet. Underflow is handled.
### # Maximal relative error is ~7e-6 for single-precision input
### #
### void cvExp( const CvArr* src, CvArr* dst );
### 
### # Calculates natural logarithms: dst(idx) = log(abs(src(idx))).
### # Logarithm of 0 gives large negative number(~-700)
### # Maximal relative error is ~3e-7 for single-precision output
### #
### void cvLog( const CvArr* src, CvArr* dst );
### 
### # Checks array values for NaNs, Infs or simply for too large numbers
### # (if CV_CHECK_RANGE is set). If CV_CHECK_QUIET is set,
### # no runtime errors is raised (function returns zero value in case of "bad" values).
### # Otherwise cvError is called
### #
### int cvCheckArr( const CvArr* arr, int flags CV_DEFAULT(0),
###                 double min_val CV_DEFAULT(0), double max_val CV_DEFAULT(0));
### #define cvCheckArray cvCheckArr
### 
### void cvSort( const CvArr* src, CvArr* dst CV_DEFAULT(NULL),
###              CvArr* idxmat CV_DEFAULT(NULL),
###              int flags CV_DEFAULT(0));
### 
### # Calculates cross product of two 3d vectors
### #
### void cvCrossProduct( const CvArr* src1, const CvArr* src2, CvArr* dst );
### 
### # Extended matrix transform:
### # dst = alpha*op(A)*op(B) + beta*op(C), where op(X) is X or X^T
### #
### void cvGEMM( const CvArr* src1, const CvArr* src2, double alpha,
###              const CvArr* src3, double beta, CvArr* dst,
###              int tABC CV_DEFAULT(0));
### #define cvMatMulAddEx cvGEMM
### 
### # Calculates (A-delta)*(A-delta)^T (order=0) or (A-delta)^T*(A-delta) (order=1)
### #
### void cvMulTransposed( const CvArr* src, CvArr* dst, int order,
###                       const CvArr* delta CV_DEFAULT(NULL),
###                       double scale CV_DEFAULT(1.) );
### 
### # Tranposes matrix. Square matrices can be transposed in-place
### #
### void cvTranspose( const CvArr* src, CvArr* dst );
### #define cvT cvTranspose
### 
### # Mirror array data around horizontal (flip=0),
### # vertical (flip=1) or both(flip=-1) axises:
### # cvFlip(src) flips images vertically and sequences horizontally (inplace)
### #
### void cvFlip( const CvArr* src, CvArr* dst CV_DEFAULT(NULL),
###              int flip_mode CV_DEFAULT(0));
### #define cvMirror cvFlip
### 
### # Performs Singular Value Decomposition of a matrix
### #
### void cvSVD( CvArr* A, CvArr* W, CvArr* U CV_DEFAULT(NULL),
###             CvArr* V CV_DEFAULT(NULL), int flags CV_DEFAULT(0));
### 
### # Performs Singular Value Back Substitution (solves A*X = B):
### # flags must be the same as in cvSVD
### #
### void cvSVBkSb( const CvArr* W, const CvArr* U,
###                const CvArr* V, const CvArr* B,
###                CvArr* X, int flags );
### 
### # Inverts matrix
### #
### double cvInvert( const CvArr* src, CvArr* dst, int method CV_DEFAULT(CV_LU));
### #define cvInv cvInvert
### 
### # Solves linear system (src1)*(dst) = (src2)
### # (returns 0 if src1 is a singular and CV_LU method is used)
### #
### int cvSolve( const CvArr* src1, const CvArr* src2, CvArr* dst,
###              int method CV_DEFAULT(CV_LU));
### 
### # Calculates determinant of input matrix
### #
### double cvDet( const CvArr* mat );
### 
### # Calculates trace of the matrix (sum of elements on the main diagonal)
### #
### CvScalar cvTrace( const CvArr* mat );
### 
### # Finds eigen values and vectors of a symmetric matrix
### #
### void cvEigenVV( CvArr* mat, CvArr* evects, CvArr* evals,
###                 double eps CV_DEFAULT(0),
###                 int lowindex CV_DEFAULT(-1),
###                 int highindex CV_DEFAULT(-1));
### 
### # Makes an identity matrix (mat_ij = i == j)
### #
### void cvSetIdentity( CvArr* mat, CvScalar value CV_DEFAULT(cvRealScalar(1)) );
### 
### # Fills matrix with given range of numbers
### #
### CvArr* cvRange( CvArr* mat, double start, double end );
### 
### # Calculates covariation matrix for a set of vectors
### # transpose([v1-avg, v2-avg,...]) * [v1-avg,v2-avg,...]
### #
### # [v1-avg, v2-avg,...] * transpose([v1-avg,v2-avg,...])
### #
### # do not calc average (i.e. mean vector) - use the input vector instead
### # (useful for calculating covariance matrix by parts) */
### #
### # scale the covariance matrix coefficients by number of the vectors
### #
### # all the input vectors are stored in a single matrix, as its rows
### #
### # all the input vectors are stored in a single matrix, as its columns
### #
### void cvCalcCovarMatrix( const CvArr** vects, int count,
###                         CvArr* cov_mat, CvArr* avg, int flags );
### 
### void cvCalcPCA( const CvArr* data, CvArr* mean,
###                 CvArr* eigenvals, CvArr* eigenvects, int flags );
### 
### void cvProjectPCA( const CvArr* data, const CvArr* mean,
###                    const CvArr* eigenvects, CvArr* result );
### 
### void cvBackProjectPCA( const CvArr* proj, const CvArr* mean,
###                        const CvArr* eigenvects, CvArr* result );
### 
### # Calculates Mahalanobis(weighted) distance
### #
### double cvMahalanobis( const CvArr* vec1, const CvArr* vec2, const CvArr* mat );
### #define cvMahalonobis cvMahalanobis
### 
### # Finds sum of array elements
### #
### CvScalar cvSum( const CvArr* arr );
### 
### # Calculates number of non-zero pixels
### #
### int cvCountNonZero( const CvArr* arr );
### 
### # Calculates mean value of array elements
### #
### CvScalar cvAvg( const CvArr* arr, const CvArr* mask CV_DEFAULT(NULL) );
### 
### # Calculates mean and standard deviation of pixel values
### #
### void cvAvgSdv( const CvArr* arr, CvScalar* mean, CvScalar* std_dev,
###                const CvArr* mask CV_DEFAULT(NULL) );
### 
### # Finds global minimum, maximum and their positions
### #
### void cvMinMaxLoc( const CvArr* arr, double* min_val, double* max_val,
###                   CvPoint* min_loc CV_DEFAULT(NULL),
###                   CvPoint* max_loc CV_DEFAULT(NULL),
###                   const CvArr* mask CV_DEFAULT(NULL) );
### 
### # Finds norm, difference norm or relative difference norm for an array (or two arrays)
### #
### double cvNorm( const CvArr* arr1, const CvArr* arr2 CV_DEFAULT(NULL),
###                int norm_type CV_DEFAULT(CV_L2),
###                const CvArr* mask CV_DEFAULT(NULL) );
### 
### void cvNormalize( const CvArr* src, CvArr* dst,
###                   double a CV_DEFAULT(1.), double b CV_DEFAULT(0.),
###                   int norm_type CV_DEFAULT(CV_L2),
###                   const CvArr* mask CV_DEFAULT(NULL) );
### 
### void cvReduce( const CvArr* src, CvArr* dst, int dim CV_DEFAULT(-1),
###                int op CV_DEFAULT(CV_REDUCE_SUM) );
### 
### # Discrete Fourier Transform:
### #  complex->complex,
### #  real->ccs (forward),
### #  ccs->real (inverse)
### #
### void cvDFT( const CvArr* src, CvArr* dst, int flags,
###             int nonzero_rows CV_DEFAULT(0) );
### #define cvFFT cvDFT
### 
### # Multiply results of DFTs: DFT(X)*DFT(Y) or DFT(X)*conj(DFT(Y))
### #
### void cvMulSpectrums( const CvArr* src1, const CvArr* src2,
###                      CvArr* dst, int flags );
### 
### # Discrete Cosine Transform
### #
### void cvDCT( const CvArr* src, CvArr* dst, int flags );
### 
### # Draws 4-connected, 8-connected or antialiased line segment connecting two points
### #
### void cvLine( CvArr* img, CvPoint pt1, CvPoint pt2,
###              CvScalar color, int thickness CV_DEFAULT(1),
###              int line_type CV_DEFAULT(8), int shift CV_DEFAULT(0) );
### 
### # Draws a rectangle given two opposite corners of the rectangle (pt1 & pt2),
### # if thickness<0 (e.g. thickness == CV_FILLED), the filled box is drawn
### #
### void cvRectangle( CvArr* img, CvPoint pt1, CvPoint pt2,
###                   CvScalar color, int thickness CV_DEFAULT(1),
###                   int line_type CV_DEFAULT(8),
###                   int shift CV_DEFAULT(0));
### 
### # Draws a rectangle specified by a CvRect structure
### #
### void cvRectangleR( CvArr* img, CvRect r,
###                    CvScalar color, int thickness CV_DEFAULT(1),
###                    int line_type CV_DEFAULT(8),
###                    int shift CV_DEFAULT(0));
### 
### # Draws a circle with specified center and radius.
### # Thickness works in the same way as with cvRectangle
### #
### void cvCircle( CvArr* img, CvPoint center, int radius,
###                CvScalar color, int thickness CV_DEFAULT(1),
###                int line_type CV_DEFAULT(8), int shift CV_DEFAULT(0));
### 
### # Draws ellipse outline, filled ellipse, elliptic arc or filled elliptic sector,
###    depending on <thickness>, <start_angle> and <end_angle> parameters. The resultant figure
### #   is rotated by <angle>. All the angles are in degrees
### #
### void cvEllipse( CvArr* img, CvPoint center, CvSize axes,
###                 double angle, double start_angle, double end_angle,
###                 CvScalar color, int thickness CV_DEFAULT(1),
###                 int line_type CV_DEFAULT(8), int shift CV_DEFAULT(0));
### 
### # Fills convex or monotonous polygon.
### #
### void cvFillConvexPoly( CvArr* img, const CvPoint* pts, int npts, CvScalar color,
###                        int line_type CV_DEFAULT(8), int shift CV_DEFAULT(0));
### 
### # Fills an area bounded by one or more arbitrary polygons
### #
### void cvFillPoly( CvArr* img, CvPoint** pts, const int* npts,
###                  int contours, CvScalar color,
###                  int line_type CV_DEFAULT(8), int shift CV_DEFAULT(0) );
### 
### # Draws one or more polygonal curves
### #
### void cvPolyLine( CvArr* img, CvPoint** pts, const int* npts, int contours,
###                  int is_closed, CvScalar color, int thickness CV_DEFAULT(1),
###                  int line_type CV_DEFAULT(8), int shift CV_DEFAULT(0) );
### 
### # Initializes line iterator. Initially, line_iterator->ptr will point
### # to pt1 (or pt2, see left_to_right description) location in the image.
### # Returns the number of pixels on the line between the ending points.
### #
### int cvInitLineIterator( const CvArr* image, CvPoint pt1, CvPoint pt2,
###                         CvLineIterator* line_iterator,
###                         int connectivity CV_DEFAULT(8),
###                         int left_to_right CV_DEFAULT(0));
### 
### # Renders text stroke with specified font and color at specified location.
### # CvFont should be initialized with cvInitFont
### #
### void cvPutText( CvArr* img, const char* text, CvPoint org,
###                 const CvFont* font, CvScalar color );
### 
### # Draws contour outlines or filled interiors on the image
### #
### void cvDrawContours( CvArr *img, CvSeq* contour,
###                      CvScalar external_color, CvScalar hole_color,
###                      int max_level, int thickness CV_DEFAULT(1),
###                      int line_type CV_DEFAULT(8),
###                      CvPoint offset CV_DEFAULT(cvPoint(0,0)));
### 
### # Does look-up transformation. Elements of the source array
### # (that should be 8uC1 or 8sC1) are used as indexes in lutarr 256-element table
### #
### void cvLUT( const CvArr* src, CvArr* dst, const CvArr* lut );
### 
### # The function implements the K-means algorithm for clustering an array of sample
### # vectors in a specified number of classes
### int cvKMeans2( const CvArr* samples, int cluster_count, CvArr* labels,
###                CvTermCriteria termcrit, int attempts CV_DEFAULT(1),
###                CvRNG* rng CV_DEFAULT(0), int flags CV_DEFAULT(0),
###                CvArr* _centers CV_DEFAULT(0), double* compactness CV_DEFAULT(0) );
### 
### # initializes iterator that traverses through several arrays simulteneously
### # (the function together with cvNextArraySlice is used for
### #  N-ary element-wise operations)
### #
### int cvInitNArrayIterator( int count, CvArr** arrs,
###                           const CvArr* mask, CvMatND* stubs,
###                           CvNArrayIterator* array_iterator,
###                           int flags CV_DEFAULT(0) );
### 
### void cvRandArr( CvRNG* rng, CvArr* arr, int dist_type,
###                 CvScalar param1, CvScalar param2 );
### 
### void cvRandShuffle( CvArr* mat, CvRNG* rng, double iter_factor CV_DEFAULT(1.));
### 
### # Transforms each element of source array and stores
### # resultant vectors in destination array
### #
### void cvTransform( const CvArr* src, CvArr* dst,
###                   const CvMat* transmat,
###                   const CvMat* shiftvec CV_DEFAULT(NULL));
### #define cvMatMulAddS cvTransform
### 
### # Does perspective transform on every element of input array
### #
### void cvPerspectiveTransform( const CvArr* src, CvArr* dst,
###                              const CvMat* mat );
### 
### # Select a diagonal of the input array.
### # (diag = 0 means the main diagonal, >0 means a diagonal above the main one,
### # <0 - below the main one).
### # The diagonal will be represented as a column (nx1 matrix).
### #
### CvMat* cvGetDiag( const CvArr* arr, CvMat* submat, int diag CV_DEFAULT(0));
### 
### ##############################################################################
### 
### # Allocates and initalizes CvMat header
### #
### CvMat* cvCreateMatHeader( int rows, int cols, int type );
### 
### # Initializes CvMat header
### #
### CvMat* cvInitMatHeader( CvMat* mat, int rows, int cols,
###                         int type, void* data CV_DEFAULT(NULL),
###                         int step CV_DEFAULT(CV_AUTOSTEP) );
### 
### # Allocates and initializes CvMat header and allocates data
### #
### CvMat* cvCreateMat( int rows, int cols, int type );
### 
### # Releases CvMat header and deallocates matrix data
### # (reference counting is used for data)
### #
### void cvReleaseMat( CvMat** mat );
### 
### # Creates an exact copy of the input matrix (except, may be, step value)
### #
### CvMat* cvCloneMat( const CvMat* mat );
### 
### # Makes a new matrix from <rect> subrectangle of input array.
### # No data is copied
### #
### CvMat* cvGetSubRect( const CvArr* arr, CvMat* submat, CvRect rect );
### #define cvGetSubArr cvGetSubRect
### 
### # Selects row span of the input array: arr(start_row:delta_row:end_row,:)
### #  (end_row is not included into the span).
### #
### CvMat* cvGetRows( const CvArr* arr, CvMat* submat,
###                   int start_row, int end_row,
###                   int delta_row CV_DEFAULT(1));
### 
### # Selects column span of the input array: arr(:,start_col:end_col)
### # (end_col is not included into the span)
### #
### CvMat* cvGetCols( const CvArr* arr, CvMat* submat, int start_col, int end_col );
### 
### # Converts CvArr (IplImage or CvMat,...) to CvMat.
### # If the last parameter is non-zero, function can
### # convert multi(>2)-dimensional array to CvMat as long as
### # the last array's dimension is continous. The resultant
### # matrix will be have appropriate (a huge) number of rows
### #
### CvMat* cvGetMat( const CvArr* arr, CvMat* header,
###                  int* coi CV_DEFAULT(NULL),
###                  int allowND CV_DEFAULT(0));
### 
### CvMat* cvReshape( const CvArr* arr, CvMat* header,
###                   int new_cn, int new_rows CV_DEFAULT(0) );
### 
### # Finds real roots of a cubic equation
### #
### int cvSolveCubic( const CvMat* coeffs, CvMat* roots );
### 
### # Finds all real and complex roots of a polynomial equation
### #
### void cvSolvePoly( const CvMat* coeffs, CvMat *roots2,
###                   int maxiter CV_DEFAULT(20), int fig CV_DEFAULT(100));
### 
### # Completes the symmetric matrix from the lower (LtoR=0) or from the upper (LtoR!=0) part
### #
### void cvCompleteSymm( CvMat* matrix, int LtoR CV_DEFAULT(0) );
### 
### ##############################################################################
### 
### 
### 
### 
### 
### 
### 
### 
### 
### 
### 
### 
### 
### 
### #******************************************************************************
### #    Array allocation, deallocation, initialization and access to elements
### #******************************************************************************
### 
### CV_INLINE CvMat* cvGetRow( const CvArr* arr, CvMat* submat, int row )
### {
###     return cvGetRows( arr, submat, row, row + 1, 1 );
### }
### 
### CV_INLINE CvMat* cvGetCol( const CvArr* arr, CvMat* submat, int col )
### {
###     return cvGetCols( arr, submat, col, col + 1 );
### }
### 
### # low-level scalar <-> raw data conversion functions
### #
### void cvScalarToRawData( const CvScalar* scalar, void* data, int type,
###                         int extend_to_12 CV_DEFAULT(0) );
### 
### void cvRawDataToScalar( const void* data, int type, CvScalar* scalar );
### 
### # Allocates and initializes CvMatND header
### #
### CvMatND* cvCreateMatNDHeader( int dims, const int* sizes, int type );
### 
### # Allocates and initializes CvMatND header and allocates data
### #
### CvMatND* cvCreateMatND( int dims, const int* sizes, int type );
### 
### # Initializes preallocated CvMatND header
### #
### CvMatND* cvInitMatNDHeader( CvMatND* mat, int dims, const int* sizes,
###                             int type, void* data CV_DEFAULT(NULL) );
### 
### # Releases CvMatND
### #
### CV_INLINE void cvReleaseMatND( CvMatND** mat )
### {
###     cvReleaseMat( (CvMat**)mat );
### }
### 
### # Creates a copy of CvMatND (except, may be, steps)
### #
### CvMatND* cvCloneMatND( const CvMatND* mat );
### 
### # Allocates and initializes CvSparseMat header and allocates data
### #
### CvSparseMat* cvCreateSparseMat( int dims, const int* sizes, int type );
### 
### # Releases CvSparseMat
### #
### void cvReleaseSparseMat( CvSparseMat** mat );
### 
### # Creates a copy of CvSparseMat (except, may be, zero items)
### #
### CvSparseMat* cvCloneSparseMat( const CvSparseMat* mat );
### 
### # Initializes sparse array iterator
### # (returns the first node or NULL if the array is empty)
### #
### CvSparseNode* cvInitSparseMatIterator( const CvSparseMat* mat,
###                                        CvSparseMatIterator* mat_iterator );
### 
### # returns next sparse array node (or NULL if there is no more nodes)
### #
### CV_INLINE CvSparseNode* cvGetNextSparseNode( CvSparseMatIterator* mat_iterator )
### {
###     if( mat_iterator->node->next )
###         return mat_iterator->node = mat_iterator->node->next;
###     else
###     {
###         int idx;
###         for( idx = ++mat_iterator->curidx; idx < mat_iterator->mat->hashsize; idx++ )
###         {
###             CvSparseNode* node = (CvSparseNode*)mat_iterator->mat->hashtable[idx];
###             if( node )
###             {
###                 mat_iterator->curidx = idx;
###                 return mat_iterator->node = node;
###             }
###         }
###         return NULL;
###     }
### }
### 
### #********** matrix iterator: used for n-ary operations on dense arrays ********/
### 
### typedef struct CvNArrayIterator
### {
###     int count; /* number of arrays */
###     int dims; /* number of dimensions to iterate */
###     CvSize size; /* maximal common linear size: { width = size, height = 1 } */
###     uchar* ptr[CV_MAX_ARR]; /* pointers to the array slices */
###     int stack[CV_MAX_DIM]; /* for internal use */
###     CvMatND* hdr[CV_MAX_ARR]; /* pointers to the headers of the
###                                  matrices that are processed */
### }
### CvNArrayIterator;
### 
### # returns zero value if iteration is finished, non-zero (slice length) otherwise# 
### int cvNextNArraySlice( CvNArrayIterator* array_iterator );
### 
### # checks termination criteria validity and
### # sets eps to default_eps (if it is not set),
### # max_iter to default_max_iters (if it is not set)
### #
### CvTermCriteria cvCheckTermCriteria( CvTermCriteria criteria,
###                                     double default_eps,
###                                     int default_max_iters );
### 
### #******************************************************************************
### #                 Arithmetic, logic and comparison operations
### #******************************************************************************
### 
### #*******************************************************************************
### #                                Math operations
### #*******************************************************************************
### 
### #*******************************************************************************
### #                                Matrix operations
### #*******************************************************************************
### 
### # Matrix transform: dst = A*B + C, C is optional
### #
### #define cvMatMulAdd( src1, src2, src3, dst ) cvGEMM( (src1), (src2), 1., (src3), 1., (dst), 0 )
### #define cvMatMul( src1, src2, dst )  cvMatMulAdd( (src1), (src2), NULL, (dst))
### 
### # Calculates length of sequence slice (with support of negative indices).
### #
### int cvSliceLength( CvSlice slice, const CvSeq* seq );
### 
### # Creates new memory storage.
### # block_size == 0 means that default,
### # somewhat optimal size, is used (currently, it is 64K)
### #
### CvMemStorage* cvCreateMemStorage( int block_size CV_DEFAULT(0));
### 
### # Creates a memory storage that will borrow memory blocks from parent storage
### #
### CvMemStorage* cvCreateChildMemStorage( CvMemStorage* parent );
### 
### # Releases memory storage. All the children of a parent must be released before
### # the parent. A child storage returns all the blocks to parent when it is released
### #
### void cvReleaseMemStorage( CvMemStorage** storage );
### 
### 
### # Clears memory storage. This is the only way(!!!) (besides cvRestoreMemStoragePos)
### # to reuse memory allocated for the storage - cvClearSeq,cvClearSet ...
### # do not free any memory.
### # A child storage returns all the blocks to the parent when it is cleared
### #
### void cvClearMemStorage( CvMemStorage* storage );
### 
### # Remember a storage "free memory" position
### #
### void cvSaveMemStoragePos( const CvMemStorage* storage, CvMemStoragePos* pos );
### 
### # Restore a storage "free memory" position
### #
### void cvRestoreMemStoragePos( CvMemStorage* storage, CvMemStoragePos* pos );
### 
### # Allocates continuous buffer of the specified size in the storage
### #
### void* cvMemStorageAlloc( CvMemStorage* storage, size_t size );
### 
### # Allocates string in memory storage
### #
### CvString cvMemStorageAllocString( CvMemStorage* storage, const char* ptr,
###                                   int len CV_DEFAULT(-1) );
### 
### # Creates new empty sequence that will reside in the specified storage
### #
### CvSeq* cvCreateSeq( int seq_flags, size_t header_size,
###                     size_t elem_size, CvMemStorage* storage );
### 
### # Changes default size (granularity) of sequence blocks.
### # The default size is ~1Kbyte
### #
### void cvSetSeqBlockSize( CvSeq* seq, int delta_elems );
### 
### # Adds new element to the end of sequence. Returns pointer to the element
### #
### schar* cvSeqPush( CvSeq* seq, const void* element CV_DEFAULT(NULL));
### 
### # Adds new element to the beginning of sequence. Returns pointer to it
### #
### schar* cvSeqPushFront( CvSeq* seq, const void* element CV_DEFAULT(NULL));
### 
### # Removes the last element from sequence and optionally saves it
### #
### void cvSeqPop( CvSeq* seq, void* element CV_DEFAULT(NULL));
### 
### # Removes the first element from sequence and optioanally saves it
### #
### void cvSeqPopFront( CvSeq* seq, void* element CV_DEFAULT(NULL));
### 
### # Adds several new elements to the end of sequence
### #
### void cvSeqPushMulti( CvSeq* seq, const void* elements,
###                      int count, int in_front CV_DEFAULT(0) );
### 
### # Removes several elements from the end of sequence and optionally saves them
### #
### void cvSeqPopMulti( CvSeq* seq, void* elements,
###                     int count, int in_front CV_DEFAULT(0) );
### 
### # Inserts a new element in the middle of sequence.
### # cvSeqInsert(seq,0,elem) == cvSeqPushFront(seq,elem)
### #
### schar* cvSeqInsert( CvSeq* seq, int before_index,
###                     const void* element CV_DEFAULT(NULL));
### 
### # Removes specified sequence element
### #
### void cvSeqRemove( CvSeq* seq, int index );
### 
### # Removes al the elements from the sequence. The freed memory
### # can be reused later only by the same sequence unless cvClearMemStorage
### # or cvRestoreMemStoragePos is called
### #
### void cvClearSeq( CvSeq* seq );
### 
### # Retrieves pointer to specified sequence element.
### # Negative indices are supported and mean counting from the end
### # (e.g -1 means the last sequence element)
### #
### schar* cvGetSeqElem( const CvSeq* seq, int index );
### 
### # Calculates index of the specified sequence element.
### # Returns -1 if element does not belong to the sequence
### #
### int cvSeqElemIdx( const CvSeq* seq, const void* element,
###                   CvSeqBlock** block CV_DEFAULT(NULL) );
### 
### # Initializes sequence writer. The new elements will be added to the end of sequence
### #
### void cvStartAppendToSeq( CvSeq* seq, CvSeqWriter* writer );
### 
### # Combination of cvCreateSeq and cvStartAppendToSeq
### #
### void cvStartWriteSeq( int seq_flags, int header_size,
###                       int elem_size, CvMemStorage* storage,
###                       CvSeqWriter* writer );
### 
### # Closes sequence writer, updates sequence header and returns pointer
### # to the resultant sequence
### # (which may be useful if the sequence was created using cvStartWriteSeq))
### #
### CvSeq* cvEndWriteSeq( CvSeqWriter* writer );
### 
### # Updates sequence header. May be useful to get access to some of previously
### # written elements via cvGetSeqElem or sequence reader
### #
### void cvFlushSeqWriter( CvSeqWriter* writer );
### 
### # Initializes sequence reader.
### # The sequence can be read in forward or backward direction
### #
### void cvStartReadSeq( const CvSeq* seq, CvSeqReader* reader,
###                      int reverse CV_DEFAULT(0) );
### 
### # Returns current sequence reader position (currently observed sequence element)
### #
### int cvGetSeqReaderPos( CvSeqReader* reader );
### 
### # Changes sequence reader position. It may seek to an absolute or
### # to relative to the current position
### #
### void cvSetSeqReaderPos( CvSeqReader* reader, int index,
###                         int is_relative CV_DEFAULT(0));
### 
### /* Copies sequence content to a continuous piece of memory */
### void* cvCvtSeqToArray( const CvSeq* seq, void* elements,
###                        CvSlice slice CV_DEFAULT(CV_WHOLE_SEQ) );
### 
### # Creates sequence header for array.
### # After that all the operations on sequences that do not alter the content
### # can be applied to the resultant sequence
### #
### CvSeq* cvMakeSeqHeaderForArray( int seq_type, int header_size,
###                                 int elem_size, void* elements, int total,
###                                 CvSeq* seq, CvSeqBlock* block );
### 
### # Extracts sequence slice (with or without copying sequence elements)
### #
### CvSeq* cvSeqSlice( const CvSeq* seq, CvSlice slice,
###                    CvMemStorage* storage CV_DEFAULT(NULL),
###                    int copy_data CV_DEFAULT(0));
### 
### CV_INLINE CvSeq* cvCloneSeq( const CvSeq* seq, CvMemStorage* storage CV_DEFAULT(NULL))
### {
###     return cvSeqSlice( seq, CV_WHOLE_SEQ, storage, 1 );
### }
### 
### # Removes sequence slice
### #
### void cvSeqRemoveSlice( CvSeq* seq, CvSlice slice );
### 
### # Inserts a sequence or array into another sequence
### #
### void cvSeqInsertSlice( CvSeq* seq, int before_index, const CvArr* from_arr );
### 
### # a < b ? -1 : a > b ? 1 : 0
### #
### typedef int (CV_CDECL* CvCmpFunc)(const void* a, const void* b, void* userdata );
### 
### # Sorts sequence in-place given element comparison function
### #
### void cvSeqSort( CvSeq* seq, CvCmpFunc func, void* userdata CV_DEFAULT(NULL) );
### 
### # Finds element in a [sorted] sequence
### #
### schar* cvSeqSearch( CvSeq* seq, const void* elem, CvCmpFunc func,
###                     int is_sorted, int* elem_idx,
###                     void* userdata CV_DEFAULT(NULL) );
### 
### # Reverses order of sequence elements in-place
### #
### void cvSeqInvert( CvSeq* seq );
### 
### # Splits sequence into one or more equivalence classes using the specified criteria
### #
### int cvSeqPartition( const CvSeq* seq, CvMemStorage* storage,
###                             CvSeq** labels, CvCmpFunc is_equal, void* userdata );
### 
### #*********** Internal sequence functions ***********
### void cvCreateSeqBlock( CvSeqWriter* writer );
### 
### # Creates a new set
### #
### CvSet* cvCreateSet( int set_flags, int header_size,
###                     int elem_size, CvMemStorage* storage );
### 
### # Adds new element to the set and returns pointer to it
### #
### int cvSetAdd( CvSet* set_header, CvSetElem* elem CV_DEFAULT(NULL),
###               CvSetElem** inserted_elem CV_DEFAULT(NULL) );
### 
### # Fast variant of cvSetAdd
### #
### CV_INLINE CvSetElem* cvSetNew( CvSet* set_header )
### {
###     CvSetElem* elem = set_header->free_elems;
###     if( elem )
###     {
###         set_header->free_elems = elem->next_free;
###         elem->flags = elem->flags & CV_SET_ELEM_IDX_MASK;
###         set_header->active_count++;
###     }
###     else
###         cvSetAdd( set_header, NULL, (CvSetElem**)&elem );
###     return elem;
### }
### 
### # Removes set element given its pointer
### #
### CV_INLINE void cvSetRemoveByPtr( CvSet* set_header, void* elem )
### {
###     CvSetElem* _elem = (CvSetElem*)elem;
###     assert( _elem->flags >= 0 /*&& (elem->flags & CV_SET_ELEM_IDX_MASK) < set_header->total*/ );
###     _elem->next_free = set_header->free_elems;
###     _elem->flags = (_elem->flags & CV_SET_ELEM_IDX_MASK) | CV_SET_ELEM_FREE_FLAG;
###     set_header->free_elems = _elem;
###     set_header->active_count--;
### }
### 
### # Removes element from the set by its index
### #
### void cvSetRemove( CvSet* set_header, int index );
### 
### # Returns a set element by index. If the element doesn't belong to the set,
### # NULL is returned 
### #
### CV_INLINE CvSetElem* cvGetSetElem( const CvSet* set_header, int idx )
### {
###     CvSetElem* elem = (CvSetElem*)(void *)cvGetSeqElem( (CvSeq*)set_header, idx );
###     return elem && CV_IS_SET_ELEM( elem ) ? elem : 0;
### }
### 
### # Removes all the elements from the set
### #
### void cvClearSet( CvSet* set_header );
### 
### # Creates new graph
### #
### CvGraph* cvCreateGraph( int graph_flags, int header_size,
###                         int vtx_size, int edge_size,
###                         CvMemStorage* storage );
### 
### # Adds new vertex to the graph
### #
### int cvGraphAddVtx( CvGraph* graph, const CvGraphVtx* vtx CV_DEFAULT(NULL),
###                    CvGraphVtx** inserted_vtx CV_DEFAULT(NULL) );
### 
### # Removes vertex from the graph together with all incident edges
### #
### int cvGraphRemoveVtx( CvGraph* graph, int index );
### int cvGraphRemoveVtxByPtr( CvGraph* graph, CvGraphVtx* vtx );
### 
### # Link two vertices specifed by indices or pointers if they
### # are not connected or return pointer to already existing edge
### # connecting the vertices.
### # Functions return 1 if a new edge was created, 0 otherwise
### #
### int cvGraphAddEdge( CvGraph* graph,
###                     int start_idx, int end_idx,
###                     const CvGraphEdge* edge CV_DEFAULT(NULL),
###                     CvGraphEdge** inserted_edge CV_DEFAULT(NULL) );
### 
### int cvGraphAddEdgeByPtr( CvGraph* graph,
###                          CvGraphVtx* start_vtx, CvGraphVtx* end_vtx,
###                          const CvGraphEdge* edge CV_DEFAULT(NULL),
###                          CvGraphEdge** inserted_edge CV_DEFAULT(NULL) );
### 
### # Remove edge connecting two vertices
### #
### void cvGraphRemoveEdge( CvGraph* graph, int start_idx, int end_idx );
### void cvGraphRemoveEdgeByPtr( CvGraph* graph, CvGraphVtx* start_vtx,
###                              CvGraphVtx* end_vtx );
### 
### # Find edge connecting two vertices
### #
### CvGraphEdge* cvFindGraphEdge( const CvGraph* graph, int start_idx, int end_idx );
### CvGraphEdge* cvFindGraphEdgeByPtr( const CvGraph* graph,
###                                    const CvGraphVtx* start_vtx,
###                                    const CvGraphVtx* end_vtx );
### 
### #define cvGraphFindEdge cvFindGraphEdge
### #define cvGraphFindEdgeByPtr cvFindGraphEdgeByPtr
### 
### # Remove all vertices and edges from the graph
### #
### void cvClearGraph( CvGraph* graph );
### 
### # Count number of edges incident to the vertex
### #
### int cvGraphVtxDegree( const CvGraph* graph, int vtx_idx );
### int cvGraphVtxDegreeByPtr( const CvGraph* graph, const CvGraphVtx* vtx );
### 
### # Retrieves graph vertex by given index
### #
### #define cvGetGraphVtx( graph, idx ) (CvGraphVtx*)cvGetSetElem((CvSet*)(graph), (idx))
### 
### # Retrieves index of a graph vertex given its pointer
### #
### #define cvGraphVtxIdx( graph, vtx ) ((vtx)->flags & CV_SET_ELEM_IDX_MASK)
### 
### # Retrieves index of a graph edge given its pointer
### #
### #define cvGraphEdgeIdx( graph, edge ) ((edge)->flags & CV_SET_ELEM_IDX_MASK)
### 
### #define cvGraphGetVtxCount( graph ) ((graph)->active_count)
### #define cvGraphGetEdgeCount( graph ) ((graph)->edges->active_count)
### 
### # flags for graph vertices and edges
### #
### #define  CV_IS_GRAPH_VERTEX_VISITED(vtx) \
###     (((CvGraphVtx*)(vtx))->flags & CV_GRAPH_ITEM_VISITED_FLAG)
### #define  CV_IS_GRAPH_EDGE_VISITED(edge) \
###     (((CvGraphEdge*)(edge))->flags & CV_GRAPH_ITEM_VISITED_FLAG)
### 
### typedef struct CvGraphScanner
### {
###     CvGraphVtx* vtx;       # current graph vertex (or current edge origin)
###     CvGraphVtx* dst;       # current graph edge destination vertex
###     CvGraphEdge* edge;     # current edge
### 
###     CvGraph* graph;        # the graph
###     CvSeq*   stack;        # the graph vertex stack
###     int      index;        # the lower bound of certainly visited vertices
###     int      mask;         # event mask
### }
### CvGraphScanner;
### 
### # Creates new graph scanner.
### #
### CvGraphScanner* cvCreateGraphScanner( CvGraph* graph,
###                                       CvGraphVtx* vtx CV_DEFAULT(NULL),
###                                       int mask CV_DEFAULT(CV_GRAPH_ALL_ITEMS));
### 
### # Releases graph scanner.
### #
### void cvReleaseGraphScanner( CvGraphScanner** scanner );
### 
### # Get next graph element
### #
### int cvNextGraphItem( CvGraphScanner* scanner );
### 
### # Creates a copy of graph
### #
### CvGraph* cvCloneGraph( const CvGraph* graph, CvMemStorage* storage );
### 
### #*******************************************************************************
### #                                     Drawing
### #*******************************************************************************
### 
### #*******************************************************************************
### #       Drawing functions work with images/matrices of arbitrary type.
### #       For color images the channel order is BGR[A]
### #       Antialiasing is supported only for 8-bit image now.
### #       All the functions include parameter color that means rgb value (that may be
### #       constructed with CV_RGB macro) for color images and brightness
### #       for grayscale images.
### #       If a drawn figure is partially or completely outside of the image, it is clipped.
### #*******************************************************************************
### 
### #define CV_RGB( r, g, b )  cvScalar( (b), (g), (r), 0 )
### 
### CV_INLINE void cvEllipseBox( CvArr* img, CvBox2D box, CvScalar color,
###                              int thickness CV_DEFAULT(1),
###                              int line_type CV_DEFAULT(8), int shift CV_DEFAULT(0) )
### {
###     CvSize axes;
###     axes.width = cvRound(box.size.width*0.5);
###     axes.height = cvRound(box.size.height*0.5);
### 
###     cvEllipse( img, cvPointFrom32f( box.center ), axes, box.angle,
###                0, 360, color, thickness, line_type, shift );
### }
### 
### #define cvDrawRect cvRectangle
### #define cvDrawLine cvLine
### #define cvDrawCircle cvCircle
### #define cvDrawEllipse cvEllipse
### #define cvDrawPolyLine cvPolyLine
### 
### # Clips the line segment connecting *pt1 and *pt2
### # by the rectangular window
### # (0<=x<img_size.width, 0<=y<img_size.height).
### #
### int cvClipLine( CvSize img_size, CvPoint* pt1, CvPoint* pt2 );
### 
### # Moves iterator to the next line point
### #
### #define CV_NEXT_LINE_POINT( line_iterator )                     \
### {                                                               \
###     int _line_iterator_mask = (line_iterator).err < 0 ? -1 : 0; \
###     (line_iterator).err += (line_iterator).minus_delta +        \
###         ((line_iterator).plus_delta & _line_iterator_mask);     \
###     (line_iterator).ptr += (line_iterator).minus_step +         \
###         ((line_iterator).plus_step & _line_iterator_mask);      \
### }
### 
### 
### # Font structure
### #
### typedef struct CvFont
### {
###   const char* nameFont;   //Qt:nameFont
###   CvScalar color;       //Qt:ColorFont -> cvScalar(blue_component, green_component, red\_component[, alpha_component])
###     int         font_face;    //Qt: bool italic         /* =CV_FONT_* */
###     const int*  ascii;      /* font data and metrics */
###     const int*  greek;
###     const int*  cyrillic;
###     float       hscale, vscale;
###     float       shear;      /* slope coefficient: 0 - normal, >0 - italic */
###     int         thickness;    //Qt: weight               /* letters thickness */
###     float       dx;       /* horizontal interval between letters */
###     int         line_type;    //Qt: PointSize
### }
### CvFont;
### 
### /* Initializes font structure used further in cvPutText */
### void cvInitFont( CvFont* font, int font_face,
###                  double hscale, double vscale,
###                  double shear CV_DEFAULT(0),
###                  int thickness CV_DEFAULT(1),
###                  int line_type CV_DEFAULT(8));
### 
### CV_INLINE CvFont cvFont( double scale, int thickness CV_DEFAULT(1) )
### {
###     CvFont font;
###     cvInitFont( &font, CV_FONT_HERSHEY_PLAIN, scale, scale, 0, thickness, CV_AA );
###     return font;
### }
### 
### # Calculates bounding box of text stroke (useful for alignment)
### #
### void cvGetTextSize( const char* text_string, const CvFont* font,
###                     CvSize* text_size, int* baseline );
### 
### # Unpacks color value, if arrtype is CV_8UC?, <color> is treated as
### # packed color value, otherwise the first channels (depending on arrtype)
### # of destination scalar are set to the same value = <color>
### #
### CvScalar cvColorToScalar( double packed_color, int arrtype );
### 
### # Returns the polygon points which make up the given ellipse.  The ellipse is define by
### # the box of size 'axes' rotated 'angle' around the 'center'.  A partial sweep
### # of the ellipse arc can be done by spcifying arc_start and arc_end to be something
### # other than 0 and 360, respectively.  The input array 'pts' must be large enough to
### # hold the result.  The total number of points stored into 'pts' is returned by this
### # function.
### #
### int cvEllipse2Poly( CvPoint center, CvSize axes,
###                     int angle, int arc_start, int arc_end, CvPoint * pts, int delta );
### 
### #****************** Iteration through the sequence tree *****************
### typedef struct CvTreeNodeIterator
### {
###     const void* node;
###     int level;
###     int max_level;
### }
### CvTreeNodeIterator;
### 
### void cvInitTreeNodeIterator( CvTreeNodeIterator* tree_iterator,
###                              const void* first, int max_level );
### void* cvNextTreeNode( CvTreeNodeIterator* tree_iterator );
### void* cvPrevTreeNode( CvTreeNodeIterator* tree_iterator );
### 
### # Gathers pointers to all the sequences,
### # accessible from the <first>, to the single sequence
### #
### CvSeq* cvTreeToNodeSeq( const void* first, int header_size,
###                         CvMemStorage* storage );
### 
### #*******************************************************************************
### #                                    System functions
### #*******************************************************************************
### 
### # Add the function pointers table with associated information to the IPP primitives list
### #
### int cvRegisterModule( const CvModuleInfo* module_info );
### 
### typedef void* (CV_CDECL *CvAllocFunc)(size_t size, void* userdata);
### typedef int (CV_CDECL *CvFreeFunc)(void* pptr, void* userdata);
### 
### # Set user-defined memory managment functions (substitutors for malloc and free) that
### #  will be called by cvAlloc, cvFree and higher-level functions (e.g. cvCreateImage)
### #
### void cvSetMemoryManager( CvAllocFunc alloc_func CV_DEFAULT(NULL),
###                          CvFreeFunc free_func CV_DEFAULT(NULL),
###                          void* userdata CV_DEFAULT(NULL));
### 
### 
### typedef IplImage* (CV_STDCALL* Cv_iplCreateImageHeader)
###                             (int,int,int,char*,char*,int,int,int,int,int,
###                             IplROI*,IplImage*,void*,IplTileInfo*);
### typedef void (CV_STDCALL* Cv_iplAllocateImageData)(IplImage*,int,int);
### typedef void (CV_STDCALL* Cv_iplDeallocate)(IplImage*,int);
### typedef IplROI* (CV_STDCALL* Cv_iplCreateROI)(int,int,int,int,int);
### typedef IplImage* (CV_STDCALL* Cv_iplCloneImage)(const IplImage*);
### 
### # Makes OpenCV use IPL functions for IplImage allocation/deallocation
### #
### void cvSetIPLAllocators( Cv_iplCreateImageHeader create_header,
###                          Cv_iplAllocateImageData allocate_data,
###                          Cv_iplDeallocate deallocate,
###                          Cv_iplCreateROI create_roi,
###                          Cv_iplCloneImage clone_image );
### 
### #define CV_TURN_ON_IPL_COMPATIBILITY()                                  \
###     cvSetIPLAllocators( iplCreateImageHeader, iplAllocateImage,         \
###                         iplDeallocate, iplCreateROI, iplCloneImage )
### 
### #*******************************************************************************
### #                                    Data Persistence
### #*******************************************************************************
### 
### #********************************** High-level functions ***********************
### 
### # opens existing or creates new file storage
### #
### CvFileStorage* cvOpenFileStorage( const char* filename, CvMemStorage* memstorage,
###                                   int flags, const char* encoding CV_DEFAULT(NULL) );
### 
### # closes file storage and deallocates buffers
### #
### void cvReleaseFileStorage( CvFileStorage** fs );
### 
### # returns attribute value or 0 (NULL) if there is no such attribute
### #
### const char* cvAttrValue( const CvAttrList* attr, const char* attr_name );
### 
### # starts writing compound structure (map or sequence)
### #
### void cvStartWriteStruct( CvFileStorage* fs, const char* name,
###                          int struct_flags, const char* type_name CV_DEFAULT(NULL),
###                          CvAttrList attributes CV_DEFAULT(cvAttrList()));
### 
### # finishes writing compound structure
### #
### void cvEndWriteStruct( CvFileStorage* fs );
### 
### # writes an integer
### #
### void cvWriteInt( CvFileStorage* fs, const char* name, int value );
### 
### # writes a floating-point number
### #
### void cvWriteReal( CvFileStorage* fs, const char* name, double value );
### 
### # writes a string
### #
### void cvWriteString( CvFileStorage* fs, const char* name,
###                     const char* str, int quote CV_DEFAULT(0) );
### 
### # writes a comment
### #
### void cvWriteComment( CvFileStorage* fs, const char* comment, int eol_comment );
### 
### # writes instance of a standard type (matrix, image, sequence, graph etc.)
### # or user-defined type
### #
### void cvWrite( CvFileStorage* fs, const char* name, const void* ptr,
###               CvAttrList attributes CV_DEFAULT(cvAttrList()));
### 
### # starts the next stream
### #
### void cvStartNextStream( CvFileStorage* fs );
### 
### # helper function: writes multiple integer or floating-point numbers
### #
### void cvWriteRawData( CvFileStorage* fs, const void* src,
###                      int len, const char* dt );
### 
### # returns the hash entry corresponding to the specified literal key string or 0
### # if there is no such a key in the storage
### #
### CvStringHashNode* cvGetHashedKey( CvFileStorage* fs, const char* name,
###                                   int len CV_DEFAULT(-1),
###                                   int create_missing CV_DEFAULT(0));
### 
### # returns file node with the specified key within the specified map
### # (collection of named nodes)
### #
### CvFileNode* cvGetRootFileNode( const CvFileStorage* fs,
###                                int stream_index CV_DEFAULT(0) );
### 
### # returns file node with the specified key within the specified map
### # (collection of named nodes)
### #
### CvFileNode* cvGetFileNode( CvFileStorage* fs, CvFileNode* map,
###                            const CvStringHashNode* key,
###                            int create_missing CV_DEFAULT(0) );
### 
### # this is a slower version of cvGetFileNode that takes the key as a literal string
### #
### CvFileNode* cvGetFileNodeByName( const CvFileStorage* fs,
###                                  const CvFileNode* map,
###                                  const char* name );
### 
### CV_INLINE int cvReadInt( const CvFileNode* node, int default_value CV_DEFAULT(0) )
### {
###     return !node ? default_value :
###         CV_NODE_IS_INT(node->tag) ? node->data.i :
###         CV_NODE_IS_REAL(node->tag) ? cvRound(node->data.f) : 0x7fffffff;
### }
### 
### 
### CV_INLINE int cvReadIntByName( const CvFileStorage* fs, const CvFileNode* map,
###                          const char* name, int default_value CV_DEFAULT(0) )
### {
###     return cvReadInt( cvGetFileNodeByName( fs, map, name ), default_value );
### }
### 
### 
### CV_INLINE double cvReadReal( const CvFileNode* node, double default_value CV_DEFAULT(0.) )
### {
###     return !node ? default_value :
###         CV_NODE_IS_INT(node->tag) ? (double)node->data.i :
###         CV_NODE_IS_REAL(node->tag) ? node->data.f : 1e300;
### }
### 
### 
### CV_INLINE double cvReadRealByName( const CvFileStorage* fs, const CvFileNode* map,
###                         const char* name, double default_value CV_DEFAULT(0.) )
### {
###     return cvReadReal( cvGetFileNodeByName( fs, map, name ), default_value );
### }
### 
### 
### CV_INLINE const char* cvReadString( const CvFileNode* node,
###                         const char* default_value CV_DEFAULT(NULL) )
### {
###     return !node ? default_value : CV_NODE_IS_STRING(node->tag) ? node->data.str.ptr : 0;
### }
### 
### 
### CV_INLINE const char* cvReadStringByName( const CvFileStorage* fs, const CvFileNode* map,
###                         const char* name, const char* default_value CV_DEFAULT(NULL) )
### {
###     return cvReadString( cvGetFileNodeByName( fs, map, name ), default_value );
### }
### 
### 
### # decodes standard or user-defined object and returns it
### #
### void* cvRead( CvFileStorage* fs, CvFileNode* node,
###               CvAttrList* attributes CV_DEFAULT(NULL));
### 
### # decodes standard or user-defined object and returns it
### #
### CV_INLINE void* cvReadByName( CvFileStorage* fs, const CvFileNode* map,
###                               const char* name, CvAttrList* attributes CV_DEFAULT(NULL) )
### {
###     return cvRead( fs, cvGetFileNodeByName( fs, map, name ), attributes );
### }
### 
### 
### # starts reading data from sequence or scalar numeric node
### #
### void cvStartReadRawData( const CvFileStorage* fs, const CvFileNode* src,
###                          CvSeqReader* reader );
### 
### # reads multiple numbers and stores them to array
### #
### void cvReadRawDataSlice( const CvFileStorage* fs, CvSeqReader* reader,
###                          int count, void* dst, const char* dt );
### 
### # combination of two previous functions for easier reading of whole sequences
### #
### void cvReadRawData( const CvFileStorage* fs, const CvFileNode* src,
###                     void* dst, const char* dt );
### 
### # writes a copy of file node to file storage
### #
### void cvWriteFileNode( CvFileStorage* fs, const char* new_node_name,
###                       const CvFileNode* node, int embed );
### 
### # returns name of file node
### const char* cvGetFileNodeName( const CvFileNode* node );
### 
### #*********************************** Adding own types **************************
### 
### void cvRegisterType( const CvTypeInfo* info );
### CvTypeInfo* cvFirstType(void);
### CvTypeInfo* cvFindType( const char* type_name );
### CvTypeInfo* cvTypeOf( const void* struct_ptr );
### 
### # simple API for reading/writing data
### #
### void cvSave( const char* filename, const void* struct_ptr,
###              const char* name CV_DEFAULT(NULL),
###              const char* comment CV_DEFAULT(NULL),
###              CvAttrList attributes CV_DEFAULT(cvAttrList()));
### void* cvLoad( const char* filename,
###               CvMemStorage* memstorage CV_DEFAULT(NULL),
###               const char* name CV_DEFAULT(NULL),
###               const char** real_name CV_DEFAULT(NULL) );
### 
### #********************************** Measuring Execution Time *******************
### 
### #********************************** Error Handling *****************************
### 
### typedef int (CV_CDECL *CvErrorCallback)( int status, const char* func_name,
###                                         const char* err_msg, const char* file_name, int line, void* userdata );
### 
### # Assigns a new error-handling function
### #
### CvErrorCallback cvRedirectError( CvErrorCallback error_handler,
###                                        void* userdata CV_DEFAULT(NULL),
###                                        void** prev_userdata CV_DEFAULT(NULL) );
### 
### #define OPENCV_ERROR(status,func,context)                           \
### cvError((status),(func),(context),__FILE__,__LINE__)
### 
### #define OPENCV_ERRCHK(func,context)                                 \
### {if (cvGetErrStatus() >= 0)                         \
### {OPENCV_ERROR(CV_StsBackTrace,(func),(context));}}
### 
### #define OPENCV_ASSERT(expr,func,context)                            \
### {if (! (expr))                                      \
### {OPENCV_ERROR(CV_StsInternal,(func),(context));}}
### 
### #define OPENCV_RSTERR() (cvSetErrStatus(CV_StsOk))
### 
### # CV_ERROR macro unconditionally raises error with passed code and message.
### # After raising error, control will be transferred to the exit label.
### #
### #define CV_ERROR( Code, Msg )                                       \
### {                                                                   \
###     cvError( (Code), cvFuncName, Msg, __FILE__, __LINE__ );        \
###     __CV_EXIT__;                                                   \
### }
### 
### # Simplified form of CV_ERROR
### #
### #define CV_ERROR_FROM_CODE( code )   \
###     CV_ERROR( code, "" )
### 
### # CV_CHECK macro checks error status after CV (or IPL)
### # function call. If error detected, control will be transferred to the exit
### # label.
### #
### #define CV_CHECK()                                                  \
### {                                                                   \
###     if( cvGetErrStatus() < 0 )                                      \
###         CV_ERROR( CV_StsBackTrace, "Inner function failed." );      \
### }
### 
### # CV_CALL macro calls CV (or IPL) function, checks error status and
### # signals a error if the function failed. Useful in "parent node"
### # error procesing mode
### #
### #define CV_CALL( Func )                                             \
### {                                                                   \
###     Func;                                                           \
###     CV_CHECK();                                                     \
### }
### 
### # Runtime assertion macro
### #
### #define CV_ASSERT( Condition )                                          \
### {                                                                       \
###     if( !(Condition) )                                                  \
###         CV_ERROR( CV_StsInternal, "Assertion: " #Condition " failed" ); \
### }
### 
### # Decrements CvMat data reference counter and deallocates the data if
### # it reaches 0
### #
### CV_INLINE void cvDecRefData( CvArr* arr )
### {
###     if( CV_IS_MAT( arr ))
###     {
###         CvMat* mat = (CvMat*)arr;
###         mat->data.ptr = NULL;
###         if( mat->refcount != NULL && --*mat->refcount == 0 )
###             cvFree( &mat->refcount );
###         mat->refcount = NULL;
###     }
###     else if( CV_IS_MATND( arr ))
###     {
###         CvMatND* mat = (CvMatND*)arr;
###         mat->data.ptr = NULL;
###         if( mat->refcount != NULL && --*mat->refcount == 0 )
###             cvFree( &mat->refcount );
###         mat->refcount = NULL;
###     }
### }
### 
### # Increments CvMat data reference counter
### #
### CV_INLINE int cvIncRefData( CvArr* arr )
### {
###     int refcount = 0;
###     if( CV_IS_MAT( arr ))
###     {
###         CvMat* mat = (CvMat*)arr;
###         if( mat->refcount != NULL )
###             refcount = ++*mat->refcount;
###     }
###     else if( CV_IS_MATND( arr ))
###     {
###         CvMatND* mat = (CvMatND*)arr;
###         if( mat->refcount != NULL )
###             refcount = ++*mat->refcount;
###     }
###     return refcount;
### }
#############################################################################
