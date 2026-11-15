cask "libregene" do
  version "0.9.2"
  sha256 "c75a40e455c12a33f416211180bb06ea3e9b902dcd240c2847aa77cb51038d5e"

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
