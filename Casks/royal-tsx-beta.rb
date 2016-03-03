cask 'royal-tsx-beta' do
  version '3.0.0.3'
  sha256 'b775b83d5decc39a6af31c52eaea9ee4f76089e44a0df3484e6838c20dc0a427'

  # royalapplications.com was verified as official when first introduced to the cask
  url "https://royaltsx-v#{version.major}.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast "http://v#{version.major}.royaltsx.com/updates_beta.php",
          checkpoint: '4de03fb7793f10e27e42bcadfd8b0459eab4ac2a6913a4806ae829dd0428a329'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
