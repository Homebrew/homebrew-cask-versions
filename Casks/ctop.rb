cask 'ctop' do
  version '0.7'
  sha256 '2106270f60b7b4774eef4eee05a84a5e3a733077730788840f74d323934c8d0e'

  url 'https://github.com/bcicen/ctop/releases/download/v0.7/ctop-0.7-darwin-amd64'
  name 'ctop'
  homepage 'https://ctop.sh/'

  binary 'ctop-0.7-darwin-amd64', target: 'ctop'
end
