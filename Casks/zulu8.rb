cask "zulu8" do
  if Hardware::CPU.intel?
    sha256 "a60a31b33a8386f9b446cad2615e33d0190eb0f18cdf8d6812b74fd6e0f4f716"
    version "8.0.292,8.54.0.21-ca"
    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
    
  else
    version "8.0.292,8.54.0.21-ca"
    sha256 "78bfc25d73568f94a2f3f46be4ef2f4723250f8a7b3691e68f33528e7517d2d4"
    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  end

  name "Azul Zulu Java 8 Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/?package=jdk"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos"
    regex(/url":"https:.*zulu(.*)-jdk(.*)-macos/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[1] + "," + match[0] }
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
