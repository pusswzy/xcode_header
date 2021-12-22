module StudyGem
  class Test < Command
    self.summary = "李昊泽的test command"
    self.description = <<-DESC
      just a test command, 所以只要继承command，就会变成command么
    DESC

    def run
      puts '第一次执行方法 激动'
      super
    end
  end

  class Noodle < Command
    self.summary = "make some noodle"
    self.description = <<-DESC
      make noodle to feed duzi
    DESC

    self.arguments = [
      CLAide::Argument.new('[weight]', true )
    ]

    def self.options
      [
        ['--no-cc', 'no need add spicy in food']
      ].concat(super())
    end

    def initialize(argv)
      @need_through_cold_water = argv.option('cc')
      @weight_arg = argv.shift_argument
      super
    end

    def validate!
      super
      if @weight_arg == nil
        help! 'you must give a noodle weight! weight is a require argument'
      end

    end

    def run
      super
      puts "做#{@weight_arg}斤的面条"
      if @need_through_cold_water
        puts '面条做好了过一遍凉水'
      end
      puts 'enjoy your noodle!'
    end

  end
end
