# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.23.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.1/han-darwin-arm64"
      sha256 "5fde067070bf8cd0274059954c39db4035d5eadaef1d882300d5e164016702a7"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.1/han-darwin-x64"
      sha256 "c6eeae1957d5ea10458568d69a3f6abbbc5c56c9b4806540443829ec6ac63105"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.1/han-linux-arm64"
      sha256 "6acd08783dd6006865d1a0a48535c0a3c48cb3c0c1dc5e15d6ea9a007c7c949a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.23.1/han-linux-x64"
      sha256 "f29e60923293a1a8973d1d2ccc96869723a04e1ca544e24ed86fca0ffc0e5403"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
