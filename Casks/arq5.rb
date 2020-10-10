cask "arq5" do
  version "5.20"
  sha256 "41921031d8a14267785daf11fc636916b92c58b05d4b0a28b54e2ce653e60e91"

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  name "Arq"
  homepage "https://www.arqbackup.com/"

  auto_updates true
  conflicts_with cask: "arq"

  app "Arq.app"
end
