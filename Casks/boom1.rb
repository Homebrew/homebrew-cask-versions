cask :v1 => 'boom1' do
  version '1.1'
  sha256 '674a09cddf7b64ec3eab1193820c9807db6e95e59df39437d2ca43ccbeba90c5'

  url "http://www.globaldelight.com/boom/download/#{version}x/boom.dmg"
  homepage 'http://www.globaldelight.com/boom/'
  license :commercial

  app 'Boom.app'
  
  postflight do
    # Delete the background image so that it will launch
    system '/bin/rm', '--', "#{staged_path}/.DMG_Background_new.png"
  end
end
