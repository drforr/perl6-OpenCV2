use v6;
use NativeCall;

=begin pod

=begin NAME

OpenCV2::Size - Size operations

=end NAME

=begin SYNOPSIS

    my $s = OpenCV2::Size.new;

=end SYNOPSIS

=begin DESCRIPTION

=end DESCRIPTION

=begin METHODS

=end METHODS

=end pod

#role OpenCV2::Lib
#	{
#	constant LIB = 'libopencv_core.so.2.4.8';
#	}

class OpenCV2::Size is repr('CPointer')
	{
	constant LIB = 'libopencv_core.so.2.4.8';
	}
