cask 'gemini-classic' do
  version '1.5.18,1490045539'
  sha256 '918c7a0e81958f304952f5f577ced2c37f69c900ea6000de2d7d0f4e66858f0c'

  # devmate.com/com.macpaw.site.Gemini was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Gemini/#{version.before_comma}/#{version.after_comma}/MacPawGemini-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.macpaw.site.Gemini.xml'
  name 'MacPaw Gemini'
  homepage 'https://macpaw.com/gemini-classic'

  app 'MacPaw Gemini.app'

  zap trash: [
               '~/Library/Application Support/MacPaw Gemini',
               '~/Library/Caches/com.macpaw.site.Gemini',
               '~/Library/Preferences/com.macpaw.site.Gemini.plist',
               '~/Library/Saved Application State/com.macpaw.site.Gemini.savedState',
             ]
end
