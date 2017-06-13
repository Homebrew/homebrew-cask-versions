cask 'royal-tsx-beta' do
  version '3.2.1.2'
  sha256 'db45e5dcdd012ef8c8bbbfe1b0f444d214075efe2a19f0209f957a9e83619223'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'e74ff52812f38b4fbd7034374766901e33af988cea6ba685d18c4f1c40e8bdd6'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
