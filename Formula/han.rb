# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.2.0/han-darwin-arm64"
      sha256 "038e1caf0198901ca1d4defeba5f987114913458f88088a5460bacaeccfe17f3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.2.0/han-darwin-x64"
      sha256 "d2b17cf64e1e6ba842cfed3879af9e10e2148294014f546b3efc55ade5a6c2e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.2.0/han-linux-arm64"
      sha256 "e8c6588e7cedf022af256a860d4186edfc8c2e6cdc69607623f717edd61f6ed8"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.2.0/han-linux-x64"
      sha256 "4d67fa69c7025f1bcee81dd39c14bc550636e2323189e6ef484ebd6a5bf2ac4e"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
