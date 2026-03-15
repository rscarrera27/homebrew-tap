class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.2.0/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "6bbbcb23f4df67b6dbfc94600378ab0a058a692f46c06706f9aa36393e7ba990"
  version "0.2.0"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end
