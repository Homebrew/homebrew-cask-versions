cask :v1 => 'trillian-beta' do
  version :latest
  sha256 :no_check

  url 'https://www.trillian.im/get/mac/beta/'
  name 'Trillian'
  homepage 'https://www.trillian.im'
  license :commercial

  app 'Trillian.app'
end
