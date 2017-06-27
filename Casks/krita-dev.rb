cask 'krita-dev' do
  version '4.0.0-prealpha'
  sha256 'f63313ea07fcc1329d4d696153c5d6877940e5a23ec77d432075bd2e88fbe274'

  # download.kde.org/unstable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/unstable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  conflicts_with cask: 'krita'
  depends_on macos: '>= :mavericks'

  app 'Krita.app'
end
