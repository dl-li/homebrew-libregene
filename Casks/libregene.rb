cask "libregene" do
  version "0.7.1"
  sha256 "d4cc2521dec82d19cb29602a800cf2b3155ecdf87ac4130fe839d421aa77138e"

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
