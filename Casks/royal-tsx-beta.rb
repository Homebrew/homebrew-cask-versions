cask 'royal-tsx-beta' do
  version '3.0.1.2'
  sha256 'a57d161a16f26441318ae374d0ce912e6d12d3616784ec1ba495c4ed35f8733c'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'd145d3f7e55905822ddc24fa8a0db639d54e62353bbfe32ce126ee86aad2f95a'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
