# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.41.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.0/han-darwin-arm64"
      sha256 "b2830d8860742dc5f60dc7c3c8b11635f522dcfeca1059bde5574c5ac4cd1399"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.0/han-darwin-x64"
      sha256 "915ca19222a3efcd8cb6a4c6040dde0c291364b23b5d89988272426cd1a074d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.0/han-linux-arm64"
      sha256 "684622114dc0bd8a56277c76c9db25acece385a60def4c36dd1484a805cb8362"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.0/han-linux-x64"
      sha256 "e7e1c5b7210fd07cdd0590270897b1696d92c4d684532cf4553ef6981ad45823"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
