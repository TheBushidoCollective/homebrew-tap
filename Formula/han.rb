# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.12.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.4/han-darwin-arm64"
      sha256 "ba7c94b40c97786632574ef47534a1d981bcef81b435faac1a1bbf5013185e2f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.4/han-darwin-x64"
      sha256 "1e724ee586936d0e45789c142ad26c271288e77da149943f867450577ff5543e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.4/han-linux-arm64"
      sha256 "966c49f5782d323acd63385aa594512228b033f80d706ff0996ce496b125a775"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.4/han-linux-x64"
      sha256 "d7ecc3881b690c8a43e11dc4bdbcd316827609107a590c0ff9fa9b16421e74f3"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
