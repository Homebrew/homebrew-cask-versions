cask "xampp7" do
  version "7.4.28-0"
  sha256 "3961f8055297254d04397571fc9ec49ae5657dffeeceae6de23ef2ad450f3043"

  url "https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/#{version.split("-").first}/xampp-osx-#{version}-installer.dmg",
      verified: "downloadsapachefriends.global.ssl.fastly.net/xampp-files/"
  name "XAMPP"
  desc "Apache distribution containing MySQL, PHP 7, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    url "https://www.apachefriends.org/download.html"
    regex(%r{href=.*?/xampp[._-]osx[._-]v?(7(?:\.\d+)*-\d+)[._-]installer\.dmg}i)
  end

  conflicts_with cask: "xampp"

  installer script: {
    executable: "XAMPP.app/Contents/MacOS/osx-x86_64",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall quit:   "com.bitnami.manager",
            script: {
              executable: "/Applications/XAMPP/uninstall.app/Contents/MacOS/osx-x86_64",
              args:       ["--mode", "unattended"],
              sudo:       true,
            },
            delete: "/Applications/XAMPP/"
end
