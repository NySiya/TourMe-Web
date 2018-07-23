describe Category, 'associations' do
  it { is_expected.to have_many(:place_categories) }
  it { is_expected.to have_many(:places).through(:place_categories) }
end

describe Category, 'validations' do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
end
