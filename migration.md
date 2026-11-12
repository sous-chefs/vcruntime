# Migrating to vcruntime 3.0

The owner selected the full migration and a current-runtime-only default.
Root recipes and node attributes are removed. Add the cookbook as a dependency
and declare resources in a wrapper cookbook:

```ruby
vcruntime_install 'current runtime'

vcruntime_install '2008 application dependency' do
  family 'vc9'
end
```

Replace `vcruntime::default` with the first resource. Replace individual
`vcruntime::vc6`, `vc9`, `vc10`, `vc11`, `vc12` or `vc14` recipe entries with a
resource whose `family` matches that suffix. Replace the old `version` attribute
with the resource `version` property. Replace architecture-specific URL,
SHA-256 and package-name attributes with `packages` entries using `url`,
`sha256sum` and `name` respectively.

The complete previous catalog remains available for explicit compatibility
requests. Existing legacy family defaults are unchanged; the historical `vc6`
family denotes the 2005 redistributable, not Visual C++ 6.0. Microsoft no longer
supports these legacy redistributables. They may still be required by older
applications and are not substitutes for each other or for v14.

The default v14 package is now 14.52.37029.0, pinned to immutable Microsoft URLs
and verified checksums. A newer installed v14 is accepted without a downgrade.
Chef Infra Client 16 or later is required. Windows Server 2019 and 2022 remain
local VM targets; hosted CI runs on actual Windows Server 2022 and 2025 runners.

The feature PR keeps the existing metadata version. Its breaking conventional
commit lets Release Please generate 3.0.0 after it reaches main, replacing the
pending patch release.
