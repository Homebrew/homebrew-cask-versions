cask :v1 => 'boom1' do
  version '1.1'
  sha256 'fe0edcb5e0c147b948dcab0d00bb042bfa2ecb32dda7f64c2aac90785585b676'

  url "http://www.globaldelight.com/boom/download/#{version}x/boom.dmg"
  homepage 'http://www.globaldelight.com/boom/'
  license :commercial

  app 'Boom.app'
  
  postflight do
    # Delete the background image so that it will launch
    system '/bin/rm', '--', "#{staged_path}/.DMG_Background_new.png"
  end
end
