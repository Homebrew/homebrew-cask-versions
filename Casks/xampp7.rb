cask "xampp7" do
  version "7.4.29-1"
  sha256 "c21aa7631a6ed075a1aae991c11188238cf7c9bca6e19c2cd4fe41884651686b"

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
    executable: "xampp-osx-#{version}-installer.app/Contents/MacOS/osx-x86_64",
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
