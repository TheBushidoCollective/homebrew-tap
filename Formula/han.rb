# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.34.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.0/han-darwin-arm64"
      sha256 "f48289941b4af4af611ea12efb4a20fa841b331d1f192d19019381b131e59463"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.0/han-darwin-x64"
      sha256 "801273d0e904c8226d28bc779956097d0b0f4c3746edea40bb6844323a70804a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.0/han-linux-arm64"
      sha256 "350225be768ff79f26d259ba9f8a3831502dd0d69d10def3d8dbe5906ef1aec6"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.0/han-linux-x64"
      sha256 "75547aec5145d270a155416c071dfe959636b9f7656224693e540fe7a14ec602"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
