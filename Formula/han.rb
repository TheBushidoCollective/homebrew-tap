# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.39.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.5/han-darwin-arm64"
      sha256 "691d5aa57c9e465823e17d87c3a3891424f588537889b3840fa8596d9d3d4d87"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.5/han-darwin-x64"
      sha256 "8accc4c0fa2247007f0c3010f00e1b396b0e873f100a3b8b1b12faa491f11f62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.5/han-linux-arm64"
      sha256 "5364cd6d6342ebc14ea9cfc8f577daf399ef4e17b2a9d23c1303e98bbcd50375"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.5/han-linux-x64"
      sha256 "e29b90b70dc501a5c6e1c502ccaf1b1fb3c9b884ad1d3b377b0f22d842300db4"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
