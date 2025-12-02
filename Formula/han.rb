# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.30.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.3/han-darwin-arm64"
      sha256 "b45a52aa9fc56de49bc2c3fcbdad58b8c812536cc5d9cf0bcbce5644cdc599af"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.3/han-darwin-x64"
      sha256 "5613eeb03d6ff26551386a10ac8d62f2e70bb15c7e8f4f9b74dee5bf3b2d4bfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.3/han-linux-arm64"
      sha256 "f907df69de66aec12c27698478df88bb84cd0d214afbccb52b49e826e38b88f7"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.30.3/han-linux-x64"
      sha256 "885b84e8672289ffbc58f57b86a297d2d26ead00759b269ed891e3f262914701"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
