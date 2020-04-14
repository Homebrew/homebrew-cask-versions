cask 'corretto8' do
  version '8.252.09.1'
  sha256 'b0564c88d77ddf7e02a5d62b08c3da207f3009ffa6a3fb2c9e3ebc799556afc3'

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://corretto.aws/downloads/latest/amazon-corretto-8-x64-macos-jdk.pkg'
  name 'Amazon Corretto'
  homepage 'https://corretto.aws/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
