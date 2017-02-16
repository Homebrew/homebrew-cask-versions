cask 'wmail-prerelease' do
  version '2.1.1'
  sha256 '87ba6695be4ed5d6664d411cb4f09639d49fe9c8c89f08c5d03d1895f8c95a32'

  # github.com/Thomas101/wmail was verified as official when first introduced to the cask
  url "https://github.com/Thomas101/wmail/releases/download/v#{version}/WMail_#{version.dots_to_underscores}_prerelease_osx.dmg"
  appcast 'https://github.com/Thomas101/wmail/releases.atom',
          checkpoint: '3f8d154cc47118f8070fb1a92f76b2c12928e5ad3a5d4019c788653209cedeec'
  name 'WMail'
  homepage 'https://thomas101.github.io/wmail/'

  conflicts_with cask: 'wmail'

  app 'WMail.app'
end
