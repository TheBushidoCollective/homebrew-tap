# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.0/han-darwin-arm64"
      sha256 "4c7e77f9e20705b783ca45a90de8ee7922bbbd44884816901f10c3aa05465ebf"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.0/han-darwin-x64"
      sha256 "d8eaf0219d5dca30283d396839e1df48aea3c8521ec7f08645243fed7dee93ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.0/han-linux-arm64"
      sha256 "553e81406914d37214e6399688566173484d01fbd1f8515e5c338024d7ccc441"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.0/han-linux-x64"
      sha256 "aa0f97ce366af0a2b68f4f784f397e2c694ac8da8ee6d46ffeadf99707bd12ba"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
