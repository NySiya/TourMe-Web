describe Place, 'associations' do
  it { is_expected.to belong_to(:country) }
  it { is_expected.to have_many(:place_categories) }
  it { is_expected.to have_many(:categories).through(:place_categories) }
  it { is_expected.to have_many(:galleries).dependent(:destroy) }
end

describe Place, 'validations' do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  it { is_expected.to validate_presence_of(:cover_image) }
end
