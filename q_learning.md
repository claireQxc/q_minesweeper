#### what is degit
- [degit](https://www.npmjs.com/package/degit)
- degit some-user/some-repo
- it will find the latest commit on https://github.com/some-user/some-repo and download the associated tar file to ~/.degit/some-user/some-repo/commithash.tar.gz if it doesn't already exist locally
- This is much quicker than using git clone, because you're not downloading the entire git history

#### what is ni
- [ni](https://github.com/antfu/ni)
- npm i -g @antfu/ni
- Before it runs, it will detect your yarn.lock / pnpm-lock.yaml / package-lock.json to know current package manager (or packageManager field in your packages.json), and runs the corresponding commands.

