cask 'shimo3' do
  version '3'
  sha256 'b7ea5315ef77c0747735f5f5916f8b8727865134ac8f7c87bc00c582d0f68503'

  # feingeist.io was verified as official when first introduced to the cask
  url "https://www.feingeist.io/files/Shimo#{version}.zip"
  name 'Shimo'
  homepage 'https://www.shimovpn.com/'

  app 'Shimo.app'

  zap trash: [
               '~/Library/Application Support/Shimo',
               '~/Library/Preferences/com.chungwasoft.Shimo.plist',
               '~/Library/Caches/com.chungwasoft.Shimo',
               '/Library/PrivilegedHelperTools/com.chungwasoft.shimo.helper',
             ]
end
