cask 'scribus-dev' do
  version '1.5.4'
  sha256 '6f31b0b9bf27c952d820188343e2be73ab990be772e34551b030d9c04fa4f5b8'

  # sourceforge.net/scribus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scribus/scribus-devel/#{version}/scribus-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scribus/rss?path=/scribus-devel'
  name 'Scribus'
  homepage 'https://www.scribus.net/'

  conflicts_with cask: 'scribus'

  app 'Scribus.app'

  zap trash: [
               '~/Library/Application Support/Scribus',
               '~/Library/Preferences/Scribus',
               '~/Library/Saved Application State/net.scribus.savedState',
             ]
end
