describe "magazine search", :type => :feature do
  it "finds popular science in 93101" do
    visit '/'
    fill_in 'title', with: 'popular'
    fill_in 'zipCode', with: '93101'
    click_button 'Find Your Magazine'

    expect(page).to have_content('POPULAR SCIENCE')
  end
end
