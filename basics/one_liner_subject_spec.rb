RSpec.describe Hash do
    subject { 5 }

    context 'with traditional syntax' do
        it 'should be eq to 5' do
            expect(subject).to eq(5)
        end
    end

    context 'with shorthand syntax' do
        it { is_expected.to eq(5) } # is_expected only avialble for `subjects`, it bt default check value of subject declared in its scope
    end
end
