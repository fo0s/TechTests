require 'find'

# Start of Receiver class
class Receiver
  attr_reader :content, :output

  def initialize
    @content = {}
    @file = ''
    @output = []
  end

  def file_reader(file)
    no_file_loaded if file.empty?

    target_file = File.open(file, 'r')

    target_file.each_line do |line|
      line_split = line.split(' ')
      @content.key?(line_split.first) == true ? @content[line_split.first] << line_split.last : @content[line_split.first] = [line_split.last]
    end
  end

  def no_file_loaded
    raise 'No file provided!'
  end

  # list of webpages with most page views ordered from most pages views to less pages views
  def most_views
    @content.sort_by { |address| address[1].length }.reverse.each do |values|
      @output << "#{values.first} #{values.last.count} visits"
    end
  end

  # list of webpages with most unique page views also ordered
  def uniq_views
    p 'Sites with most unique views: '
    @content.sort_by { |address| address[1].uniq.count }.reverse.each do |values|
      @output << "#{values.first} #{values.last.uniq.count} unique views"
    end
  end
end

# Run program
rec = Receiver.new
rec.file_reader('webserver.log')
rec.most_views
rec.uniq_views
