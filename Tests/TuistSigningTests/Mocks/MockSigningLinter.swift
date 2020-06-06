import TSCBasic
import TuistCore
@testable import TuistSigning

final class MockSigningLinter: SigningLinting {
    var lintStub: ((Certificate, ProvisioningProfile) -> [LintingIssue])?
    func lint(certificate: Certificate, provisioningProfile: ProvisioningProfile) -> [LintingIssue] {
        lintStub?(certificate, provisioningProfile) ?? []
    }
    
    var lintCertificateStub: ((Certificate) -> [LintingIssue])?
    func lint(certificate: Certificate) -> [LintingIssue] {
        lintCertificateStub?(certificate) ?? []
    }
}
