# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.41.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.2/han-darwin-arm64"
      sha256 "189866b3824fdde640798e7fa493626d194ad0bdbdc744d2500129702e1111fa"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.2/han-darwin-x64"
      sha256 "19991127ebcf3252e3bde4bd4fc2dcc689f804ea9eff4c829859659ea441112a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.2/han-linux-arm64"
      sha256 "e922448d871fe3a61744484a9968a6d10d9c1a20dea8ea62458d042cc4858bda"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.2/han-linux-x64"
      sha256 "c186fd1eba26dabe75592ceb1cfc20ec3586f87ddcf46f4527754670efe5e54b"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
