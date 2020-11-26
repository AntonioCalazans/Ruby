
describe "Validação de formulário - Login 2", :logi2 do

    it "Logar com suceso" do
        visit '/login2'

        fill_in "username", with: 'stark'
        fill_in "password", with: 'jarvis!'

        valida_campo = find('#login')

        case valida_campo.text
        when /Dia/
            find('#day').set '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('#year').set '1970'
        end

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        #Validar mensagem
        expect(find('#flash')).to have_content "Olá, Tony Stark. Você acessou a área logada!"
        expect(find('#flash').text).to include "Olá, Tony Stark. Você acessou a área logada!"

    end
end