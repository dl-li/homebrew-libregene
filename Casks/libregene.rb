cask "libregene" do
  version "0.8.1"
  sha256 "3e66b69986a6859aa001aca2d271d79ea5b86f51e4b31f1decd63ad4d832416d"

  url "https://github.com/dl-li/LibreGene/releases/download/v#{version}/LibreGene_#{version}_aarch64.dmg"
  name "LibreGene"
  desc "Cross-platform plasmid editor"
  homepage "https://github.com/dl-li/LibreGene"

  depends_on arch: :arm64

  app "LibreGene.app"

  zap trash: [
    "~/Library/Application Support/com.libregene.app",
    "~/Library/Caches/com.libregene.app",
    "~/Library/WebKit/com.libregene.app",
  ]
end
