cask 'psi-plus' do
  version '1.1.2,2017-07-20'
  sha256 '831420cbc4809d28a784f4ec8e68d00a18eaf2b20e6a5193deaf28cbfe57c044'

  # downloads.sourceforge.net/psiplus/Mac-OS-X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/psiplus/Mac-OS-X/psi-plus-#{version.before_comma}-qt5-webengine-git-#{version.after_comma}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/psiplus/rss',
          checkpoint: '8ebcfba2f0edb8c09d9d256e495ff92784e66fba30101c07c8fc758a10021386'
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
