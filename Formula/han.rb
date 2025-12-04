# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.47.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.2/han-darwin-arm64"
      sha256 "4694413239f66c0922072846d7def2e15898d0283b85869d7aee56ad05a7a6b3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.2/han-darwin-x64"
      sha256 "ae03693b25da1e2114ae6035443d226d75f28c907bcce9c6f29cfb180817124d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.2/han-linux-arm64"
      sha256 "0381d47feb48bba974f37a6b8028506d1255c6cfa723e526551be175024b3f67"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.2/han-linux-x64"
      sha256 "71a42bb300f3ace6951c62464bc6fed518680e5ed6a0d17a5eae9c9e4c5d3729"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
