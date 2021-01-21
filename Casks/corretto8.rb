cask "corretto8" do
  version "8.282.08.1"
  sha256 "3fa660cf19aa21e64492682745fbc80e983e93a1a593b4c5e9452e68582e0e6f"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://corretto.aws/downloads/latest/amazon-corretto-8-x64-macos-jdk.pkg"
  name "Amazon Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
