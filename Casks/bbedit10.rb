cask :v1 => 'bbedit10' do
  version '10.5.13'
  sha256 '2de7baf01ba12650e158e86c65bea72103eca840ab2de45121e3460d09a58ebd'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
