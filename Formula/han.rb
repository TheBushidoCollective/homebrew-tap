# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.23.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.3/han-darwin-arm64"
      sha256 "c3680cb60d3a4d4709c315eb2ced4932db0ba33a3f7e44eafdac10e8c4a1d44a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.3/han-darwin-x64"
      sha256 "a9c81c7e875e1429c3de1ee0436d1bf3813b66d69edd87eac90f8a90cfb3cf85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.3/han-linux-arm64"
      sha256 "bb18798c5e56355776ab8dc82ebe5db6e0a075f8e3f9477c26b092c3739366ea"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.3/han-linux-x64"
      sha256 "d38d53fc1fca20835b6b61cc81e2e236d7d10ebfece3352360a9a804041420f3"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
