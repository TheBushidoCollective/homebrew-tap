# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.7.1/han-darwin-arm64"
      sha256 "6fad53ed333b3848aaa3c0ca3efc51f23bcd87d9ac0c581ebcb3f1dc4316d6e1"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.7.1/han-darwin-x64"
      sha256 "e33b8c7747281f2f4cce6a5844fea1135747942b16b9f6d2ecf3090baf6d48bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.7.1/han-linux-arm64"
      sha256 "9553218c96a99acf4bd2bddfa844122a01a817c3beab0059932c3a96cd1263d0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.7.1/han-linux-x64"
      sha256 "47ae452cff1b5a610d8a22930758d6bd56f23d86e2b895ae633b3a88f3a02750"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
