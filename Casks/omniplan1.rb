cask 'omniplan1' do
  version '1.7'
  sha256 '62cd16d91e9833bf2fcff7f083114572e5374f5516f8127c34a2a9444b58cccf'

  url "http://www.omnigroup.com/ftp/pub/software/MacOSX/10.4/OmniPlan-#{version}.dmg"
  name 'OmniPlan'
  homepage 'https://www.omnigroup.com/omniplan/'
  license :unknown

  app 'OmniPlan.app'
end
