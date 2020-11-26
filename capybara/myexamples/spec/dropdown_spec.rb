
describe 'Usando o select dropdown', :dropdown do

    before(:each) do
        visit 'https://www.rahulshettyacademy.com/AutomationPractice/'    
    end

    it 'validando select dropdown' do
        select('Option1', from: 'dropdown-class-example').select_option
    end

    after(:each) do
        sleep 3
    end
end