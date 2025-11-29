# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.19.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.19.1/han-darwin-arm64"
      sha256 "b128256e0146e69da1454987695d23c19af4f98621d7177abe84394b5d5fffce"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.19.1/han-darwin-x64"
      sha256 "8ed9d603622b06f9e7a755e21cde2595ec2c703e3b3cba82dcb6341203dc5d27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.19.1/han-linux-arm64"
      sha256 "16cd8824b9ded8db5a1a8982ded8deee0a8ede871d94a1b1628d021cc352bfd3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.19.1/han-linux-x64"
      sha256 "55608da9bb704fcf2b1f768588a66b4ffdcc87a55d6b3e92588145ed3b5e4e62"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
