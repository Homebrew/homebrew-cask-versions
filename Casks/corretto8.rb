cask 'corretto8' do
  version '8.242.08.2'
  sha256 '61c31c07b8ce4266ca609dbc76de4260c396f5eb0876627647e50d75dc4d93e5'

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://corretto.aws/downloads/latest/amazon-corretto-8-x64-macos-jdk.pkg'
  name 'Amazon Corretto'
  homepage 'https://corretto.aws/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
