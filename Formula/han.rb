# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.21.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.6/han-darwin-arm64"
      sha256 "c51f1313ee29641440165030720728306fe5b4f6e992773f86cd1f0b5e7a2a9f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.6/han-darwin-x64"
      sha256 "5845aa820dce4cffb63bdc810990bf6e3ccf5885261cf83e81eb725960a7155d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.6/han-linux-arm64"
      sha256 "9ed842956933087b5b25ab1b79ad4c4452ad43956b2f97dfa149023e5aced8f2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.6/han-linux-x64"
      sha256 "25b7345486f455eb9d53bcba2248b89cd87b50f695dc1ca5073144483decee66"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
