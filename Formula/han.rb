# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.44.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.2/han-darwin-arm64"
      sha256 "98b7a3966d972efcd3186a76442f0e2040dd0a2575412be9251aa280ae50ea2b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.2/han-darwin-x64"
      sha256 "292030201693fa0811a4a37768abc1ffe2b9c1b52b1f4fcc860002445ce9b627"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.2/han-linux-arm64"
      sha256 "8406f7995ab9289391e724cc6a93aab6db13b7d22b23c000a715dcfe1a04afff"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.2/han-linux-x64"
      sha256 "e8eac67f1b4ddff52406270c515906a3d5d02f088a11e47760931dc7c00cbef2"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
