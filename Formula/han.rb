# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.49.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.3/han-darwin-arm64"
      sha256 "f6da7fd4b203cbd5a4fcb6e18b14dd8f6a6c99d485dcd2cb650e5b7f97f56b83"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.3/han-darwin-x64"
      sha256 "ee9f6196f740ad51f9dbff0e6f08d296324b3cee519cff995a5426103797f0a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.3/han-linux-arm64"
      sha256 "c3fb6f3b08c5b0a61a26d9582acbbb7fcb788c426a6eaf6614b656cd4d7a63ee"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.3/han-linux-x64"
      sha256 "c7a0b792713ac68964b796f0dbb4754f55de99488409af5cc1fa53140b8ea60c"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
