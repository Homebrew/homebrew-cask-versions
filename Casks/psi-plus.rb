cask 'psi-plus' do
  version '0.16.545.538,2016-04-26'
  sha256 '137730bba82e4050f45f6d7d3c06ebd2e183eb23b30df93d35bb5d1563fae79d'

  # downloads.sourceforge.net/psiplus/Mac-OS-X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/psiplus/Mac-OS-X/psi-plus-#{version.before_comma}-qt4-git-#{version.after_comma}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/psiplus/rss',
          checkpoint: 'c2997be42f402406e09df8a5bae045270400021852728c0cb2b6d8d119dfc0e8'
  name 'Psi+'
  homepage 'http://psi-plus.com/'

  app 'Psi+.app'

  uninstall quit: 'com.googlecode.psi-dev'

  zap delete: [
                '~/Library/Saved Application State/com.googlecode.psi-dev.savedState',
                '~/Library/Caches/Psi+',
                '~/Library/Application Support/Psi+',
              ]
end
