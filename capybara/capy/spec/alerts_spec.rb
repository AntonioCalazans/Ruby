describe 'Handle to alert message', :alerts do

    before(:each) do
        visit 'javascript_alerts'
    end

    it 'Alertas' do
        click_button 'Alerta'
        msg = page.driver.browser.switch_to.alert.text

        expect(msg).to eql 'Isto é uma mensagem de alerta'
    end

    it 'Botão Confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'

    end

    it 'Botão não confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
    end

    it 'Prompt' do
        accept_prompt(with: 'Antonio Neto') do
            click_button 'Prompt'
        end

        expect(page).to have_content 'Olá, Antonio Neto'
    end

    it 'Not Prompt' do
        dismiss_prompt do
            click_button 'Prompt'
        end

        expect(page).to have_content 'Olá, null'
    end
end