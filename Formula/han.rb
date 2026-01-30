# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.3.1/han-darwin-arm64"
      sha256 "49083d4d4dd846a9fefad5c30834258d68607b98db2637a1874b7e886d112a39"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.3.1/han-darwin-x64"
      sha256 "3719b536685983fcd7f993a96320393466a0a7bf429df64e74237d1c9fb57adc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.3.1/han-linux-arm64"
      sha256 "51b8e61b57d1a6b58d7a7fe41dec44f9338499b85cf7370c2f47cf5a0b805770"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.3.1/han-linux-x64"
      sha256 "bcc0974a1000d4a04924dbbf6285e7849ce4552a66dd3f54484186c7bebae91e"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
