## simple standalone eslint format shell doesn't rely on project's eslint 

### why this project

sometimes you need eslint to do code format, but your project eslint version is old & and you also want a modern eslint & eslintcfg to format code.

有时候需要使用eslint来格式化代码，可是项目的eslint太旧好多代码不能自动格式化，这个项目可能会帮到你。

**note**: this project use prettier-eslint-cli

usage
```sh
alias jsfmt=your-path-to-this-project/eslint-cfg/jsfmt.sh
```