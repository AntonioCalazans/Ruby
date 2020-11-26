describe 'Select2', :select2 do

    describe('single', :single) do
    
        before(:each) do
            visit '/apps/select2/single.html'
        end


        it 'seleciona ator por nome' do
            find('.select2-selection--single').click
            sleep 1

            find('.select2-results__option', text: 'Adam Sandler').click
            sleep 5
        end

        it 'busca e clica no ator' do
            find('.select2-selection--single').click
            sleep 1
            find('.select2-search__field').set 'Cris Rock'
            sleep 3
            find('.select2-search__field').click
        end
    end

    describe('mulitple', :mult) do
        before(:each) do
            visit 'apps/select2/multi.html'
        end

        def seleciona(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end

        it 'busca por atores' do
            atores = ['Kevin Jones', 'Owen Wilson', 'Jim Carrey']
            atores.each do |a|
                seleciona(a)
            end
        end    
    end    
end