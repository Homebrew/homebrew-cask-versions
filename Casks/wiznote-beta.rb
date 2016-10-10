cask 'wiznote-beta' do
  version '2016-07-07'
  sha256 '9ea993765583ed812ae66a372035b804e1f08084593e451b9877d4aa966f7d68'

  url "http://cdn.wiz.cn/download/2016/wiznote-macos-#{version}.dmg"
  name 'WizNote'
  homepage 'http://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
