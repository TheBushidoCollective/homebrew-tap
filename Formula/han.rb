# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.22.0/han-darwin-arm64"
      sha256 "b0b30bbe854caee31ebd4e3e18b73d77ebc1c65299ab166def46c76352f49ae5"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.22.0/han-darwin-x64"
      sha256 "d53c77280c2ec29ca9c9f7b5749691ddb0f73c703f4981b266014076bb48480a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.22.0/han-linux-arm64"
      sha256 "6ca3365d31b6f5278887f6aff400a71550a32ba68a071ef29bc7fad18711794e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.22.0/han-linux-x64"
      sha256 "ff4d824d050284fbf1cc3f4d3a38e1a9b3dd68ec7a51c55ab8970807ce197b79"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
