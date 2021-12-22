require_relative 'study_gem/version'
# http://chuquan.me/2021/11/21/how-to-develop-command-line-tool-with-claide/
puts "lee"

module StudyGem
  class Error < StandardError; end

  # 我现在有点明白了
  autoload :Command, '../lib/study_gem/command'
end
