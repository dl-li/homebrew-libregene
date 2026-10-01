cask "libregene" do
  version "0.5.0"
  sha256 "8de48c6bcdad66ae5c051535757363bcde4cfce080cc65e4aebc550426a28b10"

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
