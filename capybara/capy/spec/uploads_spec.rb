
describe 'Upload de arquivo', :upload do

    before(:each) do
        visit 'upload'
        @arquivo = Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixtures/imagem.jpg'
    end

    it 'Upload de arquivo' do
       attach_file('file-upload', @arquivo)
       click_button 'Upload'

       arq = find('#uploaded-file')
       expect(arq.text).to eql 'arquivo.txt'
    end
    
    it 'Upload de imagem', :upload_imagem do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        
        img = find('#new-image')
        expect(img[:src]).to include 'uploads/imagem.jpg'
    end

    after(:each) do
        sleep 3
    end


end