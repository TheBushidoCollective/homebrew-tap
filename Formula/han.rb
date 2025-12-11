# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.58.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.58.1/han-darwin-arm64"
      sha256 "8698ed1d63e01acf9d01787509db9569bf1040767d21fd98bfa19864fd28a791"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.58.1/han-darwin-x64"
      sha256 "95e80dddd31ec50f4b9a2dc08f4b419bfba551459b26213cffbb8a5528d0bd2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.58.1/han-linux-arm64"
      sha256 "f3575510bf8467648cefb30257482b66a0defb769c8fcfa11ee05e246cee0da3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.58.1/han-linux-x64"
      sha256 "d42e13e1d781022113e78ce0ed20bc339c8873990c9418bdd5cffeeb825d1be1"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
