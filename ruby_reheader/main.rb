require 'xcodeproj'
require_relative 'Utils/group_category'

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

iosDirPath = fetch_ios_example_path("ios_example/ios_example.xcodeproj")
project = Xcodeproj::Project.open(iosDirPath)

# project.targets.each do |target|
#   # 只处理application? "com.apple.product-type.application"
#   # p target.product_type
#   p target.references_by_keys_attributes
# end
project.groups.each do |group|
	puts "-----✨#{group.class}"
  header_map = group.fetch_public_path_map_file

end

class Main
end