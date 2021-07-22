cask "zulu8" do
  if Hardware::CPU.intel?
    sha256 "4e667ac2b946d8890a0d9ffe2168e1ad1ccb3f82c3683ccd3f10ce5349c874a7"
    version "8.0.302,8.56.0.21-ca"
    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
    
    livecheck do
      url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos&arch=x86"
      strategy :page_match do |page|
        match = page.match(%r{url"\s*:\s*"https:.*?/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macos}i)
        "#{match[2]},#{match[1]}"
      end
    end
  else
    version "8.0.302,8.56.0.23-ca"
    sha256 "ee6c3ceaa3ef384c322c50b64feeaf0e7a9b54895300a4935b50a8e5df22e858"
    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
    
    livecheck do
      url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos&arch=arm"
      strategy :page_match do |page|
        match = page.match(%r{url"\s*:\s*"https:.*?/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macos}i)
        "#{match[2]},#{match[1]}"
      end
    end
  end

  name "Azul Zulu Java 8 Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/?package=jdk"
  
  depends_on macos: ">= :yosemite"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
