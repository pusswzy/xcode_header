require 'xcodeproj'

module Xcodeproj
  class Project
    module Object
      class PBXGroup

        #获取当前group的header_map
        def fetch_public_path_map_file
          header_map = Hash.new
          self.recursive_children.each do |child|
            if child.respond_to? "last_known_file_type"
              if child.last_known_file_type == "sourcecode.c.h"
                puts child.class
                header_path = Pathname(child.real_path)
                header_map.store(File.basename(header_path), File.dirname(header_path))
              end
            end
          end
          return header_map
        end






      end
    end
  end
end