cask 'skype-preview' do
  version :latest
  sha256 :no_check

  url 'https://go.skype.com/mac.preview.download'
  name 'Skype Preview'
  homepage 'https://www.skype.com/en/insider/'

  auto_updates true
  conflicts_with cask: 'skype'

  app 'Skype.app'
end
