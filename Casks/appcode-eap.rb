cask "appcode-eap" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "2022.2,222.3244.12"

  if Hardware::CPU.intel?
    sha256 "104eb2f2f2bbc3ab4ae214f573adc35e7646593332bcbba27d9f1b37509d8f51"
  else
    sha256 "1f53fdfd980090973a40ee3265ebc7949c304cdb2c14de092a00484f268d1ba8"
  end

  url "https://download.jetbrains.com/objc/AppCode-#{version.csv.second}#{arch}.dmg"
  name "AppCode EAP"
  desc "IDE for Swift, Objective-C, C, and C++ development"
  homepage "https://www.jetbrains.com/objc/nextversion/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=AC&latest=true&type=eap"
    strategy :page_match do |page|
      JSON.parse(page)["AC"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  conflicts_with cask: "appcode"

  app "AppCode #{version.csv.first} EAP.app"

  zap delete: [
    "~/Library/Application Support/AppCode#{version.csv.first}",
    "~/Library/Caches/AppCode#{version.csv.first}",
    "~/Library/Logs/AppCode#{version.csv.first}",
    "~/Library/Preferences/AppCode#{version.csv.first}",
  ]
end
