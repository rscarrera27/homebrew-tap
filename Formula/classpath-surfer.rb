class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.1.0/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "e88ea9eb61f80426dba84d3efc95f4da35c75d4db69d6a0f9957b9f5e4599bd2"
  version "0.1.0"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end
