cask 'pgadmin4' do
  version '1.0-rc1'
  sha256 'f1ab4b0f0dc59377c8b09b744dc8703de769e406c76a2f3051159d7de35ab66e'

  # ftp.postgresql.org was verified as official when first introduced to the cask
  url "https://ftp.postgresql.org/pub/pgadmin3/pgadmin4/v#{version}/osx/pgadmin4-#{version}.dmg"
  name 'pgAdmin4'
  homepage 'http://pgadmin.org'
  license :oss
  gpg "#{url}.sig",
      key_id: 'e0c4ceeb826b1fda4fb468e024adfaaf698f1519'

  app 'pgAdmin 4.app'

  zap delete: [
                '~/.pgadmin',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pgadmin.pgadmin4.sfl',
                '~/Library/Preferences/org.pgadmin.pgAdmin 4.plist',
                '~/Library/Saved Application State/org.pgadmin.pgAdmin4.savedState',
              ]
end
