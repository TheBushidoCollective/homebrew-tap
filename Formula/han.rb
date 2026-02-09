# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.2/han-darwin-arm64"
      sha256 "5b2ce6f70021f5454769de4ef36a58f2018d915868bf97efa61d33f8c4fcc177"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.2/han-darwin-x64"
      sha256 "104f13b0a24704a4c1f20c8d774903b4768258107e8f7bb3cd25cdedabe09d83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.2/han-linux-arm64"
      sha256 "5cf98ece5d4e1a488333c1b36a1c50e8d258bf77ea0b4b1292a9b8c58b4e8178"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.2/han-linux-x64"
      sha256 "6b338140a4368b1f2a90292a98aaa9f8ee6ab6aabdb8ac23d3d0728f9c980edd"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
