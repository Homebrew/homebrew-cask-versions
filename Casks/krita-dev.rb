cask 'krita-dev' do
  version '4.2.0-preview'
  sha256 '7545412eebc797f06ade346de0e0738d41d854c4e12df4d8a46d6471269d83a8'

  # download.kde.org/unstable/krita was verified as official when first introduced to the cask
  url "https://download.kde.org/unstable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  conflicts_with cask: 'krita'
  depends_on macos: '>= :mavericks'

  app 'Krita.app'

  zap trash: [
               '~/Library/Application Support/krita',
               '~/Library/Preferences/kritadisplayrc',
               '~/Library/Preferences/kritarc',
               '~/Library/Saved Application State/org.krita.savedState',
             ]
end
