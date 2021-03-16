describe Battle do
    describe 'the homepage', type: :feature do
        it 'says Testing Infrastructure Working' do
            visit '/'
            expect(page).to have_content('Testing infrastructure working!')
        end
    end
end