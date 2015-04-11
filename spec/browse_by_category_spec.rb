describe "browse category", :type => :feature do
  it "finds animal tales in the animals category" do
    visit '/'
    fill_in 'title', with: 'popular'
    fill_in 'zipCode', with: '93711'
    click_button 'Find Your Magazine'
    click_link 'Browse'
    click_link 'By Category'
    within(:css, '.categories-list') do
      click_link 'ANIMALS'
    end

    expect(page).to have_content('ANIMAL TALES')
  end
end
