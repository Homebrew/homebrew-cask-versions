cask 'soundflower-ultraschall' do
  version '1.0'
  sha256 '6e37689eb27db942189e18b970916c1d4576026cac9668fceed214201dc25149'

  url "https://github.com/MariusE/Soundflower-Ultraschall-Edition/releases/download/#{version}/Soundflower-#{version}.dmg"
  homepage 'https://github.com/MariusE/Soundflower-Ultraschall-Edition'
  license :oss

  pkg 'Soundflower.pkg', :allow_untrusted => true
  # early_script is a workaround for a slowly unloading kext, see private-eye cask
  uninstall :early_script => {
              :executable => '/sbin/kextunload',
              :args => ['-b', 'com.Cycling74.driver.Soundflower'],
              :must_succeed => false,
            },
            :pkgutil => 'com.cycling74.soundflower.*',
            :delete => '/Applications/Soundflower',
            :kext => 'com.Cycling74.driver.Soundflower'
end
