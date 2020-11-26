
describe('Send Keys', :keys) do

    before(:each) do
        visit '/key_presses'
    end 


    it 'Passando simbolos' do
        simbolos = %i[space control enter]

        simbolos.each do |s|
        find('#campo-id').send_keys s
        expect(page).to have_content 'You entered: ' + s.to_s.upcase 
        end

        
    end

    it 'Passando letras' do
        letras = %w[a b c d e f]

        letras.each do |l|
        find('#campo-id').send_keys l
        expect(page).to have_content 'You entered: ' + l.to_s.upcase
        end

        
        
    end
end