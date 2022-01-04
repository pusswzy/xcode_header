

module Hmap
	class Parse

		HEADER_CONST = {
				HMAP_HEADER_MAGIC_NUMBER: 0x686d6170,
				HMAP_HEADER_VERSION: 0x0001,
				HMAP_EMPTY_BUCKT_KEY: 0,
				HMAP_SWAPPED_MAGIC: 0x70616d68,
				HMAP_SWAPPED_VERSION: 0x0100
		}.freeze

		def self.parse_with_hmap_path(hmap_path)
			if File.exists?(hmap_path) == false
				## TODO 崩溃? 抛出报错信息?
				return
			end

			file = File.open(hmap_path, "rb")
			raw_data =file.read

			magic = raw_data.unpack("N")
			puts magic.first

			puts HEADER_CONST.class

			# 是在不知道如何对二进制数据解包 参考了这篇文章 https://www.rubyguides.com/2017/01/read-binary-data/
			# puts raw_data.class

			# fake_binary_string = "AB"
			# # n大端 v小端
			# p "A".unpack("c")
			# p "B".unpack("c")
			# # 16961 BA应该是这么读
			# p fake_binary_string.unpack("v").to_s + "小端"
			# # 16706 AB应该是这么读
			# p fake_binary_string.unpack("n").to_s + "大端"
			#
			#
			valid = Hmap::Util.check_magic_valid(magic)
			puts valid
		end

		def self.parse_with_json_path(hmap_path)
			if File.exists?(hmap_path) == false
				## TODO 崩溃? 抛出报错信息?
				puts ""
				return
			end
		end


	end
end