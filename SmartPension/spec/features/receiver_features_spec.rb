# require 'features_helper'

# feature 'File Parcer-- ' do
#   before :each do 
#     @file = fixture_file('./../webserver.log', 'log')
#   end
#   scenario "Program can load a file and return a result" do

#     start_parser

#     load_file(@file)

#     expect(read_content).to_not be []
#     expect(return_most_views).to end_with '/about 3 visits'
#     expect(return_uniq_views).to end_with '/about/2 3 unique views'

#   end
# end