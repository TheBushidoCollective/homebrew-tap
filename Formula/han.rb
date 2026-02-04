# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.7.3/han-darwin-arm64"
      sha256 "4299f2823dac02a48859c9aa139b869d9eecc1a54e1802d4501c3bec18ec4781"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.7.3/han-darwin-x64"
      sha256 "e4df52a5d9fff53d2e280b335cbaee6a39ceda4397b834fc14c8ca992c97a5bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.7.3/han-linux-arm64"
      sha256 "70a588b90464f0456bbf06e7662337a1ceffb3764e848227717d7f4c35521675"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.7.3/han-linux-x64"
      sha256 "64919c937f08fc3819df8475b5813cb89bca1209660d9ead76277b18fa31ac8b"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
