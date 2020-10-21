cask "corretto8" do
  version "8.265.01.1"
  sha256 "2244f6f5603a08257d57e25dddc17eceb33aa948d34d82be4ea22c34cba1004f"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://corretto.aws/downloads/latest/amazon-corretto-8-x64-macos-jdk.pkg"
  name "Amazon Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
