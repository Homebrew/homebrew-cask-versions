cask "zulu7" do
  version "7.0.302,7.46.0.11-ca"
  sha256 "216f9da2bc32431103bb0a2ad17981aa89e54ae3260fe1c69542fa355fedf88e"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
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
