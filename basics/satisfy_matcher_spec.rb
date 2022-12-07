# Satistfy matchers are custom matcher

RSpec.describe 'satisfy matcher' do
    subject { 'racecar'}

    it 'should check is palindorme' do
        expect(subject).to satisfy{|v| v == v.reverse}
    end

    it 'should also check palindrome' do
        expect(subject).to satisfy('be palindrome') do |v|
            v == v.reverse
        end
    end
end