# Node Express Boilerplate

## This is a basic boilerplate for backend development with node and express

### It comes setup with the following features

- Authentication (passport & JWT)
- Validation
- Password Encryption (bcryptjs)
- Authorization and Access level control
- Database configuration with Sequelize ORM
- CORS (Bonus)

### To get started,

- clone this repository
- `cd node-express-boilerplate`
- run `yarn install`
- configure your database by creating a .env file in your project root directory with contents similar to
  ```
  DB_HOST=localhost
  DB_NAME=test
  DB_USERNAME=root
  DB_PASSWORD=
  DB_DIALECT=mysql
  ```
  make sure to replace the values with yours
- be sure to have `nodemon` installed
- yarn run dev
- if you don't have `nodemon` installed, change your `dev` script in package.json to `node --exec babel-node src/index.js`

### To deploy to production,

- run `yarn run build` to generate the build folder
- upload the build server to your server

## Contributions are welcomed
