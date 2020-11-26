describe 'Mouse Hover', :hovers do

    before(:each) do
        visit '/hovers'
    end

    it 'quando passo o mouse sobre o Blade' do
        card = find('img[alt=Blade]')
        card.hover
        expect(page).to have_content 'Nome: Blade'
    end
    

    it 'quando passo o mouse sobre o Pantera Negra' do
        card = find('img[alt="Pantera Negra"]')
        card.hover
        expect(page).to have_content 'Nome: Pantera Negra'

    end

    it 'quando passo o mouse sobre Homem Aranha' do
        card = find('img[alt = "Homem Aranha"]')
        card.hover
    end

    after(:each) do
        sleep 0.5
    end


end