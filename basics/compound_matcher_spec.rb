RSpec.describe 'compound matchers' do
    describe 'sikandar' do
        it { is_expected.to start_with('sik').and end_with('dar')}
        it { is_expected.to start_with('SIK').or end_with('dar')}
    end
end