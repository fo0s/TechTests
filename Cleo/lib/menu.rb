# frozen_string_literal: true

# Menu class
class Menu
  def initialize
    @position = %i[welcome intro vending]
    @stop_program = false
    @user_items = {}
    @user_change = {}
  end

  def display(input)
    system('clear')

    case input
    when :welcome
      print('./lib/text/welcome.txt')

    when :intro
      print('./lib/text/intro.txt')
      @position.rotate!(1)

    when :exit
      print('./lib/text/exit.txt')
      @stop_program = true

    when :vending
      print('./lib/text/vending_machine.txt')
      @position.rotate!(1)

    else
      puts 'Whoa!'
    end
  end

  def print(text_file)
    system('clear')
    puts File.open(text_file).read
  end

  def user_input(input)
    case @position.first
    when :welcome
      display(:intro) if input.to_i == 1
      display(:exit) if input.to_i == 2

    when :intro
      display(:exit) if input.to_i == 3
      display(:vending) if input.to_i == 2

    when :vending
      leave_machine if input.to_i == 3

    else
      puts "I don't recognise that!"
    end
  end

  def start
    display(:welcome) if @position.first == :welcome

    loop do
      input = gets.strip
      user_input(input)

      break if @stop_program == true
    end
  end

  def leave_machine
    user_data
    puts "test: #{@user_items}"

    if @user_items == {}
      user_nothing
    else
      puts 'You bought:'
      @user_items.each { |item| puts item }
      puts ' and have:'
      @user_change.keys.each do |val|
        puts "#{@user_change[val]} x #{val}" if @user_change[val] != 0
      end
      puts ' in change.'
      puts 'The end.'
    end
  end

  def user_data
    user = './data/user.json'
    data = parse_json(user)

    @user_items = data['Items']
    @user_change = data['Change']
  end

  def user_nothing
    system('clear')
    puts 'You go back to your desk with nothing'
    puts 'but a pocket full of change. What a shame.'
    puts 'The end.'
    @stop_program = true
  end

  def parse_json(user)
    JSON.parse(File.read(user))
  end
end
