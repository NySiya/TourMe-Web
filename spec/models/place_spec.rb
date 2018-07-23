describe Place, 'associations' do
  it { is_expected.to belong_to(:country) }
  it { is_expected.to have_many(:gallery).dependent(:destroy) }
  it { is_expected.to have_many(:place_categories) }
  it { is_expected.to have_many(:categories).through(:place_categories) }
end
