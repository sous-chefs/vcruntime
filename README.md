vcruntime Cookbook
====================

Installs Microsoft VC runtime 

Requirements
------------

The windows cookbook is required.

Attributes
----------

#### vcruntime::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['vc9']['x86']['tools']['pkg']['windows']['url']</tt></td>
    <td>String</td>
    <td>VC9 x86 source</td>
    <td><tt>http://download.microsoft.com/download/d/d/9/dd9a82d0-52ef-40db-8dab-795376989c03/vcredist_x86.exe</tt></td>
  </tr>
  <tr>
    <td><tt>['vc10']['x86']['tools']['pkg']['windows']['url']</tt></td>
    <td>String</td>
    <td>VC10 x86 source</td>
    <td><tt>http://download.microsoft.com/download/5/B/C/5BC5DBB3-652D-4DCE-B14A-475AB85EEF6E/vcredist_x86.exe</tt></td>
  </tr>
  <tr>
    <td><tt>['vc9']['x64']['tools']['pkg']['windows']['url']</tt></td>
    <td>String</td>
    <td>VC9 x64 source</td>
    <td><tt>http://download.microsoft.com/download/2/d/6/2d61c766-107b-409d-8fba-c39e61ca08e8/vcredist_x64.exe</tt></td>
  </tr>
  <tr>
    <td><tt>['vc10']['x64']['tools']['pkg']['windows']['url']</tt></td>
    <td>String</td>
    <td>VC10 x64 source</td>
    <td><tt>http://download.microsoft.com/download/3/2/2/3224B87F-CFA0-4E70-BDA3-3DE650EFEBA5/vcredist_x64.exe</tt></td>
  </tr>
</table>

Usage
-----
#### vcruntime::vc9 or vcruntime::vc10

Just include `vcruntime::vc9` or `vcruntime::vc10` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[vcruntime::vc9]"
  ]
}
```

License and Authors
-------------------
Yvo Van Doorn
