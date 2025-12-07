# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.52.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.0/han-darwin-arm64"
      sha256 "34880c775f662c7f4e6e2402cf583a27ed657f4642f7e370d76b5310bc5db5d0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.0/han-darwin-x64"
      sha256 "7f68499139bf902e0a9bd6c73036fc862137a5b3a50bba80f392fbc785c1e5e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.0/han-linux-arm64"
      sha256 "2862a2860064dacfd4faba00f9cdc93cef641b170458c86c0770fe1a8e5a7083"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.0/han-linux-x64"
      sha256 "7a6b4fb408ce8706d765a368e0883c5d64cff171391aad46d97e6f7d563fea24"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
