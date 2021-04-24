cask "zulu11" do
  version "11.0.11,11.48.21-ca"

  if Hardware::CPU.intel?
    sha256 "5850bf567d04ca1bc62d95aee685c5638907111220008327db22d920df326046"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  else
    sha256 "99b15a085060dd39031cd94869ef330f8c58b44c281fb6ea51af903bf24fff10"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos"
    regex(/url":"https:.*zulu(.*)-jdk(.*)-macos/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[1] + "," + match[0] }
    end
  end

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
