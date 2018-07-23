describe PlaceCategory, 'associations' do
  it { is_expected.to belong_to(:place) }
  it { is_expected.to belong_to(:category) }
end
