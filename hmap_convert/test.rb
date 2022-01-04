require_relative 'hmap'

hmap_path =  File.expand_path("test_source_data.hmap", Dir.pwd)
Hmap::Parse.parse_with_hmap_path(hmap_path)