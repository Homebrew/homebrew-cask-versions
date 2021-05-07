cask "xampp7" do
  version "7.4.18-0"
  sha256 "97f81af7be9bee1d6094e5f94113192f260d3c5b2a58bdc2b48d849e44d5de21"

  url "https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/#{version.split("-").first}/xampp-osx-#{version}-installer.dmg",
      verified: "downloadsapachefriends.global.ssl.fastly.net/xampp-files/"
  name "XAMPP"
  desc "Apache distribution containing MySQL, PHP 7, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    url "https://www.apachefriends.org/download.html"
    strategy :page_match
    regex(%r{href=.*?/xampp-osx-(7(?:\.\d+)*-\d+)-installer\.dmg}i)
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
