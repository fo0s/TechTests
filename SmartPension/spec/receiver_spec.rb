require 'receiver'

# describe Receiver do
#   it “returns word characters only” do
#     File.stub(:read).and_return(“hello, world”)
#     expect(reader.size).to eq(2)
#     expect(reader).to include(“hello”)
#     expect(reader).not_to include(’,’)
#   end
# end

describe 'Receiver class' do
  context '#start-- ' do
      it 'can read a file' do
        puts Dir.pwd
        file = File.read("spec/webserver.log")
        
        parse = Receiver.new

        parse.file_reader("spec/webserver.log")
        expect(parse.most_views).to end_with "/about 3 visits"
      end
  end
end