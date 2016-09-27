cask 'screenflow5' do
  version '5.0.6'
  sha256 'b0e2ec943246a781acd0fc115d319e361bb37f9f8edc0fd514ac066de8eb6ca0'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'
  license :commercial

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'ScreenFlow.app'
end
