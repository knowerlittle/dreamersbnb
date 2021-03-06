feature 'Replying requests' do

  let(:user) do
    User.create(name: 'Michael',
                email: 'michael@test.com',
                password: 'password',
                password_confirmation: 'password')
  end

  let(:user2) do
    User.create(name: 'Dan',
                email: 'dan@test.com',
                password: 'password',
                password_confirmation: 'password')
  end

  let(:accommodation) do
    Accommodation.create(name: 'Michael\'s House',
                         desc: 'Cool place',
                         price: 50,
                         user_id: user.id)
  end

  let(:start_date) do
    (Time.new()+(86360 * 7)).strftime("%d/%m/%Y")
  end

  let(:end_date) do
    (Time.new()+(86360 * 14)).strftime("%d/%m/%Y")
  end

  before do
    login email: user2.email, password: user2.password
    visit "/accommodations/#{accommodation.id}"
    within 'form#new-request' do
      fill_in 'check_in', with: start_date
      fill_in 'check_out', with: end_date
      click_button "Request Booking"
    end
    click_button "Log Out"
    login email: user.email, password: user.password
    click_on "Requests"
    click_on "Michael's House"
  end

  scenario 'Accept a request' do
    expect(current_path).to eq "/requests/2"
    click_button "Accept"

    expect(current_path).to eq "/requests"

    within 'tr#request-2' do
      expect(page).to have_content "true"
    end

  end

  scenario 'Reject a request' do
    expect(current_path).to eq "/requests/3"
    click_button "Reject"

    expect(current_path).to eq "/requests"

    within 'tr#request-3' do
      expect(page).to have_content "false"
    end
  end
end
