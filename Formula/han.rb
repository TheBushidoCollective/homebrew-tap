# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.21.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.5/han-darwin-arm64"
      sha256 "f474ed148fa9437e18a7f6a9f1b9592a316ec9426ee021c27d9b169b2bd31d2e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.5/han-darwin-x64"
      sha256 "c6687d820fbc3983771af1e177061cd9986efa95c884d12cdf112e8030968398"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.5/han-linux-arm64"
      sha256 "14237bdb2ff62d30ba424aa6a71bf6b5efee70e6e3be12dff5cc11e6ca2b3921"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.5/han-linux-x64"
      sha256 "b8b4ef521a60455cc804da6e34742afa655ffde078f9ac2e1eb6c4767678fa2f"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
