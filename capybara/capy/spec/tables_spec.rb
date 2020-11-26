describe 'tables' do
    

    describe 'tbs', :mytables do

        before(:each) do
            visit '/tables'
        end

        it 'validar salario stark' do

            atores = all('table tbody tr')
            stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr')}

            expect(stark.text).to include '10.000.000'
        end

        it 'validar informação Vind Diesel' do

            diesel = find('table tbody tr', text: '@vindiesel')

            expect(diesel).to have_content '10.000.000'
        end

        it 'Editar um valor' do
            pratt = find('table tbody tr', text: 'Chris Pratt')
            pratt.find('a', text: 'edit').click

            msg = page.driver.browser.switch_to.alert.text
            expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
        end
    end
end