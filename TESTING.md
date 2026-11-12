# Testing vcruntime

Run `chef install Policyfile.rb`, `chef exec rspec` and `cookstyle` locally.
The resource tests step into install/removal actions and exercise default and
explicit legacy package choices, source checksums and newer-runtime guards.

Hosted CI uses the exec driver on Windows Server 2022 and 2025. Installation
suites converge twice with idempotency enforced. The removal suite installs then
uninstalls the current bundle and checks both runtime registry entries plus
the registered bundle/minimum/additional packages. Removal uses a single
converge because this suite deliberately exercises a lifecycle.

Local Vagrant suites retain Windows Server 2019 and 2022 and the explicit `all`
compatibility journey. Use `chef exec kitchen list` to inspect available suites.
