class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.3.0/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "805a54f6432fccf81cecebeb6c1bca6c16ff3ceef642cc740efe0fcd09cb1c58"
  version "0.3.0"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end
