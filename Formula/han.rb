# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.54.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.54.0/han-darwin-arm64"
      sha256 "15582edd6a4b04c0c6f193ccd64de3a6fc62141c9bad28a288bd9c9f6a5a74df"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.54.0/han-darwin-x64"
      sha256 "1afb06b23b088f8811665b1ddb153548555af474f64db73511473ae53b8380bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.54.0/han-linux-arm64"
      sha256 "307737beb8a06dd44faf5bf7f136a00742e7cca315c7e50d6ea2785d006c3ef1"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.54.0/han-linux-x64"
      sha256 "47db9b924547025f5deb57334b03f034dab6f4da342f16e54c9f1113329f0780"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
