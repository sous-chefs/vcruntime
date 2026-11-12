# vcruntime cookbook

Install Microsoft Visual C++ redistributables with `vcruntime_install`.
Requires Chef Infra Client 16+ and Windows 10/11 or Windows Server 2016, 2019,
2022 or 2025 for the current runtime.

```ruby
vcruntime_install 'current runtime'
```

The default installs the current v14 runtime, version 14.52.37029.0. It installs
x64 and x86 bundles on a 64-bit host, or x86 on a 32-bit host. Microsoft's x64
bundle includes ARM64 binaries for ARM64 Windows. Older runtime families are
explicit compatibility choices; they are no longer installed by default.

See the [resource reference](documentation/vcruntime_install.md),
[migration guide](migration.md) and [testing guide](TESTING.md).

## Licence

Apache-2.0. Maintained by Sous Chefs; original code by Chef Software, Inc.
