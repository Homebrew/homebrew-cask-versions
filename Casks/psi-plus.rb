cask 'psi-plus' do
  version '1.4.567'
  sha256 '28c2e46dde32f02ea05636fa5af804e51c39756ee6cb5005f8a77666ec75cd44'

  # downloads.sourceforge.net/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/Psi+-#{version}-macOS10.12-x86_64.dmg"
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
