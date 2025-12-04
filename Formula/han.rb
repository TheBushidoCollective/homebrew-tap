# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.48.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.0/han-darwin-arm64"
      sha256 "d0c4c7d3368045d95e2b6dda1d39bbeab8a597a5b90c961aa0fca84e78bbd5fa"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.0/han-darwin-x64"
      sha256 "03002a7a02e8d6f5d3d5a3066c33a07ced91bfcfb6b0f280d57116b11f043fde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.0/han-linux-arm64"
      sha256 "b1d14c5ee693bcaa9132715b8e3d5c06091141c04f5bf60b84f9c80dd10b6347"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.0/han-linux-x64"
      sha256 "5776f03a9f21b56cfd378f1ea795c65a7ca1a8956e4dc45b7c50fa3a7999cf72"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
