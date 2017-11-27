cask 'reaper540' do
  version '5.40'
  sha256 '7b4d257b3716a3d2bcefcb64a863115ae221c25da3be3088ca7f1b1af80b8195'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  name 'REAPER'
  homepage 'https://www.reaper.fm/'

  app 'REAPER64.app'
  app 'ReaMote64.app'

  zap trash: [
               '~/Library/Application Support/REAPER',
               '~/Library/Saved Application State/com.cockos.reaper.savedState',
               '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
               '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
               '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
             ]
end
