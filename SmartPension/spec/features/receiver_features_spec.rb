# frozen_string_literal: true

require 'features_helper'

feature 'File Parcer-- ' do
  scenario 'Program can load a file and return a result' do
    start_parser

    load_file('../webserver.log')

    expect(read_content).to_not be empty
    expect(return_most_views).to end_with ''
    expect(return_uniq_views).to end_with ''
  end
end
