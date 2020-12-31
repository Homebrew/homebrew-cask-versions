cask "corretto8" do
  version "8.275.01.1"
  sha256 "d136db770d98725910535b95ca934157e2af6f9f2be0a13ec7834a6aa25028af"

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://corretto.aws/downloads/latest/amazon-corretto-8-x64-macos-jdk.pkg"
  name "Amazon Corretto JDK"
  desc "OpenJDK distribution from Amazon"
  homepage "https://corretto.aws/"

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
