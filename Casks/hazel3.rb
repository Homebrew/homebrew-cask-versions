cask 'hazel3' do
  version '3.3.8'
  sha256 '7bcea2495aacd3245a42e4dafc3f0cec6bde5f1dacdd9b53bea6560a6bff8f50'

  url "https://www.noodlesoft.com/Downloads/Hazel-#{version}.dmg"
  name 'Hazel'
  homepage 'https://www.noodlesoft.com/'

  prefpane 'Install Hazel.app/Contents/Resources/Hazel.prefPane'

  zap trash: [
               '~/Library/Application Support/Hazel',
               '~/Library/Preferences/com.noodlesoft.Hazel.plist',
               '~/Library/Preferences/com.noodlesoft.HazelHelper.plist',
             ]
end
