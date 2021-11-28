cask "xampp7" do
  version "7.4.26-0"
  sha256 "f75d6ed596cff67d1913b1bb89e7d2405f8b921a35e70f089730e991663a7c07"

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
