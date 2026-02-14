# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.1/han-darwin-arm64"
      sha256 "488f0c46f98dcd4e2390cebe1f6099c7dcd8f3b97a7f8202f43d9a13f39f491e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.1/han-darwin-x64"
      sha256 "907da6e493c81d91e10c6ae294011cac746c82d2604c79c492397ae07d30759e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.1/han-linux-arm64"
      sha256 "4ecae8b2e0b7cd90e1912b5450b5dfce20ebac1c958a5a82d5daa66088fa9b49"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.1/han-linux-x64"
      sha256 "9db967a9b47e6ab68afe1a4c222d9e6df38dc3cbd6c8a4e2e49bbd0ccb7115a7"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
