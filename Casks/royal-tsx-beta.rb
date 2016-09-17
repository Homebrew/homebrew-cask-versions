cask 'royal-tsx-beta' do
  version '3.0.0.34'
  sha256 'b20dc81441069a265a026fcae2cee8d8c98775b129bcd8f3bf2cc9d450bfed2c'

  # royaltsx-v3.royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: '2cec27eb2e72a350aeef7f5e6778dafa4f9d8dfd2558d7f39443d739dc49c0a2'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
