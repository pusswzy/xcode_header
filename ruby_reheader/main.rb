require 'xcodeproj'

def fetch_suitable_parent_path
	current_path = Dir.pwd
	return nil unless current_path.length
	parent_path = File.expand_path("../", current_path)
	return parent_path
end

puts fetch_suitable_parent_path()


class Main
end