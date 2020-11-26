describe 'Id dinamicos', :id_dinamicos do

    before(:each) do

        visit '/access'

    end

    it 'Ids dinamicos' do
        find('input[id$=UsernameInput]').set 'Antonio'
        find('input[id^=PasswordInput').set 'Neto'
        find('a[id*=GetStartedButton').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    
    end



end