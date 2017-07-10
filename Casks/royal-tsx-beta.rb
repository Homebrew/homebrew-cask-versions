cask 'royal-tsx-beta' do
  version '3.2.1.6'
  sha256 '5235fc45adcff42bc27aad9d67da95e65baaccaf44de71553d47f3f1e43e26cb'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'a88f37d8571ca52e438c9aa8299c172a387884009096af9f83ab93d7e5d3470e'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
