describe Country, 'associations' do
  it { is_expected.to have_many(:places).dependent(:restrict_with_error) }
end
