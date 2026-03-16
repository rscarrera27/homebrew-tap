class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.3.1/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "6086d95a08b26bed7a50a6ca143fbaf3fc102b48e013e719e19a327993d73694"
  version "0.3.1"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
    bin.install_symlink "classpath-surfer" => "cpsurf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end
