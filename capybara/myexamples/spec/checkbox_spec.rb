
describe 'Checkbox', :check do
    before(:each) do
        visit 'https://www.rahulshettyacademy.com/AutomationPractice/'
          
    end

    it 'Validação de checkbox' do
        check('checkBoxOption1')
        check('checkBoxOption2')
    end

    after(:each) do
        sleep 3
    end
end