cask "thingsdiary" do
  version "1.6.5"
  sha256 "476f87490220a386120854ee1673c48dd556df3a6dc81c28038f086d4bbeb317"

  url "https://github.com/thingsdiary/thingsdiary-mac/releases/download/v#{version}/thingsdiary.dmg"
  name "thingsdiary"
  desc "Desktop client for thingsdiary.io"
  homepage "https://github.com/thingsdiary/thingsdiary-mac"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "thingsdiary.app"

  caveats <<~EOS
    This build has an ad-hoc signature rather than an Apple Developer ID.
    On first launch, macOS may block it. Try opening it once, then go to
    System Settings > Privacy & Security and click Open Anyway.
  EOS
end
