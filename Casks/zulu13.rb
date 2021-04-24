cask "zulu13" do
  version "13.0.7,13.40.15-ca"

  if Hardware::CPU.intel?
    sha256 "7195a58529887ecdd00ff1f8a776d4ed75e83ddf4f6a79274e7f02f95f4a37e4"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  else
    sha256 "e5d644c9a6842b8e6400ce2356a692103711530ad0593a81b9398ab72f3386f8"

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
