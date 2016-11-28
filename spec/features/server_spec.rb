require 'spec_helper'

feature 'server' do
  scenario 'server functioning' do
    visit '/'
    expect(page.status_code).to eq(200)
  end
end