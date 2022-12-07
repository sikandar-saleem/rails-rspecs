RSpec.describe 'raise_error_matcher' do
    def some_method
        x
    end

    it 'can raise specific errors' do
        expect { some_method }.to raise_error(NameError)
        expect { 20 / 0 }.to raise_error(ZeroDivisionError)
    end
end
