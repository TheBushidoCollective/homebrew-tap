# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.36.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.1/han-darwin-arm64"
      sha256 "19420d0d5a9270497d637eb88376e80cad0e28a755e1aadd7ba6555cea040b34"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.1/han-darwin-x64"
      sha256 "ba7b8071d6bc6c116b1d09673c32a757d9b22f9e5e3481d8b7031adbf7b232d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.1/han-linux-arm64"
      sha256 "1496289dc45dc73d355a68792687bd4b1d4c2f2c4b361a6c97c7b2ff1d4b8882"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.1/han-linux-x64"
      sha256 "e5ba64343998c92f173f141cb95cb64f62f24e7cbcdd57b1cc021f2b89450a3a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
