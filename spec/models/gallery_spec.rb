describe Gallery, 'associations' do
  it { is_expected.to belong_to(:place) }
end

describe Gallery, 'validations' do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:image) }
end
