# frozen_string_literal: true

# Start of Receiver class
class Receiver
  attr_reader :content

  def initialize
    @content = {}

    # a. Receives a logfile as an argument
    @file = ARGV
  end

  def file_reader(file)
    @file = file
    p @file
    no_file_loaded if @file.empty?
    target_file = File.open(@file, 'r')

    target_file.each_line do |line|
      line_split = line.split(' ')
      @content.key?(line_split.first) == true ? @content[line_split.first] << line_split.last : @content[line_split.first] = [line_split.last]
    end
  end

  def no_file_loaded
    raise 'No file provided! Please provide a file when starting (ruby receiver.rb webserver.log)'
  end

  # list of webpages with most page views ordered from most pages views to less pages views
  def most_views
    p 'Sites with most views: '
    @content.sort_by { |address| address[1].length }.reverse.each do |values|
      p "#{values.first} #{values.last.count} visits"
    end
  end

  # list of webpages with most unique page views also ordered
  def uniq_views
    p 'Sites with most unique views: '
    @content.sort_by { |address| address[1].uniq.count }.reverse.each do |values|
      p "#{values.first} #{values.last.uniq.count} unique views"
    end
  end
end

# Run program
rec = Receiver.new
rec.most_views
rec.uniq_views
