cask "arq5" do
  version "5.19.1"
  sha256 "5b4926b90e2ebac01d4e8d8daad5e39d0ba63b5714d6296315500365b4f60a85"

  url "https://www.arqbackup.com/download/arqbackup/Arq_#{version}.zip"
  name "Arq"
  homepage "https://www.arqbackup.com/"

  auto_updates true
  conflicts_with cask: "arq"

  app "Arq.app"
end
