
module Hmap

	# 1. 路径前面不加./ 就会导致load error
	# 2. 要引用常量 就必须在autoload后面直接跟常量的名字
	autoload :HMAP_CONST, "./Hmap/Util/hmap_header"
	autoload :Parse, './Hmap/Util/hmap_parse'
	autoload :Util,  "./Hmap/Util/Util"
	autoload :HMapHeader, "./Hmap/Util/hmap_header"
end