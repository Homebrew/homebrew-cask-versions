cask 'pgadmin4' do
  version '1.0-beta2'
  sha256 'b6523c47e552e64e3112f9bb9902faf0a21905023f491de8997658aa876ca077'

  # postgresql.org is the official download host per the vendor homepage
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
