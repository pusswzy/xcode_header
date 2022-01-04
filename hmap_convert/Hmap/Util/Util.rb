

module Hmap
	class Util

		# check magic work is valid
		def self.check_magic_valid (magic)
			magic.eql?(HMAP_CONST[:HMAP_MAGIC_TYPE_BIG_ENDIAN]) || magic.eql?([HMAP_CONST[:HMAP_MAGIC_TYPE_SMALL_ENDIAN]])
		end

	end
end
