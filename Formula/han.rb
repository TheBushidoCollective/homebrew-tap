# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.55.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.3/han-darwin-arm64"
      sha256 "829bada4936d87db71fef5dcaf3987d6f67e8aecb296369952c2919d300f44b4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.3/han-darwin-x64"
      sha256 "396f8f0303db8641603cc67271c924015eff3bd01b86ea0e16f66c450c605e64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.3/han-linux-arm64"
      sha256 "8a39a2ce5c9ba69031057783c8b70244bdd6ce4681153740baa6cc8780e9ebf5"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.55.3/han-linux-x64"
      sha256 "f12832fd29a71819894f81d2ebf3aad2d63ba368533ca6f09559e554daab7c38"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
