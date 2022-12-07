# `#` for instace methods
# `.` for class methods
# `context` is used when we use conditions(describe is alias of context)

RSpec.describe "#even? method" do
    context 'when number is even' do
        it 'should return true' do
            expect(4.even?).to eq(true)
        end
    end

    context 'when number is odd' do
        it 'should return false' do
            expect(3.even?).to eq(false)
        end
    end
end
