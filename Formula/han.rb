# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.39.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.1/han-darwin-arm64"
      sha256 "dbb6ea391eebe2d9f4cf2c9d37161b7a01c3cac42795ac6111859c9cbd9e9cbc"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.1/han-darwin-x64"
      sha256 "3f1365e9870f815f6b63f82a8feb0b9e7ab4485b1501959fe79121d5b0ec6dfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.1/han-linux-arm64"
      sha256 "7d5aaea5e26b0ae75045092aa0b7db5b438ad77d7d52e40823afbff6919e6be6"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.1/han-linux-x64"
      sha256 "6bf22389df6ee355c40086d42e000ea2d2ba067fa7967d66aa234be90d8359f3"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
