# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.18.0/han-darwin-arm64"
      sha256 "73c27a0571fa72d037c907471268fe4e1edc8f8b349442fd6802f8db50f4d79b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.18.0/han-darwin-x64"
      sha256 "da204045ce93f0b2694b2d8373bfab53badb2d8614b43e59d4185b12f3669171"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.18.0/han-linux-arm64"
      sha256 "e21e28bd005a72704d10ff3e940c2bc4f88d2fc9d059c3790b8defa5ba1b3e77"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.18.0/han-linux-x64"
      sha256 "b7d247e7a31610c8720053013f7ca1069618695a71a060d5e6ee14347b67dd80"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
