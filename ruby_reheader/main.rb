require 'xcodeproj'
require_relative 'Utils/group_category'
require 'json'

def fetch_suitable_parent_path
	current_path = Dir.pwd
	return nil unless current_path.length
	parent_path = File.expand_path("../", current_path)
	return parent_path
end

def fetch_ios_example_path (projectName)
	return nil unless projectName
	parentDir = fetch_suitable_parent_path
	return File.expand_path(projectName, parentDir)
end

class Main

	def self.inherited (subClass)

	end


	# iosDirPath = fetch_ios_example_path("ios_example/ios_example.xcodeproj")
	iosDirPath = "/Users/wangze/Desktop/GoPlayForiOS/Pods/Pods.xcodeproj"
	project = Xcodeproj::Project.open(iosDirPath)

	header_path_hash = Hash.new
	puts project.groups
	project.groups.each do |group|
		# puts "-----✨#{group.display_name}"
		sub_header_map = group.fetch_public_path_map_file
		header_path_hash.merge!(sub_header_map)
	end

	# hash -> hmap
	header_map = Hash.new
	header_path_hash.each_pair do |key, value|
		if key == nil || value == nil
			next
		end
		path = Pathname(value)
		# 感觉拿不到xx/aa.h 的xx呢
		dirName = path.dirname.to_s + '/'
		# header_name = path.basename.to_s
		pay_load_hash = Hash['suffix' => key, 'prefix' => dirName]
		header_map[key] = pay_load_hash
	end

	#json -> hmap
	unless header_map.empty?
		path = Pathname(iosDirPath)
		json_path = path.dirname + 'test_hmap.json'
		hmap_path = path.dirname + '/test_hmap.hmap'
		# write hmap json to file
		File.open(json_path, 'w') {|file| file << header_map.to_json}
		# .jjson -> .hmap
		convert_result = system("hmap convert #{json_path} #{hmap_path}")
		# File.delete(json_path)
		# puts convert_result
	end

end
