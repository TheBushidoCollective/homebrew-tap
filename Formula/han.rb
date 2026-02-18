# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.2/han-darwin-arm64"
      sha256 "1a0b5fcd6e793f8cce4930c7dff93a84d1e79d4b2a8de79487b260e9853accc5"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.2/han-darwin-x64"
      sha256 "b2ca709d5b05620a0408af3dfbef73a6a48c2df6c93a71ce153fc0a83884306c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.2/han-linux-arm64"
      sha256 "23733ee92f8d3a057a591a10a3547278debc20f3affab4d21c50a4612565e195"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.2/han-linux-x64"
      sha256 "a4dbaf0384d193cb565c32a5cbf0826d3ab5f66c6c64f068c7bcb23026fccdf4"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
