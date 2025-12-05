# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.48.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.5/han-darwin-arm64"
      sha256 "d05eebff3c39ef4f58a58168ba39f6a69e8c96cc880960d26c61d0b1dc2bd9bc"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.5/han-darwin-x64"
      sha256 "bdf94c7ee34d1ecb881055728f03c9dcd177720c89e14718f51697e08fd8799f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.5/han-linux-arm64"
      sha256 "1192e11b7ffe83e227952dca2b96f5a09f813bc02537aa88549f13f3a6c7414c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.5/han-linux-x64"
      sha256 "5b4b37e57c3813afe81a0449e0dcba7dbb1e953392627c9055b83a9de5675c27"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
