class User
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end

RSpec.describe 'have attributes matcher'do
    describe User.new('Sikandar', 22) do # this store in subject & in short hand syntax subject is auto evaluated
        it { is_expected.to have_attributes(name: 'Sikandar') }
        it { is_expected.to have_attributes(name: "Sikandar", age: 22)}
    end

    describe ({ name: 'Sikandar', age: 22}) do # subject
        it { is_expected.to include(:name) }
        it { is_expected.to include(:name, :age)}
    end
end