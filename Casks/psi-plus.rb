cask 'psi-plus' do
  version '1.4.567-macOS10.12'
  sha256 '7cb90ddd612e6e96a95d7df3e6c3d945da05c198cc6d929cae484ed59ab305f1'

  # downloads.sourceforge.net/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/Psi+-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/psiplus/rss'
  name 'Psi+'
  homepage 'https://psi-plus.com/'

  app 'Psi+.app'

  uninstall quit: 'com.psi-plus'

  zap trash: [
               '~/Library/Saved Application State/com.psi-plus.savedState',
               '~/Library/Caches/Psi+',
               '~/Library/Application Support/Psi+',
             ]
end
