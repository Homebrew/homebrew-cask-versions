cask 'boxcryptor-beta' do
  version :latest
  sha256 :no_check

  url 'https://www.boxcryptor.com/l/download-macosx-beta'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en'
  license :commercial

  depends_on macos: '>= :lion'

  app 'Boxcryptor.app'
end
