
# Primeira automação de testes

describe "Primeiro teste", :smoke do

    before(:each) do
       visit '/'
    end

    it "Visitar a página" do
        expect(page.title).to eql "Training Wheels Protocol"
    end

end