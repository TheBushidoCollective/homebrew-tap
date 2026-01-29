# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.6/han-darwin-arm64"
      sha256 "f04de863d63b21ce65e9cb6bcfe9f6a2094b6a928919a69e41b5c792ef2ad17d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.6/han-darwin-x64"
      sha256 "8dd103c968facf12c7e4e2855e5f6790e5a4f535a00130d215b41f93d6e7780d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.6/han-linux-arm64"
      sha256 "9c7cacb7046d585162244d7466e5bc1523fb6733eba5454ac3fed821b18ad072"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.6/han-linux-x64"
      sha256 "17577cf4eebcb9fceb20f6648be652fb821182dd402c6fb4d270cffedf206e71"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
