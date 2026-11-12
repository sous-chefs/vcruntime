# vcruntime contributor notes

## Confirmed scope

Full recipe/attribute migration, with the current runtime only installed by
default. Preserve the existing legacy catalog as explicit opt-in compatibility
data. Land a feature PR to main before Release Please generates the major
release; never hide this breaking migration in the pending patch release.

## Research and design

Microsoft's latest-supported page links to aka.ms/vc14 installers. On 2026-11-12
both x86 and x64 resolved to version 14.52.37029.0. Both downloaded binaries were
checked for embedded FileVersion/ProductName and SHA-256, then their immutable
download.visualstudio.microsoft.com URLs were pinned. The current x64 bundle
includes ARM64 binaries. Supported systems include Server 2016/2019/2022/2025.

Primary sources:

- [Microsoft supported downloads](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist)
- [Microsoft redistributable lifecycle](https://learn.microsoft.com/en-us/lifecycle/faq/visual-c-faq)
- [Microsoft command-line options](https://learn.microsoft.com/en-us/cpp/windows/redistributing-visual-cpp-files)

Use a registry version guard for v14 rather than accepting installer error 1638.
The x86 runtime registry entry uses WOW6432Node on a 64-bit host. Preserve every
legacy catalog entry and checksum. Legacy entries are installation-only; current
bundle removal uses the registered bundle uninstaller rather than uninstalling
only its minimum or additional MSI child package.

## Verification

Run Policyfile resolution, action-level step_into ChefSpec, Cookstyle and InSpec
profile checks. Hosted Windows 2022/2025 exec suites verify current install,
second-converge idempotency, complete bundle removal and all legacy family
defaults. Local Vagrant retains Windows 2019 and 2022. A Mac ARM host cannot
execute the x64 Windows VM suites; use hosted Windows evidence before acceptance.
