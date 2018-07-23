describe Country, 'associations' do
  it { is_expected.to have_many(:places).dependent(:restrict_with_error) }
end

describe Country, 'validations' do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
end
