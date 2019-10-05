name: Lint MD

on: [push, pull_request]

jobs:
  lint_md:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    
    - name: Set Node
      uses: actions/setup-node@master
      with:
        node-version: 10.x

    - name: Install NPM
      run: npm install

    - name: Run lint MD
      run: |
        echo "It works!"
