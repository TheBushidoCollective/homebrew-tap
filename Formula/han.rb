# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.8/han-darwin-arm64"
      sha256 "5ec57c897e329619b9ccf54ac42248829974c5a9a44901069db6d382467b0297"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.8/han-darwin-x64"
      sha256 "47d70cac84a0c74a68b554b1d1f14cf93a4fa8931415c42353c50f10ec968f04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.8/han-linux-arm64"
      sha256 "9eeba619f25ee4018c67fe1c4355fb5398544422cfa5575cbde1b6ef436379f0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.8/han-linux-x64"
      sha256 "3b168d43adf1f4d0fee9e61575877985cfd1900e743ee99439fc85726f88cbeb"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
