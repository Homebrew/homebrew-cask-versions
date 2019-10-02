cask 'krita-dev' do
  version '4.2.7-beta1'
  sha256 '50dbae888eff53245296d23589670082ddafe71bc6428a6712d44d1d3b8ff5af'

  # download.kde.org/unstable/krita was verified as official when first introduced to the cask
  url "https://download.kde.org/unstable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  conflicts_with cask: 'krita'
  depends_on macos: '>= :sierra'

  app 'Krita.app'

  zap trash: [
               '~/Library/Application Support/krita',
               '~/Library/Preferences/kritadisplayrc',
               '~/Library/Preferences/kritarc',
               '~/Library/Saved Application State/org.krita.savedState',
             ]
end
