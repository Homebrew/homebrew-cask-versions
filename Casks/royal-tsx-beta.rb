cask 'royal-tsx-beta' do
  version '3.0.1.8'
  sha256 'c8e49e47c50953bfc49bf063d315a0511d97bbcac5b4a1ce1c85051b8fd10489'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'e4ea17d354106d686a5d6d975d6f1abb05ebc705bcc93f50081f4f2b1fc2a0b2'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
