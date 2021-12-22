module StudyGem
  require 'claide'

  class Command < CLAide::Command
    require_relative 'command/noodle'
    require_relative 'command/rice'

    self.abstract_command = true
    self.summary = 'meta_command make deleciout food'
    self.description = <<-DESC
      it's my first CIL(command line interface). And it's a abstract command
    DESC

    # 我有个以为 这里是否能修改
    self.command = 'study-gem'

    def self.options
      [
        ['--no-spicy', 'no need add spicy in food'],
        ['--extra-food=[any-other-food]', 'you can add any other food in your main food']
      ].concat(super())
    end

    def initialize(argv)
      @need_spicy = argv.flag?('spicy', false)
      @extra_food = argv.option('extra-food')
      super
    end

    def validate!
      super
    end

    def run
      puts '* let\'s fire'
      sleep 1
      if @need_spicy
        puts '* 你喜欢吃辣椒 老子就给你加辣椒哟'
        sleep 1
      end
      if @extra_food
        puts "add 盖码 #{@extra_food}"
      end
    end


  end
end
