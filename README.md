<p align="center">
  <a href="http://www.sumelms.com">
    <img src=".github/sumelms.svg" />
  </a>
</p>

<p align="center">
  <a href="https://travis-ci.com/github/sumelms/frontend">
    <img alt="Travis (.org)" src="https://travis-ci.com/sumelms/frontend.svg?branch=main">
  </a>
  <a href="https://codecov.io/gh/sumelms/frontend">
    <img src="https://codecov.io/gh/sumelms/frontend/branch/main/graph/badge.svg?token=OIC51X2RE2" />
  </a>
  <img alt="GitHub" src="https://img.shields.io/github/license/sumelms/frontend">
  <a href="https://discord.gg/Yh9q9cd">
    <img alt="Discord" src="https://img.shields.io/discord/726500188021063682">
  </a>
</p>

## About Sumé LMS

> Note: This repository contains the web application of the Sumé LMS. If you are looking for more information about the application, we strongly recommend you to [check the documentation](https://www.sumelms.com/docs).

Sumé LMS is a modern and open-source learning management system that uses modern technologies to deliver performance and scalability to your learning environment.

- Compatible with SCORM and xAPI (TinCan)
- Flexible and modular
- Open-source and Free
- Fast and modern
- Easy to install and run
- Designed for microservices
- REST API based application
- and more.

---

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup](#setup)
  - [Running on Podman](#running-on-podman)
- [Commands](#commands)
- [Tests E2E](#tests-e2e)
- [Mocks and Docs](#tests-e2e)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Team](#team)
- [Support](#support)
- [License](#license)

## Prerequisites

- [NodeJS >= v12.16.3](https://nodejs.org/en/download/releases/)

## Setup

Install the dependencies

```.sh
$ yarn install
```

Compile all translations

```.sh
$ yarn generate:translations
```

Running authentication server (Keycloak)

```sh
$ docker-compose up sume-auth
```

Running the app

```.sh
$ yarn start
```

### Running on Podman

Install `podman-compose` with

```sh
$ pip3 install git+https://github.com/containers/podman-compose.git
```

Then

```sh
$ podman-compose up sume-auth
```

## Commands

Build the app

```.sh
$ yarn build
```

## Mocks and Docs

- [More about...](./fake-api/README.md)

## Tests E2E

- [Cypress](https://www.cypress.io/)
- [Cypress Examples](https://example.cypress.io/)
- [Cypress Recipes](https://github.com/cypress-io/cypress-example-recipes#fundamentals)
- [Cypress TypeScript](https://docs.cypress.io/guides/tooling/typescript-support.html#Configure-tsconfig-json)

### Tests E2E commands

Verify that Cypress is installed correctly and is executable.

```.sh
$ npm run cy:verify

# or

$ yarn cy:verify
```

Runs Cypress tests to completion.

```.sh
$ npm run test:e2e:run

# or

$ yarn test:e2e:run
```

Opens the Cypress Test Runner.

```.sh
$ npm run test:e2e:open

# or

$ yarn test:e2e:open
```

Runs tests E2E to CI.

```.sh
$ npm run test:e2e:ci

# or

$ yarn test:e2e:ci
```

## Contributing

Thank you for considering contributing to the project. In order to ensure that the Sumé LMS community is welcome to all make sure to read our [Contributor Guideline](https://www.sumelms.com/docs/development/contribute).

## Code of Conduct

Would you like to contribute and participate in our communities? Please read our [Code of Conduct](https://www.sumelms.com/docs/conduct).

## Team

### Core

- Ariane Rocha (@arianerocha)
- Camila Moura (@mouracamila)
- Ricardo Lüders (@rluders)

### Contributors

...

## Support

### Discussion

You can reach us or get community support in our [Discord server](https://discord.gg/Yh9q9cd). This is the best way to
find help and get in touch with the community.

### Bugs or feature requests

If you found a bug or have a feature request, the best way to do
it is [opening an issue](https://github.com/sumelms/frontend/issues).

## License

This project is licensed by the Apache License 2.0. For more information check the LICENSE file.
