#Validação de radios

describe 'Validação de radios', :radio do

    before(:each) do
        visit 'https://www.rahulshettyacademy.com/AutomationPractice/'
    end 
    
    it 'Validando radios id' do
        find('input[value=radio1]').click
    end

    after(:each) do
        sleep 4
    end

end