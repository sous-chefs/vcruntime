# frozen_string_literal: true

# Original legacy URLs, checksums and package names are retained for explicit use.
module VCRuntime
  CATALOG = {
    'vc6' => {
      'x86' => {
        '6.0.2900.2180' => {
          'url' => 'https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE',
          'sha256sum' => '8648c5fc29c44b9112fe52f9a33f80e7fc42d10f3b5b42b2121542a13e44adfd',
          'name' => 'Microsoft Visual C++ 2005 Redistributable',
        },
      },
      'x64' => {
        '6.0.2900.2180' => {
          'url' => 'https://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE',
          'sha256sum' => '4487570bd86e2e1aac29db2a1d0a91eb63361fcaac570808eb327cd4e0e2240d',
          'name' => 'Microsoft Visual C++ 2005 Redistributable (x64)',
        },
      },
    },
    'vc12' => {
      'x86' => {
        '12.0.30501' => {
          'url' => 'https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x86.exe',
          'sha256sum' => 'a22895e55b26202eae166838edbe2ea6aad00d7ea600c11f8a31ede5cbce2048',
          'name' => 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.21005',
        },
        '12.0.40660' => {
          'url' => 'https://download.microsoft.com/download/0/5/6/056DCDA9-D667-4E27-8001-8A0C6971D6B1/vcredist_x86.exe',
          'sha256sum' => '89f4e593ea5541d1c53f983923124f9fd061a1c0c967339109e375c661573c17',
          'name' => 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40660',
        },
        '12.0.40664' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/10912113/5da66ddebb0ad32ebd4b922fd82e8e25/vcredist_x86.exe',
          'sha256sum' => '53b605d1100ab0a88b867447bbf9274b5938125024ba01f5105a9e178a3dcdbd',
          'name' => 'Microsoft Visual C++ 2013 Redistributable (x86) - 12.0.40664',
        },
      },
      'x64' => {
        '12.0.30501' => {
          'url' => 'https://download.microsoft.com/download/2/E/6/2E61CFA4-993B-4DD4-91DA-3737CD5CD6E3/vcredist_x64.exe',
          'sha256sum' => 'e554425243e3e8ca1cd5fe550db41e6fa58a007c74fad400274b128452f38fb8',
          'name' => 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.21005',
        },
        '12.0.40660' => {
          'url' => 'https://download.microsoft.com/download/0/5/6/056DCDA9-D667-4E27-8001-8A0C6971D6B1/vcredist_x64.exe',
          'sha256sum' => '20e2645b7cd5873b1fa3462b99a665ac8d6e14aae83ded9d875fea35ffdd7d7e',
          'name' => 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40660',
        },
        '12.0.40664' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/10912041/cee5d6bca2ddbcd039da727bf4acb48a/vcredist_x64.exe',
          'sha256sum' => 'a4bba7701e355ae29c403431f871a537897c363e215cafe706615e270984f17c',
          'name' => 'Microsoft Visual C++ 2013 Redistributable (x64) - 12.0.40664',
        },
      },
    },
    'vc9' => {
      'x86' => {
        '9.0.21022.8' => {
          'url' => 'http://download.microsoft.com/download/1/1/1/1116b75a-9ec3-481a-a3c8-1777b5381140/vcredist_x86.exe',
          'sha256sum' => 'c6a7e484f4d84883bc1205bccea3114c0521025712922298ede9b2a1cd632357',
          'name' => 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.21022',
        },
        '9.0.30729.5677' => {
          'url' => 'https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x86.exe',
          'sha256sum' => '8742bcbf24ef328a72d2a27b693cc7071e38d3bb4b9b44dec42aa3d2c8d61d92',
          'name' => 'Microsoft Visual C++ 2008 Redistributable - x86 9.0.30729.6161',
        },
      },
      'x64' => {
        '9.0.21022.8' => {
          'url' => 'http://download.microsoft.com/download/d/2/4/d242c3fb-da5a-4542-ad66-f9661d0a8d19/vcredist_x64.exe',
          'sha256sum' => 'baaaeddc17bcda8d20c0a82a9eb1247be06b509a820d65dda1342f4010bdb4a0',
          'name' => 'Microsoft Visual C++ 2008 Redistributable - x64 9.0.21022',
        },
        '9.0.30729.5677' => {
          'url' => 'https://download.microsoft.com/download/5/D/8/5D8C65CB-C849-4025-8E95-C3966CAFD8AE/vcredist_x64.exe',
          'sha256sum' => 'c5e273a4a16ab4d5471e91c7477719a2f45ddadb76c7f98a38fa5074a6838654',
          'name' => 'Microsoft Visual C++ 2008 Redistributable - x64 9.0.30729.6161',
        },
      },
    },
    'vc11' => {
      'x86' => {
        '11.0.50727.1' => {
          'url' => 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/vcredist_x86.exe',
          'sha256sum' => 'c493561785ab2a970d4560b5f5e3b38bc10a08c30c38399a5e230ee0a7bcc81f',
          'name' => 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.50727',
        },
        '11.0.51106.1' => {
          'url' => 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU1/vcredist_x86.exe',
          'sha256sum' => '1cf499658295622956a0dedbb70a414c1a6157e1b7ee606fd9f7afccccea60db',
          'name' => 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.51106',
        },
        '11.0.60610.1' => {
          'url' => 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU3/vcredist_x86.exe',
          'sha256sum' => 'db68929b556bf742ce2646687979176f09acdd5f1f1334a0d403c39228305316',
          'name' => 'Microsoft Visual C++ 2012 Redistributable (x86) - 11.0.60610',
        },
        '11.0.61030' => {
          'url' => 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x86.exe',
          'sha256sum' => 'b924ad8062eaf4e70437c8be50fa612162795ff0839479546ce907ffa8d6e386',
          'name' => 'Microsoft Visual C++ 2012 x86 Additional Runtime - 11.0.61030',
        },
      },
      'x64' => {
        '11.0.50727.1' => {
          'url' => 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/vcredist_x64.exe',
          'sha256sum' => 'aa065e8498ac2b8483a5398f847aa26feb72d99f24474c00e6b6d784bb6379c2',
          'name' => 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.50727',
        },
        '11.0.51106.1' => {
          'url' => 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU1/vcredist_x64.exe',
          'sha256sum' => 'aa78fef82d386f709cc36dbe5bc5a67f34887d8a37c61e67b06543d1d82c9e2a',
          'name' => 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.51106',
        },
        '11.0.60610.1' => {
          'url' => 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU3/vcredist_x64.exe',
          'sha256sum' => '9045134dc85230ee2d3d1d6be0ad3489019af643128d73ff67f95371ceb9b963',
          'name' => 'Microsoft Visual C++ 2012 Redistributable (x64) - 11.0.60610',
        },
        '11.0.61030' => {
          'url' => 'http://download.microsoft.com/download/1/6/B/16B06F60-3B20-4FF2-B699-5E9B7962F9AE/VSU_4/vcredist_x64.exe',
          'sha256sum' => '681be3e5ba9fd3da02c09d7e565adfa078640ed66a0d58583efad2c1e3cc4064',
          'name' => 'Microsoft Visual C++ 2012 x64 Additional Runtime - 11.0.61030',
        },
      },
    },
    'vc14' => {
      'x86' => {
        '14.0.23026' => {
          'url' => 'https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x86.exe',
          'sha256sum' => 'fdd1e1f0dcae2d0aa0720895eff33b927d13076e64464bb7c7e5843b7667cd14',
          'name' => 'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.23026',
        },
        '14.0.24123.0' => {
          'url' => 'https://download.microsoft.com/download/0/6/4/064F84EA-D1DB-4EAA-9A5C-CC2F0FF6A638/vc_redist.x86.exe',
          'sha256sum' => 'ea92c3f93bc063d6da084faa854c131e37f1f2cb585cd1e62a3df9e03eacadff',
          'name' => 'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24123',
        },
        '14.0.24212.0' => {
          'url' => 'https://download.microsoft.com/download/6/D/F/6DF3FF94-F7F9-4F0B-838C-A328D1A7D0EE/vc_redist.x86.exe',
          'sha256sum' => 'dafb8b5f4b46bfaf7faa1d0ad05211f5c9855f0005cd603f8b5037b6a708d6b6',
          'name' => 'Microsoft Visual C++ 2015 Redistributable (x86) - 14.0.24212',
        },
        '14.0.24215.1' => {
          'url' => 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x86.exe',
          'sha256sum' => '12a69af8623d70026690ba14139bf3793cc76c865759cad301b207c1793063ed',
          'name' => 'Microsoft Visual C++ 2015 x86 Additional Runtime - 14.0.24215',
        },
        '14.10.25017.0' => {
          'url' => 'https://download.microsoft.com/download/1/f/e/1febbdb2-aded-4e14-9063-39fb17e88444/vc_redist.x86.exe',
          'sha256sum' => '54133dc6e13d775199bbec9268ae5e54063f9c6cb7b630f7865704cc64f50774',
          'name' => 'Microsoft Visual C++ 2017 Redistributable (x86) - 14.10.25017',
        },
        '14.14.26429.4' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/12319034/ccd261eb0e095411af3b306273231b68/VC_redist.x86.exe',
          'sha256sum' => 'eb5f74215e4308d8f2b1d458e78f33050a779b9be19baaa2174de1be9be1b830',
          'name' => 'Microsoft Visual C++ 2017 Redistributable (x86) - 14.14.26429',
        },
        '14.29.30139.0' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/7e8edcf6-f2c1-41b1-a712-3f9cd8f58db4/4C6C420CF4CBF2C9C9ED476E96580AE92A97B2822C21329A2E49E8439AC5AD30/VC_redist.x86.exe',
          'sha256sum' => '4c6c420cf4cbf2c9c9ed476e96580ae92a97b2822c21329a2e49e8439ac5ad30',
          'name' => 'Microsoft Visual C++ 2019 X86 Minimum Runtime - 14.29.30139',
        },
        '14.31.31103.0' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/144a5711-f076-44fa-bf55-f7e0121eb30c/B7AE307237F869E09F7413691A2CD1944357B5CEE28049C0A0D3430B47BB3EDC/VC_redist.x86.exe',
          'sha256sum' => 'b7ae307237f869e09f7413691a2cd1944357b5cee28049c0a0d3430b47bb3edc',
          'name' => 'Microsoft Visual C++ 2022 X86 Minimum Runtime - 14.31.31103',
        },
        '14.52.37029.0' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/78d061c5-9ef3-42ab-98ed-3309d1095dc4/7B0117E6E20E9E349029C000A8A2715A52CF37C15B6BB697B2908E8BC7066CDF/VC_redist.x86.exe',
          'sha256sum' => '7b0117e6e20e9e349029c000a8a2715a52cf37c15b6bb697b2908e8bc7066cdf',
          'name' => 'Microsoft Visual C++ v14 Redistributable (x86) - 14.52.37029',
        },
      },
      'x64' => {
        '14.0.23026' => {
          'url' => 'https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x64.exe',
          'sha256sum' => '5eea714e1f22f1875c1cb7b1738b0c0b1f02aec5ecb95f0fdb1c5171c6cd93a3',
          'name' => 'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.23026',
        },
        '14.0.24123.0' => {
          'url' => 'https://download.microsoft.com/download/0/6/4/064F84EA-D1DB-4EAA-9A5C-CC2F0FF6A638/vc_redist.x64.exe',
          'sha256sum' => 'dd479820f34498c706bd61c4e7bdafc18a739e397762d7e16d7ad0b9a4cbd79f',
          'name' => 'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24123',
        },
        '14.0.24212.0' => {
          'url' => 'https://download.microsoft.com/download/6/D/F/6DF3FF94-F7F9-4F0B-838C-A328D1A7D0EE/vc_redist.x64.exe',
          'sha256sum' => 'd7257265dbc0635c96dd67ddf938a09abe0866cb2d4fa05f8b758c8644e724e4',
          'name' => 'Microsoft Visual C++ 2015 Redistributable (x64) - 14.0.24212',
        },
        '14.0.24215.1' => {
          'url' => 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe',
          'sha256sum' => 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965',
          'name' => 'Microsoft Visual C++ 2015 x64 Additional Runtime - 14.0.24215',
        },
        '14.10.25017.0' => {
          'url' => 'https://download.microsoft.com/download/3/b/f/3bf6e759-c555-4595-8973-86b7b4312927/vc_redist.x64.exe',
          'sha256sum' => '871983b6b4c3bce1b5b9ae2173c818137c8831c818393268fb2f0414c096e241',
          'name' => 'Microsoft Visual C++ 2017 Redistributable (x64) - 14.10.25017',
        },
        '14.14.26429.4' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/12328699/a80e967515b2a4faf37bf15387f1c5c3/VC_redist.x64.exe',
          'sha256sum' => '9abf3a1386584ea0e4b31198cc56e988e13e67ccdb1137ec6e18e883753d2ddb',
          'name' => 'Microsoft Visual C++ 2017 Redistributable (x64) - 14.14.26429',
        },
        '14.29.30139.0' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/b929b7fe-5c89-4553-9abe-6324631dcc3a/296F96CD102250636BCD23AB6E6CF70935337B1BBB3507FE8521D8D9CFAA932F/VC_redist.x64.exe',
          'sha256sum' => '296f96cd102250636bcd23ab6e6cf70935337b1bbb3507fe8521d8d9cfaa932f',
          'name' => 'Microsoft Visual C++ 2019 X64 Minimum Runtime - 14.29.30139',
        },
        '14.31.31103.0' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/d22ecb93-6eab-4ce1-89f3-97a816c55f04/37ED59A66699C0E5A7EBEEF7352D7C1C2ED5EDE7212950A1B0A8EE289AF4A95B/VC_redist.x64.exe',
          'sha256sum' => '37ed59a66699c0e5a7ebeef7352d7c1c2ed5ede7212950a1b0a8ee289af4a95b',
          'name' => 'Microsoft Visual C++ 2022 X64 Minimum Runtime - 14.31.31103',
        },
        '14.52.37029.0' => {
          'url' => 'https://download.visualstudio.microsoft.com/download/pr/78d061c5-9ef3-42ab-98ed-3309d1095dc4/9C02C9ED120F671B900E6B9471D890E3B2414117A7E53F4AE2E855466FA2B7C9/VC_redist.x64.exe',
          'sha256sum' => '9c02c9ed120f671b900e6b9471d890e3b2414117a7e53f4ae2e855466fa2b7c9',
          'name' => 'Microsoft Visual C++ v14 Redistributable (x64) - 14.52.37029',
        },
      },
    },
    'vc10' => {
      'x86' => {
        '10.0.30319' => {
          'url' => 'http://download.microsoft.com/download/5/B/C/5BC5DBB3-652D-4DCE-B14A-475AB85EEF6E/vcredist_x86.exe',
          'sha256sum' => '31d32fa39d52cac9a765a43660431f7a127eee784b54b2f5e2af3e2b763a1af8',
          'name' => 'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.30319',
        },
        '10.0.40219' => {
          'url' => 'http://download.microsoft.com/download/C/6/D/C6D0FD4E-9E53-4897-9B91-836EBA2AACD3/vcredist_x86.exe',
          'sha256sum' => '19c6d6e24901177d73528a28b0f13563ae5674b81f93cf466673ccc4c38ce828',
          'name' => 'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219',
        },
      },
      'x64' => {
        '10.0.30319' => {
          'url' => 'http://download.microsoft.com/download/3/2/2/3224B87F-CFA0-4E70-BDA3-3DE650EFEBA5/vcredist_x64.exe',
          'sha256sum' => '3ced60e566e9c74806db8739663b27d06012cc6b6ee5b28eaa2afce5514bcacf',
          'name' => 'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.30319',
        },
        '10.0.40219' => {
          'url' => 'http://download.microsoft.com/download/A/8/0/A80747C3-41BD-45DF-B505-E9710D2744E0/vcredist_x64.exe',
          'sha256sum' => '2fddbc3aaaab784c16bc673c3bae5f80929d5b372810dbc28649283566d33255',
          'name' => 'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219',
        },
      },
    },
  }.freeze
  DEFAULTS = { 'vc6' => '6.0.2900.2180', 'vc12' => '12.0.40664', 'vc9' => '9.0.30729.5677', 'vc11' => '11.0.61030', 'vc14' => '14.52.37029.0', 'vc10' => '10.0.40219' }.freeze
end
