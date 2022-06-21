" By yongcong.wang @ 27/02/2020

" highlight scope
syntax match cppScope "::"
syntax match cppScopeAll "\w\+\s*::" contains=cppScope
highlight def link cppScopeAll Constant

" highlight methods after . and ->
syntax match cppDot "\."
syntax match cppPointer "->"
syntax match cppMethod "\(\.\|->\)\h\w*" contains=cppDot,cppPointer
highlight def link cppMethod Function

" hightlight functions 
syntax match cppParen "("
syntax match cppParenFunction "\w\+\s*(\@=" contains=cppParen
highlight def link cppParenFunction Function

" hightlight constructor
syntax match cppParen "{"
syntax match cppConstructorFunction "\w\+\s*{\@=" contains=cppParen
highlight def link cppConstructorFunction Function

" std
syntax keyword cppSTLconstant nullptr

" containers (array, vector, list, *map, *set, ...)
syntax keyword cppSTLtype array vector list map set string stack queue tuple
syntax keyword cppSTLtype priority_queue
syntax keyword cppSTLtype unordered_set unordered_map pair deque

syntax keyword cppSTLfunction shrink_to_fit
syntax keyword cppSTLfunction emplace
syntax keyword cppSTLfunction emplace_back
syntax keyword cppSTLfunction emplace_front
syntax keyword cppSTLfunction emplace_hint

" algorithm
syntax keyword cppSTLfunction all_of any_of none_of
syntax keyword cppSTLfunction find_if_not
syntax keyword cppSTLfunction copy_if
syntax keyword cppSTLfunction copy_n
syntax keyword cppSTLfunction move
syntax keyword cppSTLfunction forward
syntax keyword cppSTLfunction move_backward
syntax keyword cppSTLfunction shuffle
syntax keyword cppSTLfunction is_partitioned
syntax keyword cppSTLfunction partition_copy
syntax keyword cppSTLfunction partition_point
syntax keyword cppSTLfunction is_sorted
syntax keyword cppSTLfunction is_sorted_until
syntax keyword cppSTLfunction is_heap
syntax keyword cppSTLfunction is_heap_until
syntax keyword cppSTLfunction minmax
syntax keyword cppSTLfunction minmax_element
syntax keyword cppSTLfunction is_permutation
syntax keyword cppSTLfunction itoa

" memory
syntax keyword cppSTLtype unique_ptr shared_ptr weak_ptr
syntax keyword cppSTLtype owner_less
syntax keyword cppSTLtype enable_shared_from_this
syntax keyword cppSTLtype default_delete
syntax keyword cppSTLtype allocator_traits
syntax keyword cppSTLtype allocator_type
syntax keyword cppSTLtype allocator_arg_t
syntax keyword cppSTLtype uses_allocator
syntax keyword cppSTLtype scoped_allocator_adaptor
syntax keyword cppSTLtype pointer_safety
syntax keyword cppSTLtype pointer_traits
syntax keyword cppSTLconstant allocator_arg
syntax keyword cppSTLexception bad_weak_ptr
syntax keyword cppSTLcast static_pointer_cast
syntax keyword cppSTLcast dynamic_pointer_cast
syntax keyword cppSTLcast const_pointer_cast
syntax keyword cppSTLfunction make_shared make_unique
syntax keyword cppSTLfunction declare_reachable
syntax keyword cppSTLfunction undeclare_reachable
syntax keyword cppSTLfunction declare_no_pointers
syntax keyword cppSTLfunction undeclare_no_pointers
syntax keyword cppSTLfunction get_pointer_safety
syntax keyword cppSTLfunction addressof
syntax keyword cppSTLfunction allocate_shared
syntax keyword cppSTLfunction get_deleter

" user defined
syntax keyword cppUserType uint8 uint16 uint32 uin64 int8 int16 int32 int64

" set highlight
hi def link c_ansi_function Function
hi def link cppSTLbool         Boolean
hi def link cppStorageClass    StorageClass
hi def link cppStatement       Statement
hi def link cppSTLfunction     Function
hi def link cppSTLfunctional   Typedef
hi def link cppSTLconstant     Constant
hi def link cppSTLnamespace    Constant
hi def link cppSTLtype         Typedef
hi def link cppSTLexception    Exception
hi def link cppSTLiterator     Typedef
hi def link cppSTLiterator_tag Typedef
hi def link cppSTLenum         Typedef
hi def link cppSTLconcept      Typedef
hi def link cppSTLios          Function
hi def link cppSTLcast         Statement 
hi def link cppUserType        typedef
