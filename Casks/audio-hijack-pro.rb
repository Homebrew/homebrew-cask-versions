cask :v1 => 'audio-hijack-pro' do
  version '2.11.4'
  sha256 '7fd4dc4b08b1b0e72dbf59b47c655840ceb75801d0362c778c436a2532ae239c'

  url "https://rogueamoeba.com/legacy/downloads/AudioHijackPro-#{version.gsub('.','')}.zip"
  name 'Audio Hijack Pro'
  homepage 'http://www.rogueamoeba.com/audiohijackpro/'
  license :commercial

  app 'Audio Hijack Pro.app'

  depends_on :macos => %w{
                          :lion,
                          :mountain_lion
                         }
end
