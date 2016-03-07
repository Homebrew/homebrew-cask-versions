cask 'royal-tsx-beta' do
  version '3.0.0.4'
  sha256 '71f5473eb4f8d73c9d9213a83743aae8c1e100126771f28c031c456710087d34'

  # royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v#{version.major}.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "http://v#{version.major}.royaltsx.com/updates_beta.php",
          checkpoint: 'f5388e8122ede471b70e49684ad8e3c7af4083515a43f41ce8d153f64065126b'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
