# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.55.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.2/han-darwin-arm64"
      sha256 "d116c18557566f97c94ecf824a6b6300b34f64838c50670904d673fae131e628"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.2/han-darwin-x64"
      sha256 "a6fadec1c408cd41dbbc35f771cb9a69e8cb0f228086f82acc8b5ad5f7c6b5ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.2/han-linux-arm64"
      sha256 "5c001d7ebb677e50dc57edbbb520bf85007311ac0f6e2fd8b671a77301c13917"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.2/han-linux-x64"
      sha256 "ddc6f49f62d5b30ab6dc9a2d9fe4441c7ea389e4e78af884e5a65a78eac45a99"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
