
#Validação radio button

describe 'Radio button', :radio do

    before(:each) do
        visit '/radios'
    end

    it 'Radio button com ID' do
        choose('thor')
    end

    it 'Radio button sem id' do
        find('input[value = the-avengers]').click
    end

    after(:each) do
        sleep 4
    end

end