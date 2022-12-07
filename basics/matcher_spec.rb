RSpec.describe 'Not Matcher' do
    it 'should use not matcher' do
        expect(1).not_to eq(2)
    end
end

RSpec.describe 'Change Matcher' do
    subject { [1,2,3] }
    # change run before and after every example
    # for change, we use block with expect kw
    it 'should use change matcher' do
        expect{ subject.push(4) }.to change{ subject.length}.from(3).to(4)
        expect{ subject.push(4) }.to change{ subject.length}.by(1) # this is short hand of above
        expect{ subject.pop }.to change {subject.length }.by(-1)

    end
end

RSpec.describe 'Comparison Matcher' do
    it 'should use comparison matcher' do
        expect(2).to be > 1
        expect(1).to be >= 1
    end

    describe 100 do # this is alias of `subject { 100 }`
        it { is_expected.to be == 100  }
        it { is_expected.not_to be > 100 }
    end
end

RSpec.describe 'Predicate Methods' do
    it 'should use predicate methods' do
        expect(2).to be_even
        expect(1).to be_odd
        expect(0).to be_zero
        expect([]).to be_empty
    end

    describe 0 do # this is alias of `subject { 0 }`
        it { is_expected.to be_even  }
        it { is_expected.not_to be_odd }
        it { is_expected.to be_zero }
    end
end

RSpec.describe 'All Matcher' do
    it 'should use all matcher' do
        expect([2,4,6]).to all(be_even)
        expect([1,5,3]).to all(be_odd)
        expect([0,0,0]).to all(be_zero)
        expect([1,2,3]).to all(be > 0)
    end

    describe [2,4] do # this is alias of `subject { [2, 4] }`
        it { is_expected.to all(be_even)  }
        it { is_expected.to all(be > 0) }
    end
end

RSpec.describe 'contain_exactly matcher' do
    subject { [1, 2, 3] }
  
    describe 'long form syntax' do
      it 'should check for the presence of all elements' do
        expect(subject).to contain_exactly(1, 2, 3)
        expect(subject).to contain_exactly(3, 2, 1)
        expect(subject).to contain_exactly(2, 1, 3)
  
        # expect(subject).to contain_exactly(1, 2)
        # expect(subject).to contain_exactly(1, 2, 3, 4)
      end
    end
  
    it { is_expected.to contain_exactly(1, 2, 3) }
    it { is_expected.to contain_exactly(3, 1, 2) }
    it { is_expected.to contain_exactly(2, 3, 1) }
  end

RSpec.describe 'Be Matcher' do
    let(:h) {{ name: "sikandar" }}
    it 'should use be matcher' do
        expect(true).to be_truthy
        expect(1).to be_truthy
        expect(3.14).to be_truthy
        expect(h).to be_truthy
        expect([1,5,3]).to be_truthy

        expect(false).to be_falsy

        expect(nil).to be_nil
        expect(h[:age]).to be_nil

        expect([]).to be_empty

    end

    describe [2,4] do # this is alias of `subject { [2,4] }`
        it { is_expected.to all(be_even)  }
        it { is_expected.to all(be > 0) }
    end
end

RSpec.describe 'Equality Matcher' do
    let(:a) { 3.0 }
    let(:b) { 3 }

    context 'eq matcher' do
        it 'should ignore types' do
            expect(a).to eq(b)     
        end
    end

    context 'eql matcher' do
        it 'should check types with values' do
            expect(a).not_to eql(b)     
        end
    end

    context 'equal(be) matcher' do
        let(:arr1) { [1,2,3] }
        let(:arr2) { [1,2,3] }
        let(:temp) { arr1 }
        it 'should equal if both refer to same obj in memory (same identity)' do
            expect(temp).to equal(arr1)
            expect(arr1).not_to be(arr2)
        end
    end
end

RSpec.describe 'Start with Matcher' do
    context 'start_with end_with matcher' do
        describe 'sikandar' do
            it { is_expected.to start_with('sik')}
            it { is_expected.to end_with('dar')}
        end
    end
end
