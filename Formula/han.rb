# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.14.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.14.3/han-darwin-arm64"
      sha256 "3a8ecd83061b0de6fb5f09d07453a91db7f8405f20cbddd58c56834c97d43c59"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.14.3/han-darwin-x64"
      sha256 "2a97f28d2abbd783d731e55a1a84a0e2b3be6efa6c1cabd83de0350a6d0a19a1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.14.3/han-linux-arm64"
      sha256 "e0a69ecf52a5c5edb2f37cb202a03286de2bd41f18903cac0c4f609d912f1c5c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.14.3/han-linux-x64"
      sha256 "330b15b1540206d6b0c0631f40c760ca90c17d586ae242778ef035e856efa340"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
