cask "libregene" do
  version "0.7.0"
  sha256 "b0921f757d673975beaf48091e06c6835d0a83ed926b40317467877bd4cd3f60"

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
