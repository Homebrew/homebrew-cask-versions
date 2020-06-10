cask 'screenflow5' do
  version '5.0.7'
  sha256 '2b5a3e8b4469dd69b78f9960edef3fa3fc6de9085a1718f76d2403fa2f52acfd'

  url "https://www.telestream.net/download-files/screenflow/#{version.major_minor.dots_to_hyphens}/ScreenFlow-#{version}.dmg"
  name 'ScreenFlow'
  homepage 'https://www.telestream.net/screenflow/'

  auto_updates true

  app 'ScreenFlow.app'
end
