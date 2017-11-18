cask 'psi-plus' do
  version '1.2.105,2017-10-28'
  sha256 'df24c6f6baa72ba218e6854cd389472aa1633164e086f709bb071135533ee69d'

  # downloads.sourceforge.net/psiplus/Mac-OS-X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/psiplus/Mac-OS-X/psi-plus-#{version.before_comma}-qt5-webengine-git-#{version.after_comma}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/psiplus/rss',
          checkpoint: 'bcde13475f4a46b8a08a8ca7f42d6bd8f6f03a36739d25911f19c240b92d3336'
  name 'Psi+'
  homepage 'http://psi-plus.com/'

  app 'Psi+.app'

  uninstall quit: 'com.googlecode.psi-dev'

  zap trash: [
               '~/Library/Saved Application State/com.googlecode.psi-dev.savedState',
               '~/Library/Caches/Psi+',
               '~/Library/Application Support/Psi+',
             ]
end
