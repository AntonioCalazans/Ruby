
#validade

describe 'simples exemplos', :simples do

    before(:each) do
        visit 'https://www.rahulshettyacademy.com/AutomationPractice/'
    end

    it 'validação de texto' do
        fill_in 'name', with: "Antonio"

        click_button 'Confirm'
     end

end