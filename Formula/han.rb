# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.0/han-darwin-arm64"
      sha256 "663b0c41870a3e28acec8c2858532a12cc1b0ebd799a8f068579b9f537c1c1d0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.0/han-darwin-x64"
      sha256 "6bc0e01f1827a97170dd367df20f0bd9fa246855d9cba267da66bb1c5d1c814f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.0/han-linux-arm64"
      sha256 "fdb7796362fd02ac966c20703f8a41e8ea4b40e23597ee6dfcf8e438b7097bd0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.0/han-linux-x64"
      sha256 "7d2694a68710e0d08db1c4e32b41121ca2103e76eac188d55b8fae96246980ce"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
