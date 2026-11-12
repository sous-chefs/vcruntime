# vcruntime_install

Install a Visual C++ runtime bundle using verified package metadata.

## Actions

- `:install` (default): install the selected family and architectures. For v14,
  an equal or newer installed runtime satisfies the request without downgrading.
- `:remove`: uninstall the current v14 bundles through their registered bundle
  uninstallers. This removes both minimum and additional runtime components.
  Removal does not download an installer. Older catalog entries retain their
  original installation-only contract; requesting their removal raises an error.

## Properties

| Property | Type | Default | Meaning |
| --- | --- | --- | --- |
| `family` | String | `vc14` | One of vc6, vc9, vc10, vc11, vc12, vc14. The historical vc6 label means the 2005 redistributable. |
| `version` | String | Family catalog default | Exact catalog key. Current vc14 is 14.52.37029.0. |
| `architectures` | Array | x64+x86 on 64-bit Windows; x86 on 32-bit | Explicit x86/x64 selection. The x64 bundle also includes ARM64 binaries. |
| `packages` | Hash | `{}` | Per-architecture overrides containing `name`, `url`, `sha256sum`. Keys may be symbols within each package entry. |

The resource name labels the operation. Package names come from the catalog or
explicit package overrides. Every download requires a SHA-256 checksum. Installer
success codes are 0 and 3010 (reboot required); 1638 is not success.

```ruby
vcruntime_install '2013 compatibility' do
  family 'vc12'
  architectures %w(x86)
end

vcruntime_install 'remove current runtime' do
  action :remove
end
```

Visual C++ runtimes are shared application dependencies. Declare removal only
when the selected bundle is no longer required by applications on that host.
Removing the pinned bundle does not remove an independently installed newer
bundle with a different registered package name.
