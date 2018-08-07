cask 'thunderbird-beta' do
  version '60.0b10'

  language 'cs' do
    sha256 '96c253d0301ab08ce06ae1814702c679b1c4bdd0f6c3d252fe6c17d884850d52'
    'cs'
  end

  language 'en', default: true do
    sha256 '0caa487ec3e1d143fe4d22b4f50ea78b042e21ec6b0eeaeb0e33ade834b90596'
    'en-US'
  end

  language 'ru' do
    sha256 '72c4875c82705352dee2a60495349a21911378974cc6848f999aa0ed46944529'
    'ru'
  end

  language 'uk' do
    sha256 '3d16cc3ce62d4e8e608f8ec46a9aab4366a1415f28de7be34abd64087d65ee14'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  auto_updates true
  conflicts_with cask: 'thunderbird'

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
               '~/Library/Preferences/org.mozilla.thunderbird.plist',
             ]
end
