describe 'Iframes' do

    describe 'nice_frames', :bom do

        before(:each) do
            visit '/nice_iframe'
        end

        it 'bom' do
            within_frame('burgerId') do
                produto = find('.menu-item-info-box', text: 'BATATAS FRITAS')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 5,50'
            end
        end

        after(:each) do
            sleep 5
        end
    end
end