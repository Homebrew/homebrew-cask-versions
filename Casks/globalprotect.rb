cask 'globalprotect' do
  version :latest
  sha256 :no_check

  url "http://api01/GlobalProtect.tar.gz"
  name 'GlobalProtect'
  homepage 'https://www.paloaltonetworks.com/products/globalprotect'

  app ''
end
