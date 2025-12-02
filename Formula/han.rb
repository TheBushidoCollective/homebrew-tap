# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.10/han-darwin-arm64"
      sha256 "080871cf7c0d875ace1701cc009662fd5fe9bc68bd6fd01e82a7b766b2634f08"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.10/han-darwin-x64"
      sha256 "c7bc44bfa1bcd86966b0cf0014dffa702920114526cc9ed2ab59c4da967b2829"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.10/han-linux-arm64"
      sha256 "b77de4bd8ea770e90612a695c79e72b1ab970c431a61f66164a6df9684295250"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.10/han-linux-x64"
      sha256 "696b1bdb9166c838bd4d77fd0483620061afe614ee0c80f1c87bd5d1aecf7b1a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
