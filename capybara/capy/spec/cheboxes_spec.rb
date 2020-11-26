
#Validação de checkboxes

describe 'validação de checkboxes', :checkuncheck do

    before(:each) do
        visit 'checkboxes'
    end

    it 'marcando somente um checkbox' do
        check('thor')

    end

    it 'desmarcando um checkbox' do
        uncheck('antman')
    end

    it 'marcando usando um find e set true' do
        find('input[value=the-avengers]').set(true)
    end
    
    it 'desmarcando um elemento usando o find e set false' do
        find('input[value=iron-man]').set(false)
    end

    after(:each) do
        sleep 3
    end

end