
#Validação de select dropdown

describe "Item de seleção dropdown com id", :dropdown do

    before(:each) do
        visit 'dropdown'
    end
     
    it 'selecionando um opção a partir de um dropdown com id' do        
        select("Bruce Banner", from: "dropdown")
    end

    it 'selecionando uma opção a partir de uma dropdown sem id' do
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option        
    end

    it 'selecionando uma nova opção a partir de uma dropdown sem id' do
        newdrop = find('.avenger-list')
        newdrop.find('option', text: 'Loki').select_option        
    end

    it 'selecionando uma nova opção a partir de uma dropdown com id' do
        select('Bucky', from: "dropdown")
    end

    it 'selecionando um valor random', :novatag do
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end

    after(:each) do
        sleep 2
    end

end 