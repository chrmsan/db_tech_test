require 'spec_helper'

feature 'Enter names' do
	scenario 'submitting names' do
		visit '/'
		fill_in :partner_1_name, with: 'Brad'
		fill_in :partner_2_name, with: 'Angelina'
		click_button 'Should they get married?'
		expect(page).to have_content 'Brad and Angelina'
	end

end