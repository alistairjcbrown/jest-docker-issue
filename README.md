# jest-docker-issue

With jest version `21.2.1` in the `package.json` file, tests through docker are successful

```
> $ docker-compose run test

> jest-test@1.0.0 test /
> jest --version && jest

v21.2.1
 PASS  foo/bar/tests/index.spec.js
  My test suite
    ✓ should pass (2ms)

Test Suites: 1 passed, 1 total
Tests:       1 passed, 1 total
Snapshots:   0 total
Time:        0.751s
Ran all test suites.
```

With jest version `22.4.4` in the `package.json` file, tests through docker cannot be found

```
> $ docker-compose run test

> jest-test@1.0.0 test /
> jest --version && jest

v22.4.4
No tests found
In /
  9 files checked.
  testMatch: **/__tests__/**/*.js?(x),**/?(*.)(spec|test).js?(x) - 1 match
  testPathIgnorePatterns: /node_modules/ - 9 matches
Pattern:  - 0 matches
npm ERR! Test failed.  See above for more details.
```
