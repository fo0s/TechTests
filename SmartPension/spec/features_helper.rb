require 'receiver'

def start_parser
  @parse = Receiver.new
end

def load_file(file)
  @parse.file_reader(file)
end

def read_content
  @parse.content
end

def return_most_views
  @parse.most_views
end

def return_uniq_views
  @parse.uniq_views
end

