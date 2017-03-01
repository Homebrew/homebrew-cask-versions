cask 'wmail-prerelease' do
  version '2.3.1'
  sha256 '06195daef38df002c26058ace0efbc8d86e8778150c9be27d48d0aaec7e68328'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_prerelease_osx.dmg"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '8bdfc9efd95dffeb007621e2c8d8959f1f8eb490ff72694508bab598e8cbb1e5'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'

  conflicts_with cask: 'wmail'

  app 'WMail.app'
end
