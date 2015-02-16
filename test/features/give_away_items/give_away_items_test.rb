require 'test_helper'

feature 'give away items' do
  scenario 'viewing the index of all items' do
    sign_in(:user1)
    visit give_away_items_path
    page.must_have_content 'Give Away Items'
    page.must_have_content 'Post An Item'
  end

  scenario 'posting a new item' do
    sign_in(:user1)
    visit new_give_away_item_path
    fill_in 'Title', with: 'Broken Microwave'
    fill_in 'Description', with: '20 year old Panasonic microwave that does not work.'
    click_on 'Post Item'
    page.must_have_content 'Item successfully posted'
  end
end